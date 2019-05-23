import { fieldTypeNameReplacements, ignoreForeignDataList, noChildren } from "./consts"
import { Props, WrittenProps, Field } from "./types"
import { capitalize, lowerCaseFirstLetter } from "./utils"


export const collectForeignData = (fields: Field[]): string[] => {
  const datas: string[][] = fields.map((field) => (field.fieldType.foreignData !== undefined) ? field.fieldType.foreignData : [])
  const data = ([] as string[]).concat(...datas)
  return data.filter((d, i) => data.indexOf(d) == i).sort()
}

const writeField = (field: Field): string => {
  const typeName = fieldTypeNameReplacements[field.fieldType.name] || field.fieldType.name
  const name = (capitalize(field.name) === field.name) ?  `"${field.name}"` : field.name
  return `${writeComments(field, true)}${name} :: ${typeName}`
}

const typeVariables = (props: Props): string => 
  (props.typeParameters) ? props.typeParameters.join(" ") + " " : ""

const componentName = (name: string): string => name.replace(/Component/,"")
const functionName = (name: string): string => lowerCaseFirstLetter(componentName(name))

const writeComments = (thing: Field | Props, pad: boolean): string => {
  const padding = pad ? "  " : "" 
  return (thing.comments)
    ? `\n${padding}` + thing.comments.split("\n").filter(str => str.trim()).map(str => `-- | ${str}`).join(`\n${padding}`) + `\n${padding}` 
    : ""
}
 
const writeOptionalType = (props: Props) => (fields: Field[]): string => 
  `${writeComments(props, false)}type ${props.name}_optional ${typeVariables(props)}= 
  ( ${fields.map(writeField).join(",\n  ")}
  )`

const writeRequiredType = (props: Props) => (fields: Field[]): string => 
  `${writeComments(props, false)}type ${props.name}_required ${typeVariables(props)} optional = 
  ( ${fields.map(writeField).join(",\n  ")}
  | optional
  )`
 
const writeSingleType = (typeName: string) => (props: Props) => (fields: Field[]): string => 
  `${writeComments(props, false)}type ${typeName} ${typeVariables(props)}= 
  ( ${fields.map(writeField).join(",\n  ")}
  )`


const writeRequiredFn = (name: string ) => (functionBody: string) => (props : Props): string => 
  `${functionName(name)}
  :: forall attrs attrs_ ${typeVariables(props)}
  . Union attrs attrs_ (${props.name}_optional ${typeVariables(props)})
  => Record ((${props.name}_required ${typeVariables(props)}) attrs)
  -> JSX
${functionBody}`

const writeOptionalFn = (recordName: string) => (name: string) => (functionBody: string) => (props: Props): string =>
  `${functionName(name)}
  :: forall attrs attrs_ ${typeVariables(props)}
  . Union attrs attrs_ (${recordName} ${typeVariables(props)})
  => Record attrs
  -> JSX
${functionBody}
 ` 

const writeOptionalChildren = (name: string): string =>
  `${functionName(name)}_ :: Array JSX -> JSX
${functionName(name)}_ children = ${functionName(name)} { children }`

const writeComponentProps = (props: Props): WrittenProps => {
  const optionalFields = props.fields.filter((field) => field.isOptional || field.fieldType.isOptional)
  const requiredFields = props.fields.filter((field) => !field.isOptional)

  const functionBody = (name: string) =>  `${functionName(name)} props = unsafeCreateNativeElement "${componentName(name)}" props`

  optionalFields.push({ name : "key", fieldType : { name : "String" }, isOptional : true, comments: undefined })
  if(noChildren.indexOf(functionName(props.name)) < 0) optionalFields.push({ name : "children", fieldType : { name : "Array JSX"}, isOptional : true, comments: undefined })

  const propsStrs: string[] = []
  const fns: string[] = []
  if(requiredFields.length){  
    propsStrs.push(writeOptionalType(props)(optionalFields))
    propsStrs.push(writeRequiredType(props)(requiredFields))
    props.classNames.forEach(name => fns.push(writeRequiredFn(name)(functionBody(name))(props)))
  } else {
    propsStrs.push(writeSingleType(props.name)(props)(optionalFields))
    props.classNames.forEach(name => {
      fns.push(writeOptionalFn(props.name)(name)(functionBody(name))(props))
      if(noChildren.indexOf(functionName(name)) < 0) fns.push(writeOptionalChildren(name)) 
    })
  }

  return { fns, props: propsStrs, foreignData: collectForeignData(props.fields) }
}

export const writeOtherProps = (props: Props): WrittenProps => {

  
  if(props.fields.length === 0){
    // this is either a type alias of NativeSyntheticEvent<T> (of sorts) or a class that we can't create
    if(props.parents[0] && props.parents[0].types[0] && props.parents[0].name === "NativeSyntheticEvent"){
      const prop = `type ${props.name} = NativeSyntheticEvent ${props.parents[0].types[0]}` 
      return { fns: [], props: [prop], foreignData: [] }
    } else {

      const prop = `foreign import data ${props.name} :: Type` 
      return { fns: [], props: [prop], foreignData: [] }
    }

  }

  const optionalFields = props.fields.filter((field) => field.isOptional || field.fieldType.isOptional)
  const requiredFields = props.fields.filter((field) => !field.isOptional)

  const formatField = (str: string): string => {
    const tokens = str.split("::")
    return tokens[0] + " :: (Undefinable " + tokens.slice(1).join("::") + ")"
  }

  const record = props.name === "NativeTouchEvent"
    ? `newtype NativeTouchEvent = NativeTouchEvent {
    ${props.fields.map(field => field.isOptional ? formatField(writeField(field)) : writeField(field)).join("\n  , ")}
}`
    : `type ${props.name} ${typeVariables(props)}= {
    ${props.fields.map(field => field.isOptional ? formatField(writeField(field)) : writeField(field)).join("\n  , ")}
}`
    
  return {fns: [], props: [record], foreignData: collectForeignData(props.fields)}
}

export const writeProps = (props: Props) : WrittenProps =>
  props.isComponentProps ? writeComponentProps(props) : writeOtherProps(props)

const filterForeignData = (props: Props[], foreignData: string[]): string[] => 
  foreignData.filter(d => ignoreForeignDataList.indexOf(d) < 0 && props.map(p => p.name).indexOf(d) < 0)

export const writeForeignData = (props: Props[]) => {
  const foreignData = collectForeignData(([] as Field[]).concat(...props.map((prop) => prop.fields)))
  return filterForeignData(props, foreignData).map((d) => `foreign import data ${d} :: Type`)
}

export const top = 
`-- | ----------------------------------------
-- | THIS FILE IS GENERATED -- DO NOT EDIT IT
-- | ----------------------------------------

module React.Basic.Native.Generated where

import Prelude

import Data.JSDate (JSDate)
import Data.Undefinable (Undefinable)
import Effect (Effect)
import Effect.Uncurried (EffectFn1, EffectFn2, EffectFn3, EffectFn4)
import Foreign (Foreign)
import Foreign.Object (Object)
import Prim.Row (class Union)
import React.Basic (JSX)
import React.Basic.DOM.Internal (CSS)

import React.Basic.Native.Events (NativeSyntheticEvent)
import React.Basic.Native.Internal (unsafeCreateNativeElement)



`
