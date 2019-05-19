import * as ts from "typescript"

import { fieldTypeNameReplacements } from "./consts"
import { fieldCompare, FieldType, Field, InterfaceMap, Props, TypeAliasMap, BaseInterface } from "./types"
import { capitalize, lowerCaseFirstLetter } from "./utils"

const filterTypes = (kind: ts.SyntaxKind) => <T>(top: ts.Node): Array<T> => {
  const types: Array<T> = []
  const find = (node: ts.Node) => {
    if(node.kind === kind){ types.push(node as unknown as T) }
  }
  ts.forEachChild(top, find)
  return types
}

export const getTypeAliases = (node: ts.Node): ts.TypeAliasDeclaration[] => 
  filterTypes(ts.SyntaxKind.TypeAliasDeclaration)(node)

export const getInterfaces = (node: ts.Node): ts.InterfaceDeclaration[] =>
  filterTypes(ts.SyntaxKind.InterfaceDeclaration)(node)

const getPropertySignatures = (i: ts.InterfaceDeclaration): ts.PropertySignature[] => 
  i.members.filter((member) => ts.isPropertySignature(member)) as unknown as ts.PropertySignature[]

export const createInterfaceMap = (is: ts.InterfaceDeclaration[]): InterfaceMap => {
  const map: InterfaceMap = {}
  is.forEach((i) => map[i.name.escapedText.toString()] = i)
  return map;
}

export const createTypeAliasMap = (is: ts.TypeAliasDeclaration[]): TypeAliasMap => {
  const map: TypeAliasMap = {}
  is.forEach((i) => map[i.name.escapedText.toString()] = i)
  return map;
}

