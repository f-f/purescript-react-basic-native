import * as ts from "typescript"

import { 
  createInterfaceMap,
  getBaseInterfaces,
  getInterfaces,
  handleInterface,
  getTypeAliases,
  createTypeAliasMap
} from "./parser"

import { propsCompare, Field, WrittenProps } from "./types" 
import { collectForeignData, top, writeForeignData, writeProps, writeForeignDataTypes } from "./writer"

top

const printWrittenProps = (writtenProps: WrittenProps[]): void =>
  writtenProps.forEach((p) => {
    console.log(p.props.join("\n\n"))
    console.log("\n")
    console.log(p.fns.join("\n\n"))
    console.log("\n")
})

const options = ts.getDefaultCompilerOptions()
const program = ts.createProgram(["./node_modules/@types/react-native/index.d.ts"], options)
const sources =
  program
    .getSourceFiles()
    .filter((src) => src.isDeclarationFile)
    .filter((src) => src.fileName.indexOf("@types/react-native/index.d.ts") >= 0)

const interfaces: ts.InterfaceDeclaration[] = getInterfaces(sources[0])
const interfaceMap = createInterfaceMap(interfaces)
const typeAliasMap = createTypeAliasMap(getTypeAliases(sources[0]))
const baseInterfaces = getBaseInterfaces(interfaceMap, sources[0])
const props = baseInterfaces.map(handleInterface(typeAliasMap)(interfaceMap)).sort(propsCompare)
export const writtenForeignData = writeForeignData(props).join("\n")
export const writtenProps = props.map(writeProps)
const foreignData: string[] = collectForeignData(([] as Field[]).concat(...props.map((prop) => prop.fields)))
export const additionalProps = 
  foreignData
    .filter(d => interfaceMap[d] !== undefined)
    .map(d => handleInterface(typeAliasMap)(interfaceMap)(interfaceMap[d]))
    .sort(propsCompare)
//.map(writeForeignDataTypes)

export const eventRelated = additionalProps.filter(props => props.name.indexOf("Event") >= 0).map(writeForeignDataTypes)
export const createForeignData = additionalProps.filter(props => props.name.indexOf("Event") < 0).map(writeForeignDataTypes)  

printWrittenProps(createForeignData)
