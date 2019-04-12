import * as ts from "typescript"

export type InterfaceMap = { [key:string]:ts.InterfaceDeclaration; }

export interface FieldType {
  name: string
  foreignData?: string[]
}

export interface Field {
  name: string
  fieldType: FieldType
  isOptional: boolean
}

export interface Props {
  name: string
  fields: Field[]
  classNames: string[]
}

export interface WrittenProps {
  fns: string[]
  props: string[]
  foreignData: string[]
}

export interface BaseInterface {
  iface: ts.InterfaceDeclaration
  classNames: string[]
}

export interface NamePair {
  componentName: string
  functionName: string
}

export const strCompare = (str1: string, str2: string) => {
  if(str1 == str2) return 0
  if(str1 > str2) return 1
  return -1
}

export const fieldCompare = (field1: Field, field2: Field) =>
  strCompare(field1.name, field2.name)

export const propsCompare = (props1: Props, props2: Props) =>
  strCompare(props1.name, props2.name)
