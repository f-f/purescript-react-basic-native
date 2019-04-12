import { fieldTypeNameReplacements, ignoreForeignDataList, noChildren } from "./consts"
import { Props, WrittenProps, Field, NamePair } from "./types"
import { capitalize, lowerCaseFirstLetter } from "./utils"


const collectForeignData = (fields: Field[]): string[] => {
  const datas: string[][] = fields.map((field) => (field.fieldType.foreignData !== undefined) ? field.fieldType.foreignData : [])
  const data = ([] as string[]).concat(...datas)
  return data.filter((d, i) => data.indexOf(d) == i).sort()
}

const writeField = (field: Field): string => {
  const typeName = fieldTypeNameReplacements[field.fieldType.name] || field.fieldType.name
  const name = (capitalize(field.name) === field.name) ?  `"${field.name}"` : field.name
  return `${name} :: ${typeName}`
}

const makeNamePair = (className: string): NamePair => {
  const componentName = className.replace(/Component$/,"")

  return {
    componentName,
    functionName: lowerCaseFirstLetter(componentName)
  }
}

export const writeProps = (props: Props): WrittenProps => {
  const names = props.classNames.map(makeNamePair)

  const optionalFields = props.fields.filter((field) => field.isOptional)
  const requiredFields = props.fields.filter((field) => !field.isOptional)

  const hasChildren = noChildren.indexOf(props.name) < 0
  const children = hasChildren
    ? "\n  , children :: Array JSX"
    : ""

  const key = "key :: String"

  const writeOptionalType = (fields: Field[]): string =>
  `type ${props.name}_optional = 
  ( ${[key].concat(fields.map(writeField)).join("\n  , ") + children}
  )`

  const writeRequiredType = (fields: Field[]): string =>
  `type ${props.name}_required optional = 
  ( ${fields.map(writeField).join("\n  , ")}
  | optional
  )`
  const writeSingleType = (fields: Field[]): string =>
  `type ${props.name} = 
  ( ${[key].concat(fields.map(writeField)).join("\n  , ") + children}
  )`

  const writeRequiredFn = (n: NamePair) =>
  `${n.functionName}
  :: ∀ attrs attrs_
  . Union attrs attrs_ ${props.name}_optional
  => Record (${props.name}_required attrs)
  -> JSX
${n.functionName} props = unsafeCreateNativeElement "${n.componentName}" props`

  const writeOptionalFn = (n: NamePair) =>
  `${n.functionName}
  :: ∀ attrs attrs_
  . Union attrs attrs_ ${props.name}
  => Record attrs
  -> JSX
${n.functionName} props = unsafeCreateNativeElement "${n.componentName}" props`

  const writeOptionalChildren = (n: NamePair) =>
    `${n.functionName}_ :: Array JSX -> JSX
${n.functionName}_ children = ${n.functionName} { children }`


  const propsStrs: string[] = []
  const fns: string[] = []
  if(requiredFields.length){
    propsStrs.push(writeOptionalType(optionalFields))
    propsStrs.push(writeRequiredType(requiredFields))
    names.forEach(n => fns.push(writeRequiredFn(n)))
  } else {
    propsStrs.push(writeSingleType(props.fields))
    names.forEach(n => {
      fns.push(writeOptionalFn(n))
      if (hasChildren) fns.push(writeOptionalChildren(n))
    })
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
