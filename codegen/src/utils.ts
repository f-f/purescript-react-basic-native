import * as ts from "typescript"

export const printKind = (kind: ts.SyntaxKind) => 
  console.log(ts.SyntaxKind[kind])

export const printKinds = (kinds: ts.SyntaxKind[]) => {
  const map: {[key:string]:string;} = {}
  kinds.forEach((kind) => {
    map[kind] = ts.SyntaxKind[kind]
  })
  console.log(map)
}

export const capitalize = (str: string): string => 
  str.charAt(0).toUpperCase() + str.slice(1)

export const lowerCaseFirstLetter = (str: string): string => 
  str.charAt(0).toLowerCase() + str.slice(1)

