import * as ts from "typescript"

type InterfaceMap = { [key:string]:ts.InterfaceDeclaration; }

const filterTypes = (kind: ts.SyntaxKind) => <T>(top: ts.Node): Array<T> => {
  const types: Array<T> = []
  const find = (node: ts.Node) => {
    if(node.kind === kind){ types.push(node as unknown as T) }
  }
  ts.forEachChild(top, find)
  return types
}

const getInterfaces = (node: ts.Node): ts.InterfaceDeclaration[] =>
  filterTypes(ts.SyntaxKind.InterfaceDeclaration)(node)

export const getPropertySignatures = (i: ts.InterfaceDeclaration): ts.PropertySignature[] => 
  i.members.filter((member) => ts.isPropertySignature(member)) as unknown as ts.PropertySignature[]

export const createInterfaceMap = (is: ts.InterfaceDeclaration[]): InterfaceMap => 
  is.reduce((map: InterfaceMap, i) => map[i.name.escapedText.toString()] = i, {})

export const printKinds = (kinds: ts.SyntaxKind[]) => {
  const map: {[key:string]:string;} = {}
  kinds.forEach((kind) => {
    map[kind] = ts.SyntaxKind[kind]
  })
  console.log(map)
}

const options = ts.getDefaultCompilerOptions()
const program = ts.createProgram(["./node_modules/@types/react-native/index.d.ts"], options)

const sources =
  program
    .getSourceFiles()
    .filter((src) => src.isDeclarationFile)
    .filter((src) => src.fileName.indexOf("@types/react-native/index.d.ts") >= 0)

export const interfaces: ts.InterfaceDeclaration[] = getInterfaces(sources[0])
export const properties: ts.PropertySignature[] = ([] as ts.PropertySignature[]).concat(... interfaces.map(getPropertySignatures))
export const types: ts.SyntaxKind[] = properties.filter((prop) => prop.type).map((prop) => prop.kind)
console.log("types", types.length)
printKinds(types)




