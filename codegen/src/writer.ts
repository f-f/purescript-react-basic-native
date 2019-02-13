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

export const writeProps = (ignoreChildren: boolean) => (props: Props) : WrittenProps => {

  const componentName = props.name.replace(/Props$/,"")
  const functionName = lowerCaseFirstLetter(componentName)
  const optionalFields = props.fields.filter((field) => field.isOptional || field.fieldType.isOptional)
  const requiredFields = props.fields.filter((field) => !field.isOptional)
  const typeVariables = (props.typeParameters) ? props.typeParameters.join(" ") + " " : ""

  const commaOrSpace = optionalFields.length ? "," : " "
  const children = ((noChildren.indexOf(functionName) < 0) && !ignoreChildren)
    ? "\n  " + commaOrSpace + " children :: Array JSX"
    : ""

  const writeOptionalType = (fields: Field[]): string =>
  `type ${props.name}_optional ${typeVariables}= 
  ( ${fields.map(writeField).join("\n  , ") + children}
  )`

  const writeRequiredType = (fields: Field[]): string =>
  `type ${props.name}_required optional ${typeVariables}= 
  ( ${fields.map(writeField).join("\n  , ")}
  | optional
  )`
  const writeSingleType = (fields: Field[]): string =>
  `type ${props.name} ${typeVariables}= 
  ( ${fields.map(writeField).join("\n  , ") + children}
  )`

  const writeRequiredFn = () => 
  `${functionName}
  :: ∀ attrs attrs_
  . Union attrs attrs_ ${props.name}_optional
  => Record (${props.name}_required attrs)
  -> JSX
${functionName} props = unsafeCreateNativeElement "${componentName}" props`

  const writeOptionalFn = () => 
  `${functionName}
  :: ∀ attrs attrs_
  . Union attrs attrs_ ${props.name}
  => Record attrs
  -> JSX
${functionName} props = unsafeCreateNativeElement "${componentName}" props`

  const writeOptionalChildren = () =>  
    `${functionName}_ :: Array JSX -> JSX
${functionName}_ children = ${functionName} { children }`


  const propsStrs: string[] = []
  const fns: string[] = []
  if(requiredFields.length){  
    propsStrs.push(writeOptionalType(optionalFields))
    propsStrs.push(writeRequiredType(requiredFields))
    fns.push(writeRequiredFn())
  } else {
    propsStrs.push(writeSingleType(props.fields))
    fns.push(writeOptionalFn())
    if(noChildren.indexOf(functionName) < 0) fns.push(writeOptionalChildren()) 
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
import Effect (Effect)
import Effect.Uncurried (EffectFn1, EffectFn2, EffectFn3, EffectFn4)
import Prim.Row (class Union)
import React.Basic (JSX)
import React.Basic.DOM.Internal (CSS)
import React.Basic.Events (EventHandler)
import React.Basic.Native.Internal (unsafeCreateNativeElement)

`