const handleLiteralType = (interfaceName: string) => (fieldName: string) => (literal: ts.LiteralTypeNode): FieldType => {
  if(ts.isStringLiteral(literal.literal)){
    const tmpName = capitalize((literal.literal as unknown as ts.StringLiteral).text)
    const name = (fieldTypeNameReplacements[tmpName]) ? fieldTypeNameReplacements[tmpName] : tmpName
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

const getExpressionName = (expression: ts.Expression): string => {
  if(ts.isIdentifier(expression)){
    return expression.escapedText.toString()
  }else if(ts.isPropertyAccessExpression(expression)){
    return expression.name.escapedText.toString()
  }
  throw ("Got an ExpressionName I don't know how to handle " + ts.SyntaxKind[expression.kind])
}

export const getBindingName = (name: ts.BindingName): string => {
  if(ts.isIdentifier(name)){
    return name.escapedText.toString()
  }
  throw ("Got a BindingName I don't know how to deal with" + name.toString())
}

export const getPropertyName = (name: ts.PropertyName): string => {
  if(ts.isIdentifier(name)){
    return name.escapedText.toString()
  } else if(ts.isStringLiteral(name)){
    return (name as ts.StringLiteral).text
  }
  throw ("Got a PropertyName I don't know how to deal with" + name.toString())
}

const handleTypeArguments = (typeAliasMap: TypeAliasMap) => (interfaceName: string) => (fieldName: string) => (nodeArray: ts.NodeArray<ts.TypeNode>): FieldType[] => {
  const fieldTypes: FieldType[] = []
  nodeArray.forEach((node) => {
    fieldTypes.push(handleTypes(typeAliasMap)(interfaceName)(fieldName)(node))
  });
  return fieldTypes
}

const handleTypeReference = (typeAliasMap: TypeAliasMap) =>  (interfaceName: string) => (fieldName: string) => (type: ts.TypeReferenceNode): FieldType => {
  const tmpName = getName(type.typeName)
  const typeArgs = (type.typeArguments) ? handleTypeArguments(typeAliasMap)(interfaceName)(fieldName)(type.typeArguments) : []
  const typeName = ((fieldTypeNameReplacements[tmpName]) ? fieldTypeNameReplacements[tmpName] : tmpName)
  if(typeName === "React") return { name : "JSX", foreignData : [ "JSX" ] }
  if(typeName === "CSS") return { name : "CSS", foreignData : [ "CSS" ] }

  if(typeAliasMap[tmpName]) return handleTypes(typeAliasMap)(interfaceName)(fieldName)(typeAliasMap[tmpName].type)

  if(typeName === "ListRenderItem"){ return { name : "ListRenderItem", foreignData : [ "ListRenderItem" ] } }

  const name = (typeArgs.length > 0) ? `(${typeName} ${typeArgs.map(f => f.name).join(" ")})` : typeName
  const foreignData = flattenForeignData(typeArgs)
  foreignData.push(typeName)
  return { name, foreignData } 
}

const handleFunctionType = (typeAliasMap: TypeAliasMap) => (interfaceName: string) => (fieldName: string) => (fn: ts.FunctionTypeNode): FieldType => {
  const isUnit = ts.SyntaxKind.VoidKeyword == fn.type.kind
  const isEffectUnit = isUnit && (fn.parameters.length == 0)
  
  if(isEffectUnit) return { name : "(Effect Unit)" }

  const parameters: FieldType[] = 
    (fn.parameters.map((param) => param.type)
      .filter((type) => type !== undefined) as ts.TypeNode[])
      .map((type) => handleTypes(typeAliasMap)(interfaceName)(fieldName)(type))

  const finalType = handleTypes(typeAliasMap)(interfaceName)(fieldName)(fn.type)
  const finalTypeName = finalType.name ? finalType.name : ""
  const finalForeignData = finalType.foreignData ? finalType.foreignData : []
  
  if(parameters.length == 0){
    const fieldType = { name : "(Effect " + finalTypeName + ")", foreignData: finalForeignData }
    return fieldType 
  }

  if(parameters.length > 10) throw ("Got a function with more than 10 parameters, and I don't know what to do with that")
  else {
    const types = parameters.map((fieldType) => fieldType.name ? fieldType.name : "").join(" ")
    const foreignDatas: string[][] = parameters.map((fieldType) => fieldType.foreignData ? fieldType.foreignData : [])
    const foreignData: string[] = ([] as string[]).concat(...foreignDatas).concat(finalForeignData)
    const name = "(EffectFn" + (parameters.length) + " " + types + " " + finalTypeName + ")"
    const fieldType = { name, foreignData }
    return fieldType 
  }
}

const flattenForeignData = (fieldTypes: FieldType[]): string[] => {
    const foreignDatas: string[][] = fieldTypes.map((fieldType) => fieldType.foreignData ? fieldType.foreignData : [])
    return ([] as string[]).concat(...foreignDatas)
}

const handleTypeQuery = (interfaceName: string) => (fieldName: string) => (tq: ts.TypeQueryNode): FieldType => {
  const tmpName = getName(tq.exprName)
  const name = (capitalize(tmpName) === tmpName) ? tmpName : "Effect Unit"
  const foreignData = (capitalize(tmpName) === tmpName) ?  [ tmpName ] : undefined
  return { name, foreignData  }
}

const handleTypeLiteral = (typeAliasMap: TypeAliasMap) => (interfaceName: string) => (fieldName: string) => (tl: ts.TypeLiteralNode): FieldType => {
  const properties = tl.members.filter((m) => ts.isPropertySignature(m)) as ts.PropertySignature[]
  const propertyNames = properties.map((prop) => getPropertyName(prop.name))
  const fieldTypes = (properties.map((prop) => prop.type).filter((type) => type !== undefined) as ts.TypeNode[]).map((type, i) => handleTypes(typeAliasMap)(interfaceName)(propertyNames[i])(type))
  
  if(propertyNames.length == 0) return { name : "(Object Foreign)", foreignData : [] }
  else {
    const name = "{ " + propertyNames.map((name, i) => name + " :: " + fieldTypes[i].name).join(", ") + " }"
    const foreignData = flattenForeignData(fieldTypes)
    const fieldType = { name, foreignData }
    return fieldType
  }
  
}

const handleParenthesizedType = (typeAliasMap: TypeAliasMap) => (interfaceName: string) => (fieldName: string) => (a: ts.ParenthesizedTypeNode): FieldType => {
  const fieldType = handleTypes(typeAliasMap)(interfaceName)(fieldName)(a.type)
  const name = "(" + (fieldTypeNameReplacements[fieldType.name] || fieldType.name) + ")"
  return { name, foreignData: fieldType.foreignData }
}

const handleArrayType = (typeAliasMap: TypeAliasMap) => (interfaceName: string) => (fieldName: string) => (a: ts.ArrayTypeNode): FieldType => {
  const fieldType = handleTypes(typeAliasMap)(interfaceName)(fieldName)(a.elementType)
  a.elementType
  const name = wrapNameInArray(fieldType.name)
  return { name, foreignData: fieldType.foreignData }
}

const wrapNameInArray = (name: string): string => "(Array " + (fieldTypeNameReplacements[name] || name) + ")"

const handleUnionType = (typeAliasMap: TypeAliasMap) => (interfaceName: string) => (fieldName: string) => (u: ts.UnionTypeNode): FieldType => {
  
  const isOptional = u.types.map(t => 
    t.kind === ts.SyntaxKind.NullKeyword || t.kind === ts.SyntaxKind.UndefinedKeyword
  ).reduce((a, b) => a && b, false)

  const types = u.types.filter(t => t.kind !== ts.SyntaxKind.NullKeyword && t.kind !== ts.SyntaxKind.UndefinedKeyword)

  const isNumber = types.map(t => {
    if(ts.isLiteralTypeNode(t)){
      return ts.isNumericLiteral(t.literal)
    }
    return false
  }).reduce((a, b) => a && b, true)

  if(isNumber) return { name : "Number", isOptional }

  const isString = types.map(t => {
    if(ts.isLiteralTypeNode(t)){
      return ts.isStringLiteral(t.literal) || ts.isNumericLiteral(t.literal)
    }
    return (t.kind === ts.SyntaxKind.StringLiteral || t.kind === ts.SyntaxKind.BooleanKeyword || t.kind === ts.SyntaxKind.NumberKeyword || t.kind === ts.SyntaxKind.StringKeyword )
  }).reduce((a, b) => a && b, true)

  if(isString) return { name : "String", isOptional }

  if(types.length === 2){
    const first = handleTypes(typeAliasMap)(interfaceName)(fieldName)(types[0])
    first.isOptional = isOptional
    const second = handleTypes(typeAliasMap)(interfaceName)(fieldName)(types[1])
    second.isOptional = isOptional
    if(first.name === wrapNameInArray(second.name)){
      return first
    }else if(wrapNameInArray(first.name) === second.name){
      return second
    }
  }
  
  const remainingTypes = types.map(handleTypes(typeAliasMap)(interfaceName)(fieldName))
  
  const isJSX = remainingTypes.map(t => {
    return t.name.indexOf("React") >= 0 || t.name.indexOf("JSX") >= 0
  }).reduce((a, b) => a && b, true)

  if(isJSX) return { name : "JSX", foreignData: [ "JSX" ], isOptional }
  
  if(remainingTypes.length === 1) return remainingTypes[0]

  if(interfaceName === "TextInputProps" && fieldName === "keyboardType") return { name : "String" }
  if(interfaceName === "TextInputProps" && fieldName === "returnKeyType") return { name : "String" }
  if(interfaceName === "TouchableNativeFeedbackProps" && fieldName === "background") return { name : "(Object Foreign)", foreignData : [] }
  if(interfaceName === "ImagePropsBase" && fieldName === "source") return { name : "(Array ImageURISource)", foreignData : [ "ImageURISource" ] }
  if(interfaceName === "ImagePropsBase" && fieldName === "defaultSource") return { name : "ImageURISource", foreignData : [ "ImageURISource" ] }
  if(interfaceName === "WebViewProps" && fieldName === "source") return { name : "(Object Foreign)", foreignData : [] }

  const name = (interfaceName + capitalize(fieldName))
  const fieldType = { name, foreignData : [ name ], isOptional }
  return fieldType
}

const handleTypes = (typeAliasMap: TypeAliasMap) => (interfaceName: string) => (fieldName: string) =>  (type: ts.TypeNode): FieldType => {
  switch (type.kind) {
    case ts.SyntaxKind.AnyKeyword:          return { name : "Foreign", foreignData: [] }
    case ts.SyntaxKind.NullKeyword:         return { name : "Null", foreignData: [ "Null" ] }
    case ts.SyntaxKind.VoidKeyword:         return { name : "Unit" }
    case ts.SyntaxKind.BooleanKeyword:      return { name : "Boolean" }
    case ts.SyntaxKind.NumberKeyword:       return { name : "Number" }
    case ts.SyntaxKind.StringKeyword:       return { name : "String" }
    case ts.SyntaxKind.ObjectKeyword:       return { name : "ObjectType", foreignData: [ "(Object Foreign)" ] }
    case ts.SyntaxKind.ParenthesizedType:   return handleParenthesizedType(typeAliasMap)(interfaceName)(fieldName)(type as unknown as ts.ParenthesizedTypeNode) 
    case ts.SyntaxKind.LiteralType:         return handleLiteralType(interfaceName)(fieldName)(type as unknown as ts.LiteralTypeNode)
    case ts.SyntaxKind.TypeReference:       return handleTypeReference(typeAliasMap)(interfaceName)(fieldName)(type as unknown as ts.TypeReferenceNode) 
    case ts.SyntaxKind.FunctionType:        return handleFunctionType(typeAliasMap)(interfaceName)(fieldName)(type as unknown as ts.FunctionTypeNode)
    case ts.SyntaxKind.TypeQuery:           return handleTypeQuery(interfaceName)(fieldName)(type as unknown as ts.TypeQueryNode)
    case ts.SyntaxKind.TypeLiteral:         return handleTypeLiteral(typeAliasMap)(interfaceName)(fieldName)(type as unknown as ts.TypeLiteralNode)
    case ts.SyntaxKind.ArrayType:           return handleArrayType(typeAliasMap)(interfaceName)(fieldName)(type as unknown as ts.ArrayTypeNode)
    case ts.SyntaxKind.UnionType:           return handleUnionType(typeAliasMap)(interfaceName)(fieldName)(type as unknown as ts.UnionTypeNode)
    default: throw ("Got a type that I don't know: " + ts.SyntaxKind[type.kind])
  }
}

export const handleInterface = (isComponentProps: boolean) => (typeAliasMap: TypeAliasMap) => (interfaceMap: InterfaceMap) => (bi: BaseInterface): Props => {
  const int = bi.iface

  const getParents = (): Props[] => {
    const array: Props[] = []
    if(int.heritageClauses !== undefined){
      int.heritageClauses.forEach((clause) => {
        clause.types.forEach((type) => {
          const name = getExpressionName(type.expression)
          const maybeInterface = interfaceMap[name]
          if(maybeInterface) array.push(handleInterface(isComponentProps)(typeAliasMap)(interfaceMap)({
            iface: maybeInterface,
            classNames: []
          }))
        })
      })
    }
    return array
  }

  const typeParameters: string[] = []
  if(int.typeParameters){
    int.typeParameters. forEach((param) => {
      typeParameters.push(lowerCaseFirstLetter(param.name.escapedText.toString()))
    })
  }

  const parents = getParents()
  const parentFields = ([] as Field[]).concat(...parents.map((p) => p.fields))

  const properties: ts.PropertySignature[] = getPropertySignatures(int)
  const names: string[] = properties.map((p) => getPropertyName(p.name))
  const types: ts.TypeNode[] = properties.map((prop) => prop.type).filter((type) => type !== undefined) as ts.TypeNode[]
  
  if(properties.length !== types.length) throw ("Properties and types don't match" + int)

  const interfaceName = int.name.escapedText.toString()
  const allFields = properties.map((prop, i) => {
    const name = names[i]
    const fieldType = handleTypes(typeAliasMap)(interfaceName)(name)(types[i])
    const isOptional = prop.questionToken !== undefined
    const field = { fieldType, name, isOptional } 
    return field
  })
  .concat(parentFields)

  const uniqueFields = (fields: Field[]): Field[] => {
    const map: {[key:string]:boolean} = {}
    const uniques: Field[] = []
    fields.forEach((field) => {
      if(!map[field.name]){
        map[field.name] = true
        uniques.push(field)
      }
    })
    return uniques
  }

  const fields = uniqueFields(allFields).sort(fieldCompare)

  return { name: interfaceName, fields, typeParameters, isComponentProps, classNames: bi.classNames }
}

export const getBaseInterfaces = (interfaceMap: InterfaceMap, root: ts.Node): BaseInterface[] => {
  const names: string[] = []
  const entries: { [key:string]: BaseInterface } = {}
  const classes: ts.ClassDeclaration[] = filterTypes(ts.SyntaxKind.ClassDeclaration)(root)
  classes.forEach((c) => {
    if(c.heritageClauses && c.heritageClauses[0] && c.name){
      const clause = c.heritageClauses[0]
      if(clause.types[0].typeArguments && clause.types[0].typeArguments && clause.types[0].typeArguments[0]){
        const type = clause.types[0].typeArguments[0]

        if(ts.isTypeReferenceNode(type) && ts.isIdentifier(type.typeName)){

          const className = c.name.escapedText.toString()
          const interfaceName = type.typeName.escapedText.toString()

          if(entries[interfaceName]){
            entries[interfaceName].classNames.push(className)
          } else if (interfaceMap[interfaceName]){
            entries[interfaceName] = {
              iface: interfaceMap[interfaceName],
              classNames: [className]
            }
          }
        }
      }
    }
  })
  return Object.keys(entries).map(key => entries[key])
}


