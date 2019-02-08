import * as ts from "typescript"

import { 
  createInterfaceMap,
  getBaseInterfaces,
  getInterfaces,
  handleInterface
} from "./parser"

import { propsCompare } from "./types" 
import { top, writeForeignData, writeProps } from "./writer"


const options = ts.getDefaultCompilerOptions()
const program = ts.createProgram(["./node_modules/@types/react-native/index.d.ts"], options)
const sources =
  program
    .getSourceFiles()
    .filter((src) => src.isDeclarationFile)
    .filter((src) => src.fileName.indexOf("@types/react-native/index.d.ts") >= 0)

const interfaces: ts.InterfaceDeclaration[] = getInterfaces(sources[0])
const interfaceMap = createInterfaceMap(interfaces)
const baseInterfaces = getBaseInterfaces(interfaceMap, sources[0])
const props = baseInterfaces.map(handleInterface(interfaceMap)).sort(propsCompare)
const writtenForeignData = writeForeignData(props).join("\n")
const writtenProps = props.map(writeProps)
console.log(top)
console.log(writtenForeignData, "\n\n")
writtenProps.forEach((p) => {
    console.log(p.props.join("\n\n"))
    console.log("\n")
    console.log(p.fns.join("\n\n"))
    console.log("\n")
})


