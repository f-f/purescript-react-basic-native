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
  return `${name} :: ${typeName}`
}

const typeVariables = (props: Props): string => 
  (props.typeParameters) ? props.typeParameters.join(" ") + " " : ""

const componentName = (props: Props): string => props.name.replace(/Props$/,"")
const functionName = (props: Props): string => lowerCaseFirstLetter(componentName(props))
 
const writeOptionalType = (props: Props) => (fields: Field[]): string => 
  `type ${props.name}_optional ${typeVariables(props)}= 
  ( ${fields.map(writeField).join("\n  , ")}
  )`

const writeRequiredType = (props: Props) => (fields: Field[]): string => 
  `type ${props.name}_required ${typeVariables(props)} optional = 
  ( ${fields.map(writeField).join("\n  , ")}
  | optional
  )`
 
const writeSingleType = (typeName: string) => (props: Props) => (fields: Field[]): string => 
  `type ${typeName} ${typeVariables(props)}= 
  ( ${fields.map(writeField).join("\n  , ")}
  )`


const writeRequiredFn = (returnType: string ) => (functionBody: string) => (props : Props): string => 
  `${functionName(props)}
  :: forall attrs attrs_ ${typeVariables(props)}
  . Union attrs attrs_ (${props.name}_optional ${typeVariables(props)})
  => Record ((${props.name}_required ${typeVariables(props)}) attrs)
  -> ${returnType}
${functionBody}`

const writeOptionalFn = (recordName: string) => (returnType: string) => (functionBody: string) => (props: Props): string =>
  `${functionName(props)}
  :: forall attrs attrs_ ${typeVariables(props)}
  . Union attrs attrs_ (${recordName} ${typeVariables(props)})
  => Record attrs
  -> ${returnType} 
${functionBody}
 ` 

const writeOptionalChildren = (props: Props): string =>
  `${functionName(props)}_ :: Array JSX -> JSX
${functionName(props)}_ children = ${functionName(props)} { children }`

const writeComponentProps = (props: Props): WrittenProps => {
  const optionalFields = props.fields.filter((field) => field.isOptional || field.fieldType.isOptional)
  const requiredFields = props.fields.filter((field) => !field.isOptional)

  const functionBody = `${functionName(props)} props = unsafeCreateNativeElement "${componentName(props)}" props`

  optionalFields.push({ name : "key", fieldType : { name : "String" }, isOptional : true })
  if(noChildren.indexOf(functionName(props)) < 0) optionalFields.push({ name : "children", fieldType : { name : "Array JSX"}, isOptional : true })

  const propsStrs: string[] = []
  const fns: string[] = []
  if(requiredFields.length){  
    propsStrs.push(writeOptionalType(props)(optionalFields))
    propsStrs.push(writeRequiredType(props)(requiredFields))
    fns.push(writeRequiredFn("JSX")(functionBody)(props))
  } else {
    propsStrs.push(writeSingleType(props.name)(props)(optionalFields))
    fns.push(writeOptionalFn(props.name)("JSX")(functionBody)(props))
    if(noChildren.indexOf(functionName(props)) < 0) fns.push(writeOptionalChildren(props)) 
  }

  return { fns, props: propsStrs, foreignData: collectForeignData(props.fields) }
}

export const writeOtherProps = (props: Props): WrittenProps => {

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


export const writeForeignDataTypes = (props: Props): WrittenProps => {

  const optionalFields = props.fields.filter((field) => field.isOptional || field.fieldType.isOptional)

  const requiredFields = props.fields.filter((field) => !field.isOptional)

  const functionBody = `${functionName(props)} = unsafeCoerce`
  
  const propsStrs: string[] = []
  const fns: string[] = []

  if(requiredFields.length){  
    propsStrs.push(writeOptionalType(props)(optionalFields))
    propsStrs.push(writeRequiredType(props)(requiredFields))
    fns.push(writeRequiredFn(componentName(props))(functionBody)(props))
  } else {
    propsStrs.push(writeSingleType(props.name + "Row")(props)(optionalFields))
    fns.push(writeOptionalFn(props.name + "Row")(componentName(props))(functionBody)(props))
  }

  return { fns, props: propsStrs, foreignData: collectForeignData(props.fields) }
}

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

import React.Basic.Native.Internal (unsafeCreateNativeElement)

type NativeSynteticEvent e = {
  nativeEvent :: e 
, currentTarget :: Number 
, target :: Number 
, bubbles :: Boolean
, cancelable :: Boolean
, defaultPrevented :: Boolean
, eventPhase :: Number
, isTrusted :: Boolean
, preventDefault :: Effect Unit
, isDefaultPrevented :: Effect Boolean
, stopPropagation :: Effect Unit
, isPropagationStopped :: Effect Boolean
, persist :: Effect Unit
, timeStamp :: Number
, type :: String
}

`
