module Main where

import Prelude

import Control.Alt ((<|>))
import Control.Monad.Except.Trans (except)
import Control.MonadZero (empty)
import Data.Array (filter, group', sort) as Array
import Data.Array.NonEmpty (head, length) as NonEmptyArray
import Data.Either (Either(..))
import Data.Either (note) as Either
import Data.Maybe (Maybe(..))
import Data.Traversable (sequence, traverse)
import Data.Tuple (Tuple(..))
import Effect (Effect)
import Effect.Unsafe (unsafePerformEffect)
import Foreign (Foreign, ForeignError(..), unsafeToForeign)
import Foreign.Object (Object)
import Foreign.Object (keys, lookup) as Object
import Simple.JSON (class ReadForeign, E, readImpl)
import Simple.JSON (read) as JSON

data Node 
   = FalseKeyword
   | ObjectKeyword
   | ReadonlyKeyword
   | UndefinedKeyword
   | StaticKeyword
   | NullKeyword
   | DeclareKeyword
   | AnyKeyword
   | BooleanKeyword
   | VoidKeyword
   | ExportKeyword
   | StringKeyword
   | NumberKeyword
   | QuestionToken
   | DotDotDotToken
   | EndOfFileToken
   | Identifier String
   | PropertySignature { name :: Node, questionToken :: Maybe Node, type :: Node } 
   | TypeReference { typeName :: Node, typeArguments :: Array Node }
   | Parameter { name :: Node, type :: Node, dotDotDotToken :: Maybe Node, questionToken :: Maybe Node }
   | Name String
   | LiteralType Node
   | StringLiteral String
   | NumericLiteral String 
   | TypeLiteral (Array Node)
   | FunctionType { typeParameters :: Array Node, parameters :: Array Node, type :: Node }
   | InterfaceDeclaration { name :: Node, typeParameters :: Array Node, heritageClauses :: Array Node, members :: Array Node }
   | UnionType { types :: Array Node }
   | MethodSignature { name :: Node, questionToken :: Maybe Node, typeParameters :: Array Node, parameters :: Array Node, type :: Node }
   | ExpressionWithTypeArguments { expression :: Node, typeArguments :: Array Node }
   | HeritageClause { types :: Array Node }
   | TypeAliasDeclaration { name :: Node, typeParameters :: Array Node, type :: Node }
   | VariableStatement { declarationList :: Node }
   | VariableDeclarationList  { declarations :: Array Node }
   | VariableDeclaration { name :: Node, type :: Node }
   | ClassDeclaration { name :: Node, typeParameters :: Array Node, heritageClauses :: Array Node, members :: Array Node }
   | ArrayType { elementType :: Node }
   | QualifiedName { left :: Node, right :: Node }
   | PropertyAccessExpression { expression :: Node, name :: Node }
   | MethodDeclaration { name :: Node, questionToken :: Maybe Node, asteriskToken :: Maybe Node, typeParameters :: Array Node, parameters :: Array Node, type :: Node } 
   | PropertyDeclaration { name :: Node, questionToken :: Maybe Node, type :: Node } 
   | TypeQuery { exprName :: Node }
   | TypeParameter { name :: Node, constraint :: Maybe Node, default :: Maybe Node }
   | FunctionDeclaration { name :: Node, asteriskToken :: Maybe Node, typeParameters :: Array Node, parameters :: Array Node, type :: Node, body :: Maybe Node }
   | IntersectionType { types :: Array Node }
   | IndexSignature { parameters :: Array Node, type :: Node }
   | ParenthesizedType { type :: Node }
   | ConstructSignature { typeParameters :: Array Node, parameters :: Array Node, type :: Node }
   | ModuleDeclaration { name :: Node, body :: Node }
   | ModuleBlock { statements :: Array Node }
   | MappedType { typeParameters :: Array Node, questionToken :: Maybe Node, type :: Node } 
   | BindingElement { name :: Node, dotDotDotToken :: Maybe Node }
   | TypeOperator { type :: Node } 
   | TupleType { elementTypes :: Array Node }
   | ObjectBindingPattern { elements :: Array Node }
   | NamespaceImport { name :: Node }
   | ImportDeclaration { importClause :: Node, moduleSpecifier :: Node }
   | ImportClause { namedBindings :: Node }
   | Constructor { typeParameters :: Array Node, parameters :: Array Node, body :: Maybe Node }
   | IndexedAccessType { objectType :: Node, indexType :: Node }
   | ConstructorType { typeParameters :: Array Node, parameters :: Array Node, type :: Node }


instance readForeignNode :: ReadForeign Node where
  readImpl f = do
    obj <- readImpl f
    let tuple = unsafePerformEffect $ kindLookup obj
    let either = handle tuple
    except either

handleIndexedAccessType :: Object Foreign -> E Node
handleIndexedAccessType obj = IndexedAccessType <$> JSON.read (unsafeToForeign obj)

handleConstructorType :: Object Foreign -> E Node
handleConstructorType obj = ado
  typeParameters <- arrayNode "typeParameters" obj 
  parameters <- arrayNode "parameters" obj 
  typeNode <- lookupOrError "type" obj 
  in ConstructorType { typeParameters, parameters, type : typeNode }

handleConstructor :: Object Foreign -> E Node
handleConstructor obj = ado
  typeParameters <- arrayNode "typeParameters" obj 
  parameters <- arrayNode "parameters" obj 
  body <- maybeNode "body" obj 
  in Constructor { typeParameters, parameters, body }

handleImportClause :: Object Foreign -> E Node
handleImportClause obj = ImportClause <$> JSON.read (unsafeToForeign obj)

handleImportDeclaration :: Object Foreign -> E Node
handleImportDeclaration obj = ImportDeclaration <$> JSON.read (unsafeToForeign (hushSpy obj))

handleNamespaceImport :: Object Foreign -> E Node
handleNamespaceImport obj = NamespaceImport <$> JSON.read (unsafeToForeign obj)

handleObjectBindingPattern :: Object Foreign -> E Node
handleObjectBindingPattern obj = ObjectBindingPattern <$> JSON.read (unsafeToForeign obj)

handleTupleType :: Object Foreign -> E Node
handleTupleType obj = TupleType <$> JSON.read (unsafeToForeign obj)

handleTypeOperator :: Object Foreign -> E Node
handleTypeOperator obj = TypeOperator <$> JSON.read (unsafeToForeign obj)

handleBindingElement :: Object Foreign -> E Node
handleBindingElement obj = BindingElement <$> JSON.read (unsafeToForeign obj)

handleMappedType :: Object Foreign -> E Node
handleMappedType obj = ado
  typeNode <- lookupOrError "type" obj 
  typeParameters <- arrayNode "typeParameters" obj 
  questionToken <- maybeNode "questionToken" obj 
  in MappedType { type : typeNode, typeParameters, questionToken }


handleModuleBlock :: Object Foreign -> E Node
handleModuleBlock obj = ModuleBlock <$> JSON.read (unsafeToForeign obj)

handleModuleDeclaration :: Object Foreign -> E Node
handleModuleDeclaration obj = ModuleDeclaration <$> JSON.read (unsafeToForeign obj)

handleConstructSignature :: Object Foreign -> E Node
handleConstructSignature obj = ado
  typeNode <- lookupOrError "type" obj 
  typeParameters <- arrayNode "typeParameters" obj 
  parameters <- arrayNode "parameters" obj 
  in ConstructSignature { type : typeNode, typeParameters, parameters }

handleIndexSignature :: Object Foreign -> E Node
handleIndexSignature obj = IndexSignature <$> JSON.read (unsafeToForeign obj)

handleParenthesizedType :: Object Foreign -> E Node
handleParenthesizedType obj = ParenthesizedType <$> JSON.read (unsafeToForeign obj)

handleIntersectionType :: Object Foreign -> E Node
handleIntersectionType obj = IntersectionType <$> JSON.read (unsafeToForeign obj)


handleFunctionDeclaration :: Object Foreign -> E Node
handleFunctionDeclaration obj = ado
  name <- lookupOrError "name" obj 
  typeNode <- lookupOrError "type" obj 
  typeParameters <- arrayNode "typeParameters" obj 
  parameters <- arrayNode "parameters" obj 
  asteriskToken <- maybeNode "asteriskToken" obj 
  body <- maybeNode "body" obj 
  in FunctionDeclaration { name, type : typeNode, typeParameters, parameters, body, asteriskToken }


handleTypeParameter :: Object Foreign -> E Node
handleTypeParameter obj = TypeParameter <$> JSON.read (unsafeToForeign obj)

handleTypeQuery :: Object Foreign -> E Node
handleTypeQuery obj = TypeQuery <$> JSON.read (unsafeToForeign obj)

handlePropertyDeclaration :: Object Foreign -> E Node
handlePropertyDeclaration obj = ado
  name <- lookupOrError "name" obj 
  typeNode <- lookupOrError "type" obj 
  questionToken <- maybeNode "questionToken" obj 
  in PropertyDeclaration { name, type : typeNode, questionToken }


handleMethodDeclaration :: Object Foreign -> E Node
handleMethodDeclaration obj = ado
  name <- lookupOrError "name" obj 
  typeNode <- lookupOrError "type" obj 
  typeParameters <- arrayNode "typeParameters" obj 
  parameters <- arrayNode "parameters" obj 
  questionToken <- maybeNode "questionToken" obj 
  asteriskToken <- maybeNode "asteriskToken" obj 
  in MethodDeclaration { name, type : typeNode, typeParameters, parameters, questionToken, asteriskToken }

handlePropertyAccessExpression :: Object Foreign -> E Node
handlePropertyAccessExpression obj = PropertyAccessExpression <$> JSON.read (unsafeToForeign obj)

handleQualifiedName :: Object Foreign -> E Node
handleQualifiedName obj = QualifiedName <$> JSON.read (unsafeToForeign obj)

handleArrayType :: Object Foreign -> E Node
handleArrayType obj = ArrayType <$> JSON.read (unsafeToForeign obj)

handleClassDeclaration :: Object Foreign -> E Node
handleClassDeclaration obj = ado
  name <- lookupOrError "name" obj 
  typeParameters <- arrayNode "typeParameters" obj 
  members <- arrayNode "members" obj 
  heritageClauses <- arrayNode "heritageClauses" obj 
  in ClassDeclaration { name, typeParameters, members, heritageClauses }

handleVariableStatement :: Object Foreign -> E Node
handleVariableStatement obj = VariableStatement <$> JSON.read (unsafeToForeign obj)

handleVariableDeclaration :: Object Foreign -> E Node
handleVariableDeclaration obj = VariableDeclaration <$> JSON.read (unsafeToForeign obj)

handleVariableDeclarationList :: Object Foreign -> E Node
handleVariableDeclarationList obj = ado
  declarations <- arrayNode "declarations" obj 
  in VariableDeclarationList { declarations }

handleTypeAliasDeclaration :: Object Foreign -> E Node
handleTypeAliasDeclaration obj = ado
  name <- lookupOrError "name" obj 
  typeNode <- lookupOrError "type" obj 
  typeParameters <- arrayNode "typeParameters" obj 
  in TypeAliasDeclaration { name, type : typeNode, typeParameters }

handleHeritageClause :: Object Foreign -> E Node
handleHeritageClause obj = ado
  types <- arrayNode "types" obj 
  in HeritageClause { types }

handleExpressionWithTypeArguments :: Object Foreign -> E Node
handleExpressionWithTypeArguments obj = ado
  expression <- lookupOrError "expression" obj 
  typeArguments <- arrayNode "typeArguments" obj 
  in ExpressionWithTypeArguments { expression, typeArguments }

handleMethodSignature:: Object Foreign -> E Node
handleMethodSignature obj = ado
  name <- lookupOrError "name" obj 
  typeNode <- lookupOrError "type" obj 
  typeParameters <- arrayNode "typeParameters" obj 
  parameters <- arrayNode "parameters" obj 
  questionToken <- maybeNode "questionToken" obj 
  in MethodSignature { name, type : typeNode, typeParameters, parameters, questionToken }

handleUnionType :: Object Foreign -> E Node
handleUnionType obj = ado
  types <- arrayNode "types" obj 
  in UnionType { types }

handleInterfaceDeclaration :: Object Foreign -> E Node
handleInterfaceDeclaration obj = ado
  name <- lookupOrError "name" obj 
  typeParameters <- arrayNode "typeParameters" obj 
  members <- arrayNode "members" obj 
  heritageClauses <- arrayNode "heritageClauses" obj 
  in InterfaceDeclaration { name, typeParameters, members, heritageClauses }

handleFunctionType :: Object Foreign -> E Node
handleFunctionType obj = ado
  typeNode <- lookupOrError "type" obj 
  typeParameters <- arrayNode "typeParameters" obj 
  parameters <- arrayNode "parameters" obj 
  in FunctionType { type : typeNode, typeParameters, parameters }

handleStringLiteral :: Object Foreign -> E Node
handleStringLiteral obj = ado
  text <- lookupForeignOrError "text" obj >>= JSON.read
  in StringLiteral text 

handleTypeLiteral :: Object Foreign -> E Node
handleTypeLiteral obj = ado
  members <- lookupForeignOrError "members" obj >>= JSON.read
  in TypeLiteral members 


handleNumericLiteral :: Object Foreign -> E Node
handleNumericLiteral obj = ado
  number <- lookupForeignOrError "text" obj >>= JSON.read
  in NumericLiteral number 


handleLiteralType :: Object Foreign -> E Node
handleLiteralType obj = ado
  literal <- lookupOrError "literal" obj
  in LiteralType literal

handleParameter :: Object Foreign -> E Node
handleParameter obj = ado
  name <- lookupOrError "name" obj
  typeNode <- lookupOrError "type" obj
  dotDotDotToken <- maybeNode "dotDotDotToken" obj
  questionToken <- maybeNode "questionToken" obj
  in Parameter { name, type : typeNode, dotDotDotToken, questionToken }
 
handleIdentifier :: Object Foreign -> E Node
handleIdentifier obj = do 
  Identifier <$> (lookupForeignOrError "escapedText" obj >>= JSON.read)
  
handleTypeReference :: Object Foreign -> E Node
handleTypeReference obj = ado
  typeName <- lookupOrError "typeName" obj 
  typeArguments <- arrayNode "typeArguments" obj 
  in TypeReference { typeName, typeArguments }

handlePropertySignature :: Object Foreign -> E Node
handlePropertySignature obj = ado
  name <- lookupOrError "name" obj 
  nodeType <- lookupOrError "type" obj 
  let questionToken = (Object.lookup "questionToken" obj) <#> const QuestionToken
  in PropertySignature { name, questionToken, type : nodeType }

 
lookupOrError :: String -> Object Foreign -> E Node 
lookupOrError key obj = JSON.read =<< 
  Either.note 
    (pure $ ForeignError ("Expected to find key '" <> key <> "' but didn't") )
    (Object.lookup key obj)

lookupForeignOrError :: String -> Object Foreign -> E Foreign 
lookupForeignOrError key obj = 
  Either.note 
    (pure $ ForeignError ("Expected to find key '" <> key <> "' but didn't") )
    (Object.lookup key obj)

maybeNode :: String -> Object Foreign -> E (Maybe Node)
maybeNode key obj = 
  ((lookupOrError key obj) <#> Just) <|> (pure Nothing)

arrayNode :: String -> Object Foreign -> E (Array Node)
arrayNode key obj = 
  (lookupForeignOrError key obj >>= JSON.read) <|> (pure empty)


handle :: (Tuple String (Object Foreign)) -> E Node
handle (Tuple "ConstructorType" obj) = handleConstructorType obj
handle (Tuple "EndOfFileToken" obj) = Right EndOfFileToken 
handle (Tuple "FalseKeyword" obj) = Right FalseKeyword
handle (Tuple "IndexedAccessType" obj) = handleIndexedAccessType obj
handle (Tuple "Constructor" obj) = handleConstructor obj
handle (Tuple "ImportClause" obj) = handleImportClause obj
handle (Tuple "ImportDeclaration" obj) = handleImportDeclaration obj
handle (Tuple "NamespaceImport" obj) = handleNamespaceImport obj
handle (Tuple "ObjectBindingPattern" obj) = handleObjectBindingPattern obj
handle (Tuple "ObjectKeyword" obj) = Right ObjectKeyword
handle (Tuple "ReadonlyKeyword" obj) = Right ReadonlyKeyword
handle (Tuple "UndefinedKeyword" obj) = Right UndefinedKeyword
handle (Tuple "TupleType" obj) = handleTupleType obj
handle (Tuple "TypeOperator" obj) = handleTypeOperator obj
handle (Tuple "BindingElement" obj) = handleBindingElement obj
handle (Tuple "MappedType" obj) = handleMappedType obj
handle (Tuple "ModuleBlock" obj) = handleModuleBlock obj
handle (Tuple "ModuleDeclaration" obj) = handleModuleDeclaration obj
handle (Tuple "ConstructSignature" obj) = handleConstructSignature obj
handle (Tuple "NumericLiteral" obj) = handleNumericLiteral obj
handle (Tuple "DotDotDotToken" obj) = Right DotDotDotToken
handle (Tuple "ParenthesizedType" obj) = handleParenthesizedType obj
handle (Tuple "IndexSignature" obj) = handleIndexSignature obj
handle (Tuple "StaticKeyword" obj) = Right StaticKeyword
handle (Tuple "IntersectionType" obj) = handleIntersectionType obj
handle (Tuple "FunctionDeclaration" obj) = handleFunctionDeclaration obj
handle (Tuple "TypeParameter" obj) = handleTypeParameter obj
handle (Tuple "NullKeyword" obj) = Right NullKeyword
handle (Tuple "TypeQuery" obj) = handleTypeQuery obj
handle (Tuple "PropertyDeclaration" obj) = handlePropertyDeclaration obj
handle (Tuple "MethodDeclaration" obj) = handleMethodDeclaration obj
handle (Tuple "PropertyAccessExpression" obj) = handlePropertyAccessExpression obj
handle (Tuple "DeclareKeyword" obj) = Right DeclareKeyword
handle (Tuple "QualifiedName" obj) = handleQualifiedName obj
handle (Tuple "ArrayType" obj) = handleArrayType obj
handle (Tuple "ClassDeclaration" obj) = handleClassDeclaration obj
handle (Tuple "VariableDeclaration" obj) = handleVariableDeclaration obj
handle (Tuple "VariableDeclarationList" obj) = handleVariableDeclarationList obj
handle (Tuple "VariableStatement" obj) = handleVariableStatement obj
handle (Tuple "TypeLiteral" obj) = handleTypeLiteral obj
handle (Tuple "TypeAliasDeclaration" obj) = handleTypeAliasDeclaration obj
handle (Tuple "HeritageClause" obj) = handleHeritageClause obj
handle (Tuple "AnyKeyword" obj) = Right AnyKeyword
handle (Tuple "ExpressionWithTypeArguments" obj) = handleExpressionWithTypeArguments obj
handle (Tuple "MethodSignature" obj) = handleMethodSignature obj
handle (Tuple "BooleanKeyword" obj) = Right BooleanKeyword
handle (Tuple "UnionType" obj) = handleUnionType obj
handle (Tuple "InterfaceDeclaration" obj) = handleInterfaceDeclaration obj
handle (Tuple "FunctionType" obj) = handleFunctionType obj
handle (Tuple "VoidKeyword" obj) = Right VoidKeyword
handle (Tuple "ExportKeyword" obj) = Right ExportKeyword
handle (Tuple "StringKeyword" obj) = Right StringKeyword
handle (Tuple "StringLiteral" obj) = handleStringLiteral obj
handle (Tuple "LiteralType" obj) = handleLiteralType obj
handle (Tuple "NumberKeyword" obj) = Right NumberKeyword
handle (Tuple "Parameter" obj) = handleParameter obj
handle (Tuple "QuestionToken" obj) = Right QuestionToken
handle (Tuple "TypeReference" obj) = handleTypeReference obj
handle (Tuple "PropertySignature" obj) = handlePropertySignature obj
handle (Tuple "Identifier" obj) = handleIdentifier obj
handle (Tuple tpe obj) = case (Object.lookup "escapedText" obj) of 
  Nothing -> Left $ pure $ ForeignError ("Couldn't find escapedText: " <> tpe)
  Just f -> JSON.read f <#> Name

filterNodesByName :: String -> Array (Tuple String (Object Foreign)) -> Array (Tuple String (Object Foreign))
filterNodesByName predicateStr = Array.filter (\(Tuple str _ )-> str == predicateStr)

keyDiffs :: String -> Array (Tuple String (Object Foreign)) -> Array (Tuple Int (Array String))
keyDiffs predicateStr array = do
  let filtered = filterNodesByName predicateStr array
  let objs = map (\(Tuple _ obj) -> obj) filtered
  let grouped = Array.group' (map (\obj -> Array.sort $ Object.keys obj) objs)
  map (\group -> Tuple (NonEmptyArray.length group) (NonEmptyArray.head group)) grouped

types :: Array (Object Foreign) -> Effect (Array (Tuple String (Object Foreign)))
types = traverse kindLookup 

kindLookup :: Object Foreign -> Effect (Tuple String (Object Foreign))
kindLookup obj = _kindLookup obj <#> \str -> Tuple str obj

main :: Effect Unit
main = do
  nodes <- _nodes
  names <- types nodes <#> map handle
  let n = map hushSpy $ sequence names
  pure unit

foreign import hushSpy :: forall a. a -> a 
foreign import hushSpyStringify :: forall a. a -> a 
foreign import _nodes :: Effect (Array (Object Foreign))
foreign import _kindLookup :: Object Foreign -> Effect String 
