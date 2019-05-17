import * as ts from "typescript"

import { 
  createInterfaceMap,
  getBaseInterfaces,
  getInterfaces,
  handleInterface,
  getTypeAliases,
  createTypeAliasMap
} from "./parser"

import { propsCompare, Field } from "./types" 
import { collectForeignData, top, writeForeignData, writeProps } from "./writer"


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
export const writtenProps = props.map(writeProps(false))
const foreignData: string[] = collectForeignData(([] as Field[]).concat(...props.map((prop) => prop.fields)))
const foo = foreignData.filter(d => interfaceMap[d] === undefined)
//console.log("foreignData", foreignData.length)
//console.log("foo", foo.length)
//console.log("foo", foo)
//top

console.log(top)
console.log(writtenForeignData, "\n\n")
writtenProps.forEach((p) => {
    console.log(p.props.join("\n\n"))
    console.log("\n")
    console.log(p.fns.join("\n\n"))
    console.log("\n")
})


//const e = interfaceMap["FlatListProps"]
//console.log(writeProps(true)(handleInterface(interfaceMap)(e)).props[0])


