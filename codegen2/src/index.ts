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

export const printKind = (kind: ts.SyntaxKind) => 
  console.log(ts.SyntaxKind[kind])

export const printKinds = (kinds: ts.SyntaxKind[]) => {
  const map: {[key:string]:string;} = {}
  kinds.forEach((kind) => {
    map[kind] = ts.SyntaxKind[kind]
  })
  console.log(map)
}

export interface FieldType {
  name?: string
  foreignData?: string[]
}

/*
{
  '120': 'AnyKeyword',
  '123': 'BooleanKeyword',
  '135': 'NumberKeyword',
  '136': 'ObjectKeyword',
  '138': 'StringKeyword',
  '164': 'TypeReference',
  '165': 'FunctionType',
  '167': 'TypeQuery',
  '168': 'TypeLiteral',
  '169': 'ArrayType',
  '173': 'UnionType',
  '182': 'LiteralType'
}
*/

const capitalize = (str: string): string => 
  str.charAt(0).toUpperCase() + str.slice(1)

const handleLiteralType = (interfaceName: string) => (fieldName: string) => (literal: ts.LiteralTypeNode): FieldType => {
  if(ts.isStringLiteral(literal.literal)){
    const name = capitalize((literal.literal as unknown as ts.StringLiteral).text)
    return { name, foreignData:  [ name ] }  
  }
  throw ("Got a type that I don't know in handleLiteralType: " + ts.SyntaxKind[literal.literal.kind])
}

const getName = (item: ts.EntityName): string => {
  if(ts.isQualifiedName(item)){
    const qname = item as unknown as ts.QualifiedName
    return qname.right.escapedText + "." + getName(qname.left)
  }else{
    return (item as ts.Identifier).escapedText.toString()
  }
}

export const getBindingName = (name: ts.BindingName): string => {
  if(ts.isIdentifier(name)){
    return name.escapedText.toString()
  }
  throw ("Got a BindingName I don't know how to deal with" + name.toString())
}

const handleTypeReference = (interfaceName: string) => (fieldName: string) => (type: ts.TypeReferenceNode): FieldType => {
  const name = getName(type.typeName)
  return { name, foreignData: [ name ] } 
}

const handleFunctionType = (interfaceName: string) => (fieldName: string) => (fn: ts.FunctionTypeNode): FieldType => {
  const isUnit = ts.SyntaxKind.VoidKeyword == fn.type.kind
  const isEffectUnit = isUnit && (fn.parameters.length == 0)
  
  if(isEffectUnit) return { name : "(Effect Unit)" }

  const paramNames = fn.parameters.map((param) => getBindingName(param.name))
  console.log(paramNames)
  
  if(isEffectUnit && paramNames.length == 1 && (paramNames[0] == "event" || paramNames[0] == "e")) return { name: "EventHandler" }
  
  const parameters: FieldType[] = 
    (fn.parameters.map((param) => param.type)
      .filter((type) => type !== undefined) as ts.TypeNode[])
      .map((type) => handleTypes(interfaceName)(fieldName)(type))

  const finalType = handleTypes(interfaceName)(fieldName)(fn.type)
  const finalTypeName = finalType.name ? finalType.name : ""
  const finalForeignData = finalType.foreignData ? finalType.foreignData : []
  
  if(parameters.length == 0){
    const fieldType = { name : "(Effect " + finalTypeName + ")", foreignData: finalForeignData }
    console.log(fieldType)
    return fieldType 
  }

  if(parameters.length == 1){
    const firstName = parameters[0].name ? parameters[0].name : ""
    const firstForeignData = parameters[0].foreignData ? parameters[0].foreignData : []
    const name = "(" + firstName + " -> Effect " + finalTypeName + ")"
    const foreignData = firstForeignData.concat(finalForeignData) 
    const fieldType = { name, foreignData }
    console.log(fieldType)
    return fieldType
  }

  if(parameters.length > 10) throw ("Got a function with more than 10 parameters, and I don't know what to do with that")
  else {
    const types = parameters.map((fieldType) => fieldType.name ? fieldType.name : "").join(" ")
    const foreignDatas: string[][] = parameters.map((fieldType) => fieldType.foreignData ? fieldType.foreignData : [])
    const foreignData: string[] = ([] as string[]).concat(...foreignDatas).concat(finalForeignData)
    const name = "(EffectFn" + (parameters.length) + " " + types + " " + finalTypeName + ")"
    const fieldType = { name, foreignData }
    console.log(fieldType)
    return fieldType 
  }
}


export const handleTypes = (interfaceName: string) => (fieldName: string) =>  (type: ts.TypeNode): FieldType => {
  switch (type.kind) {
    case ts.SyntaxKind.AnyKeyword: return { name : "Any" }
    case ts.SyntaxKind.VoidKeyword: return { name : "Unit" }
    case ts.SyntaxKind.BooleanKeyword: return { name : "Boolean" }
    case ts.SyntaxKind.NumberKeyword: return { name : "Number" }
    case ts.SyntaxKind.StringKeyword: return { name : "String" }
    case ts.SyntaxKind.LiteralType: return handleLiteralType(interfaceName)(fieldName)(type as unknown as ts.LiteralTypeNode)
    case ts.SyntaxKind.ObjectKeyword: return { name : "ObjectType" }
    case ts.SyntaxKind.TypeReference: return handleTypeReference(interfaceName)(fieldName)(type as unknown as ts.TypeReferenceNode) 

    case ts.SyntaxKind.FunctionType: return handleFunctionType(interfaceName)(fieldName)(type as unknown as ts.FunctionTypeNode)

    case ts.SyntaxKind.TypeQuery: return { name: "TypeQuery" } 
    case ts.SyntaxKind.TypeLiteral: return { name: "TypeLiteral" } 
    case ts.SyntaxKind.ArrayType: return { name: "ArrayType" } 
    case ts.SyntaxKind.UnionType: return { name: "UnionType" } 
    default: throw ("Got a type that I don't know: " + ts.SyntaxKind[type.kind])
  }
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
export const types: ts.TypeNode[] = properties.map((prop) => prop.type).filter((type) => type !== undefined) as ts.TypeNode[]
export const kinds: ts.SyntaxKind[] = types.map((type) => type.kind)
types.forEach(handleTypes("StubInterface")("StubField"))



