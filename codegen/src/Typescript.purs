module Typescript (
  -- Types
  Node(..)
, ArrayTypeRec
, BindingElementRec
, ClassDeclarationRec
, ConstructSignatureRec
, ConstructorRec
, ConstructorTypeRec
, ExpressionWithTypeArgumentsRec
, FunctionDeclarationRec
, FunctionTypeRec
, HeritageClauseRec
, ImportClauseRec
, ImportDeclarationRec
, IndexSignatureRec
, IndexedAccessTypeRec
, InterfaceDeclarationRec
, IntersectionTypeRec
, MappedTypeRec
, MethodDeclarationRec
, MethodSignatureRec
, ModuleBlockRec
, ModuleDeclarationRec
, NamespaceImportRec
, ObjectBindingPatternRec
, ParameterRec
, ParenthesizedTypeRec
, PropertyAccessExpressionRec
, PropertyDeclarationRec
, PropertySignatureRec
, QualifiedNameRec
, TupleTypeRec
, TypeAliasDeclarationRec
, TypeOperatorRec
, TypeParameterRec
, TypeQueryRec
, TypeReferenceRec
, UnionTypeRec
, VariableDeclarationListRec
, VariableDeclarationRec
, VariableStatementRec

-- Lenses
, _AnyKeyword
, _ArrayType
, _BindingElement
, _BooleanKeyword
, _ClassDeclaration
, _ConstructSignature
, _Constructor
, _ConstructorType
, _DeclareKeyword
, _DotDotDotToken
, _EndOfFileToken
, _ExportKeyword
, _ExpressionWithTypeArguments
, _FalseKeyword
, _FunctionDeclaration
, _FunctionType
, _HeritageClause
, _Identifier
, _ImportClause
, _ImportDeclaration
, _IndexSignature
, _IndexedAccessType
, _InterfaceDeclaration
, _IntersectionType
, _LiteralType
, _MappedType
, _MethodDeclaration
, _MethodSignature
, _ModuleBlock
, _ModuleDeclaration
, _Name
, _NamespaceImport
, _NullKeyword
, _NumberKeyword
, _NumericLiteral
, _ObjectBindingPattern
, _ObjectKeyword
, _Parameter
, _ParenthesizedType
, _PropertyAccessExpression
, _PropertyDeclaration
, _PropertySignature
, _QualifiedName
, _QuestionToken
, _ReadonlyKeyword 
, _StaticKeyword
, _StringKeyword
, _StringLiteral
, _TupleType
, _TypeAliasDeclaration
, _TypeLiteral
, _TypeOperator
, _TypeParameter
, _TypeQuery
, _TypeReference
, _UndefinedKeyword
, _UnionType
, _VariableDeclaration
, _VariableDeclarationList
, _VariableStatement
, _VoidKeyword
, _name
, _type
, _body
, _namedBindings
, _elementType
, _indexType
, _importClause
, _objectType
, _moduleSpecifier
, _expression
, _exprName
, _declarationList
, _dotDotDotToken
, _questionToken
, _asteriskToken
, _default
, _constraint
, _members
, _parameters
, _typeArguments
, _typeParameters
, _statements
, _declarations
, _types
, _heritageClauses
, _typeName

-- functions
, hushSpy
, hushSpyStringify
, typescript
) where

import Prelude

import Control.Alt ((<|>))
import Control.Monad.Except.Trans (except)
import Control.MonadZero (empty)
import Data.Array (filter, group', sort) as Array
import Data.Array.NonEmpty (head, length) as NonEmptyArray
import Data.Either (Either(..))
import Data.Either (note) as Either
import Data.Lens (Lens', Prism', prism', view)
import Data.Lens.Record (prop)
import Data.Maybe (Maybe(..))
import Data.Symbol (SProxy(..))
import Data.Traversable (traverse)
import Data.Tuple (Tuple(..))
import Effect (Effect)
import Effect.Unsafe (unsafePerformEffect)
import Foreign (Foreign, ForeignError(..), F, unsafeToForeign)
import Foreign (isUndefined) as Foreign
import Foreign.Object (Object)
import Foreign.Object (keys, lookup) as Object
import Simple.JSON (class ReadForeign, readImpl)
import Simple.JSON (read') as JSON

_name :: forall r a. Lens' { name :: a | r} a
_name = prop (SProxy :: SProxy "name")

_type :: forall r a. Lens' { type :: a | r} a
_type = prop (SProxy :: SProxy "type")

_body :: forall r a. Lens' { body :: a | r} a
_body = prop (SProxy :: SProxy "body")

_namedBindings :: forall r a. Lens' { namedBindings :: a | r} a
_namedBindings = prop (SProxy :: SProxy "namedBindings")

_elementType :: forall r. Lens' { elementType :: Node | r} Node
_elementType = prop (SProxy :: SProxy "elementType")

_indexType :: forall r. Lens' { indexType :: Node | r} Node
_indexType = prop (SProxy :: SProxy "indexType")

_importClause :: forall r. Lens' { importClause :: Node | r} Node
_importClause = prop (SProxy :: SProxy "importClause")

_objectType :: forall r. Lens' { objectType :: Node | r} Node
_objectType = prop (SProxy :: SProxy "objectType")

_moduleSpecifier :: forall r. Lens' { objectType :: Node | r} Node
_moduleSpecifier = prop (SProxy :: SProxy "objectType")

_expression :: forall r. Lens' { expression :: Node | r} Node
_expression = prop (SProxy :: SProxy "expression")

_exprName :: forall r. Lens' { exprName :: Node | r} Node
_exprName = prop (SProxy :: SProxy "exprName")

_declarationList :: forall r. Lens' { declarationList :: Node | r} Node
_declarationList = prop (SProxy :: SProxy "declarationList")


_dotDotDotToken :: forall r. Lens' { dotDotDotToken :: Maybe Node | r} (Maybe Node)
_dotDotDotToken = prop (SProxy :: SProxy "dotDotDotToken")

_questionToken :: forall r. Lens' { questionToken :: Maybe Node | r} (Maybe Node)
_questionToken = prop (SProxy :: SProxy "questionToken")

_asteriskToken :: forall r. Lens' { asteriskToken :: Maybe Node | r} (Maybe Node)
_asteriskToken = prop (SProxy :: SProxy "asteriskToken")

_default :: forall r. Lens' { default :: Maybe Node | r} (Maybe Node)
_default = prop (SProxy :: SProxy "default")

_constraint :: forall r. Lens' { constraint :: Maybe Node | r} (Maybe Node)
_constraint = prop (SProxy :: SProxy "constraint")


_members :: forall r. Lens' { members :: Array Node | r} (Array Node)
_members = prop (SProxy :: SProxy "members")

_parameters :: forall r. Lens' { parameters :: Array Node | r} (Array Node)
_parameters = prop (SProxy :: SProxy "parameters")

_typeArguments :: forall r. Lens' { typeArguments :: Array Node | r} (Array Node)
_typeArguments = prop (SProxy :: SProxy "typeArguments")

_typeParameters :: forall r. Lens' { typeParameters :: Array Node | r} (Array Node)
_typeParameters = prop (SProxy :: SProxy "typeParameters")

_statements :: forall r. Lens' { statements :: Array Node | r} (Array Node)
_statements = prop (SProxy :: SProxy "statements")

_declarations :: forall r. Lens' { declarations :: Array Node | r} (Array Node)
_declarations = prop (SProxy :: SProxy "declarations")

_types :: forall r. Lens' { types :: Array Node | r} (Array Node)
_types = prop (SProxy :: SProxy "types")

_heritageClauses :: forall r. Lens' { heritageClauses :: Array Node | r} (Array Node)
_heritageClauses = prop (SProxy :: SProxy "heritageClauses")

_typeName :: forall r. Lens' { typeName :: Node | r} Node
_typeName = prop (SProxy :: SProxy "typeName")



type ArrayTypeRec = { elementType :: Node }
type BindingElementRec = { name :: Node, dotDotDotToken :: Maybe Node }
type ClassDeclarationRec = { name :: Node, typeParameters :: Array Node, heritageClauses :: Array Node, members :: Array Node }
type ConstructSignatureRec = { typeParameters :: Array Node, parameters :: Array Node, type :: Node }
type ConstructorRec = { typeParameters :: Array Node, parameters :: Array Node, body :: Maybe Node }
type ConstructorTypeRec = { typeParameters :: Array Node, parameters :: Array Node, type :: Node }
type ExpressionWithTypeArgumentsRec = { expression :: Node, typeArguments :: Array Node }
type FunctionDeclarationRec = { name :: Node, asteriskToken :: Maybe Node, typeParameters :: Array Node, parameters :: Array Node, type :: Node, body :: Maybe Node }
type FunctionTypeRec = { typeParameters :: Array Node, parameters :: Array Node, type :: Node }
type HeritageClauseRec = { types :: Array Node }
type ImportClauseRec = { namedBindings :: Node }
type ImportDeclarationRec = { importClause :: Node, moduleSpecifier :: Node }
type IndexSignatureRec = { parameters :: Array Node, type :: Node }
type IndexedAccessTypeRec = { objectType :: Node, indexType :: Node }
type InterfaceDeclarationRec = { name :: Node, typeParameters :: Array Node, heritageClauses :: Array Node, members :: Array Node }
type IntersectionTypeRec = { types :: Array Node }
type MappedTypeRec = { typeParameters :: Array Node, questionToken :: Maybe Node, type :: Node } 
type MethodDeclarationRec = { name :: Node, questionToken :: Maybe Node, asteriskToken :: Maybe Node, typeParameters :: Array Node, parameters :: Array Node, type :: Node } 
type MethodSignatureRec = { name :: Node, questionToken :: Maybe Node, typeParameters :: Array Node, parameters :: Array Node, type :: Node }
type ModuleBlockRec = { statements :: Array Node }
type ModuleDeclarationRec = { name :: Node, body :: Node }
type NamespaceImportRec = { name :: Node }
type ObjectBindingPatternRec = { elements :: Array Node }
type ParameterRec = { name :: Node, type :: Node, dotDotDotToken :: Maybe Node, questionToken :: Maybe Node }
type ParenthesizedTypeRec = { type :: Node }
type PropertyAccessExpressionRec = { expression :: Node, name :: Node }
type PropertyDeclarationRec = { name :: Node, questionToken :: Maybe Node, type :: Node } 
type PropertySignatureRec = { name :: Node, questionToken :: Maybe Node, type :: Node } 
type QualifiedNameRec = { left :: Node, right :: Node }
type TupleTypeRec = { elementTypes :: Array Node }
type TypeAliasDeclarationRec = { name :: Node, typeParameters :: Array Node, type :: Node }
type TypeOperatorRec = { type :: Node } 
type TypeParameterRec = { name :: Node, constraint :: Maybe Node, default :: Maybe Node }
type TypeQueryRec = { exprName :: Node }
type TypeReferenceRec = { typeName :: Node, typeArguments :: Array Node }
type UnionTypeRec = { types :: Array Node }
type VariableDeclarationListRec =  { declarations :: Array Node }
type VariableDeclarationRec = { name :: Node, type :: Node }
type VariableStatementRec = { declarationList :: Node }


data Node 
  = AnyKeyword String
  | ArrayType ArrayTypeRec
  | BindingElement BindingElementRec
  | BooleanKeyword String
  | ClassDeclaration ClassDeclarationRec
  | ConstructSignature ConstructSignatureRec
  | Constructor ConstructorRec
  | ConstructorType ConstructorTypeRec
  | DeclareKeyword String
  | DotDotDotToken String
  | EndOfFileToken String
  | ExportKeyword String
  | ExpressionWithTypeArguments ExpressionWithTypeArgumentsRec
  | FalseKeyword String
  | FunctionDeclaration FunctionDeclarationRec
  | FunctionType FunctionTypeRec
  | HeritageClause HeritageClauseRec
  | Identifier String
  | ImportClause ImportClauseRec
  | ImportDeclaration ImportDeclarationRec
  | IndexSignature IndexSignatureRec
  | IndexedAccessType IndexedAccessTypeRec
  | InterfaceDeclaration InterfaceDeclarationRec
  | IntersectionType IntersectionTypeRec
  | LiteralType Node
  | MappedType MappedTypeRec
  | MethodDeclaration MethodDeclarationRec
  | MethodSignature MethodSignatureRec
  | ModuleBlock ModuleBlockRec
  | ModuleDeclaration ModuleDeclarationRec
  | Name String
  | NamespaceImport NamespaceImportRec
  | NullKeyword String
  | NumberKeyword String
  | NumericLiteral String 
  | ObjectBindingPattern ObjectBindingPatternRec
  | ObjectKeyword String
  | Parameter ParameterRec
  | ParenthesizedType ParenthesizedTypeRec
  | PropertyAccessExpression PropertyAccessExpressionRec
  | PropertyDeclaration PropertyDeclarationRec
  | PropertySignature PropertySignatureRec
  | QualifiedName QualifiedNameRec
  | QuestionToken String
  | ReadonlyKeyword String
  | StaticKeyword String
  | StringKeyword String
  | StringLiteral String
  | TupleType TupleTypeRec
  | TypeAliasDeclaration TypeAliasDeclarationRec
  | TypeLiteral (Array Node)
  | TypeOperator TypeOperatorRec
  | TypeParameter TypeParameterRec
  | TypeQuery TypeQueryRec
  | TypeReference TypeReferenceRec
  | UndefinedKeyword String
  | UnionType UnionTypeRec
  | VariableDeclaration VariableDeclarationRec
  | VariableDeclarationList VariableDeclarationListRec
  | VariableStatement VariableStatementRec
  | VoidKeyword String

instance readForeignNode :: ReadForeign Node where
  readImpl f = do
    obj <- readImpl f
    let tuple = unsafePerformEffect $ kindLookup obj
    handle tuple

_FalseKeyword :: Prism' Node String
_FalseKeyword = prism' FalseKeyword case _ of 
  FalseKeyword str -> Just str
  _ -> Nothing

_ObjectKeyword :: Prism' Node String
_ObjectKeyword = prism' ObjectKeyword case _ of 
  ObjectKeyword str -> Just str
  _ -> Nothing

_ReadonlyKeyword :: Prism' Node String
_ReadonlyKeyword = prism' ReadonlyKeyword case _ of 
  ReadonlyKeyword str -> Just str
  _ -> Nothing

_UndefinedKeyword :: Prism' Node String
_UndefinedKeyword = prism' UndefinedKeyword case _ of 
  UndefinedKeyword str -> Just str
  _ -> Nothing

_StaticKeyword :: Prism' Node String
_StaticKeyword = prism' StaticKeyword case _ of 
  StaticKeyword str -> Just str
  _ -> Nothing

_NullKeyword :: Prism' Node String
_NullKeyword = prism' NullKeyword case _ of 
  NullKeyword str -> Just str
  _ -> Nothing

_DeclareKeyword :: Prism' Node String
_DeclareKeyword = prism' DeclareKeyword case _ of 
  DeclareKeyword str -> Just str
  _ -> Nothing

_AnyKeyword :: Prism' Node String
_AnyKeyword = prism' AnyKeyword case _ of 
  AnyKeyword str -> Just str
  _ -> Nothing

_BooleanKeyword :: Prism' Node String
_BooleanKeyword = prism' BooleanKeyword case _ of 
  BooleanKeyword str -> Just str
  _ -> Nothing

_VoidKeyword :: Prism' Node String
_VoidKeyword = prism' VoidKeyword case _ of 
  VoidKeyword str -> Just str
  _ -> Nothing

_ExportKeyword :: Prism' Node String
_ExportKeyword = prism' ExportKeyword case _ of 
  ExportKeyword str -> Just str
  _ -> Nothing

_StringKeyword :: Prism' Node String
_StringKeyword = prism' StringKeyword case _ of 
  StringKeyword str -> Just str
  _ -> Nothing

_NumberKeyword :: Prism' Node String
_NumberKeyword = prism' NumberKeyword case _ of 
  NumberKeyword str -> Just str
  _ -> Nothing

_QuestionToken :: Prism' Node String
_QuestionToken = prism' QuestionToken case _ of 
  QuestionToken str -> Just str
  _ -> Nothing

_DotDotDotToken :: Prism' Node String
_DotDotDotToken = prism' DotDotDotToken case _ of 
  DotDotDotToken str -> Just str
  _ -> Nothing

_EndOfFileToken :: Prism' Node String
_EndOfFileToken = prism' EndOfFileToken case _ of 
  EndOfFileToken str -> Just str
  _ -> Nothing

_Identifier :: Prism' Node String
_Identifier = prism' Identifier case _ of 
  Identifier str -> Just str
  _ -> Nothing

_Name :: Prism' Node String
_Name = prism' Name case _ of 
  Name str -> Just str
  _ -> Nothing

_LiteralType :: Prism' Node Node
_LiteralType = prism' LiteralType case _ of 
  LiteralType str -> Just str
  _ -> Nothing

_StringLiteral :: Prism' Node String
_StringLiteral = prism' StringLiteral case _ of 
  StringLiteral str -> Just str
  _ -> Nothing

_NumericLiteral :: Prism' Node String 
_NumericLiteral = prism' NumericLiteral case _ of 
  NumericLiteral str -> Just str
  _ -> Nothing

_TypeLiteral :: Prism' Node (Array Node)
_TypeLiteral = prism' TypeLiteral case _ of 
  TypeLiteral str -> Just str
  _ -> Nothing
 
_PropertySignature :: Prism' Node PropertySignatureRec
_PropertySignature = prism' PropertySignature case _ of 
  PropertySignature rec -> Just rec
  _ -> Nothing

_TypeReference :: Prism' Node TypeReferenceRec
_TypeReference = prism' TypeReference case _ of 
  TypeReference rec -> Just rec
  _ -> Nothing

_Parameter :: Prism' Node ParameterRec
_Parameter = prism' Parameter case _ of 
  Parameter rec -> Just rec
  _ -> Nothing

_FunctionType :: Prism' Node FunctionTypeRec
_FunctionType = prism' FunctionType case _ of 
  FunctionType rec -> Just rec
  _ -> Nothing

_InterfaceDeclaration :: Prism' Node InterfaceDeclarationRec
_InterfaceDeclaration = prism' InterfaceDeclaration case _ of 
  InterfaceDeclaration rec -> Just rec
  _ -> Nothing

_UnionType :: Prism' Node UnionTypeRec
_UnionType = prism' UnionType case _ of 
  UnionType rec -> Just rec
  _ -> Nothing

_MethodSignature :: Prism' Node MethodSignatureRec
_MethodSignature = prism' MethodSignature case _ of 
  MethodSignature rec -> Just rec
  _ -> Nothing

_ExpressionWithTypeArguments :: Prism' Node ExpressionWithTypeArgumentsRec
_ExpressionWithTypeArguments = prism' ExpressionWithTypeArguments case _ of 
  ExpressionWithTypeArguments rec -> Just rec
  _ -> Nothing

_HeritageClause :: Prism' Node HeritageClauseRec
_HeritageClause = prism' HeritageClause case _ of 
  HeritageClause rec -> Just rec
  _ -> Nothing

_TypeAliasDeclaration :: Prism' Node TypeAliasDeclarationRec
_TypeAliasDeclaration = prism' TypeAliasDeclaration case _ of 
  TypeAliasDeclaration rec -> Just rec
  _ -> Nothing

_VariableStatement :: Prism' Node VariableStatementRec
_VariableStatement = prism' VariableStatement case _ of 
  VariableStatement rec -> Just rec
  _ -> Nothing

_VariableDeclarationList :: Prism' Node VariableDeclarationListRec
_VariableDeclarationList = prism' VariableDeclarationList case _ of 
  VariableDeclarationList rec -> Just rec
  _ -> Nothing

_VariableDeclaration :: Prism' Node VariableDeclarationRec
_VariableDeclaration = prism' VariableDeclaration case _ of 
  VariableDeclaration rec -> Just rec
  _ -> Nothing

_ClassDeclaration :: Prism' Node ClassDeclarationRec
_ClassDeclaration = prism' ClassDeclaration case _ of 
  ClassDeclaration rec -> Just rec
  _ -> Nothing

_ArrayType :: Prism' Node ArrayTypeRec
_ArrayType = prism' ArrayType case _ of 
  ArrayType rec -> Just rec
  _ -> Nothing

_QualifiedName :: Prism' Node QualifiedNameRec
_QualifiedName = prism' QualifiedName case _ of 
  QualifiedName rec -> Just rec
  _ -> Nothing

_PropertyAccessExpression :: Prism' Node PropertyAccessExpressionRec
_PropertyAccessExpression = prism' PropertyAccessExpression case _ of 
  PropertyAccessExpression rec -> Just rec
  _ -> Nothing

_MethodDeclaration :: Prism' Node MethodDeclarationRec
_MethodDeclaration = prism' MethodDeclaration case _ of 
  MethodDeclaration rec -> Just rec
  _ -> Nothing

_PropertyDeclaration :: Prism' Node PropertyDeclarationRec
_PropertyDeclaration = prism' PropertyDeclaration case _ of 
  PropertyDeclaration rec -> Just rec
  _ -> Nothing

_TypeQuery :: Prism' Node TypeQueryRec
_TypeQuery = prism' TypeQuery case _ of 
  TypeQuery rec -> Just rec
  _ -> Nothing

_TypeParameter :: Prism' Node TypeParameterRec
_TypeParameter = prism' TypeParameter case _ of 
  TypeParameter rec -> Just rec
  _ -> Nothing

_FunctionDeclaration :: Prism' Node FunctionDeclarationRec
_FunctionDeclaration = prism' FunctionDeclaration case _ of 
  FunctionDeclaration rec -> Just rec
  _ -> Nothing

_IntersectionType :: Prism' Node IntersectionTypeRec
_IntersectionType = prism' IntersectionType case _ of 
  IntersectionType rec -> Just rec
  _ -> Nothing

_IndexSignature :: Prism' Node IndexSignatureRec
_IndexSignature = prism' IndexSignature case _ of 
  IndexSignature rec -> Just rec
  _ -> Nothing

_ParenthesizedType :: Prism' Node ParenthesizedTypeRec
_ParenthesizedType = prism' ParenthesizedType case _ of 
  ParenthesizedType rec -> Just rec
  _ -> Nothing

_ConstructSignature :: Prism' Node ConstructSignatureRec
_ConstructSignature = prism' ConstructSignature case _ of 
  ConstructSignature rec -> Just rec
  _ -> Nothing

_ModuleDeclaration :: Prism' Node ModuleDeclarationRec
_ModuleDeclaration = prism' ModuleDeclaration case _ of 
  ModuleDeclaration rec -> Just rec
  _ -> Nothing

_ModuleBlock :: Prism' Node ModuleBlockRec
_ModuleBlock = prism' ModuleBlock case _ of 
  ModuleBlock rec -> Just rec
  _ -> Nothing

_MappedType :: Prism' Node MappedTypeRec
_MappedType = prism' MappedType case _ of 
  MappedType rec -> Just rec
  _ -> Nothing

_BindingElement :: Prism' Node BindingElementRec
_BindingElement = prism' BindingElement case _ of 
  BindingElement rec -> Just rec
  _ -> Nothing

_TypeOperator :: Prism' Node TypeOperatorRec
_TypeOperator = prism' TypeOperator case _ of 
  TypeOperator rec -> Just rec
  _ -> Nothing

_TupleType :: Prism' Node TupleTypeRec
_TupleType = prism' TupleType case _ of 
  TupleType rec -> Just rec
  _ -> Nothing

_ObjectBindingPattern :: Prism' Node ObjectBindingPatternRec
_ObjectBindingPattern = prism' ObjectBindingPattern case _ of 
  ObjectBindingPattern rec -> Just rec
  _ -> Nothing

_NamespaceImport :: Prism' Node NamespaceImportRec
_NamespaceImport = prism' NamespaceImport case _ of 
  NamespaceImport rec -> Just rec
  _ -> Nothing

_ImportDeclaration :: Prism' Node ImportDeclarationRec
_ImportDeclaration = prism' ImportDeclaration case _ of 
  ImportDeclaration rec -> Just rec
  _ -> Nothing

_ImportClause :: Prism' Node ImportClauseRec
_ImportClause = prism' ImportClause case _ of 
  ImportClause rec -> Just rec
  _ -> Nothing

_Constructor :: Prism' Node ConstructorRec
_Constructor = prism' Constructor case _ of 
  Constructor rec -> Just rec
  _ -> Nothing

_IndexedAccessType :: Prism' Node IndexedAccessTypeRec
_IndexedAccessType = prism' IndexedAccessType case _ of 
  IndexedAccessType rec -> Just rec
  _ -> Nothing

_ConstructorType :: Prism' Node ConstructorTypeRec
_ConstructorType = prism' ConstructorType case _ of 
  ConstructorType rec -> Just rec
  _ -> Nothing

handleIndexedAccessType :: Object Foreign -> F Node
handleIndexedAccessType obj = IndexedAccessType <$> JSON.read' (unsafeToForeign obj)

handleConstructorType :: Object Foreign -> F Node
handleConstructorType obj = ado
  typeParameters <- arrayNode "typeParameters" obj 
  parameters <- arrayNode "parameters" obj 
  typeNode <- lookupOrError "type" obj 
  in ConstructorType { typeParameters, parameters, type : typeNode }

handleConstructor :: Object Foreign -> F Node
handleConstructor obj = ado
  typeParameters <- arrayNode "typeParameters" obj 
  parameters <- arrayNode "parameters" obj 
  body <- maybeNode "body" obj 
  in Constructor { typeParameters, parameters, body }

handleImportClause :: Object Foreign -> F Node
handleImportClause obj = ImportClause <$> JSON.read' (unsafeToForeign obj)

handleImportDeclaration :: Object Foreign -> F Node
handleImportDeclaration obj = ImportDeclaration <$> JSON.read' (unsafeToForeign obj)

handleNamespaceImport :: Object Foreign -> F Node
handleNamespaceImport obj = NamespaceImport <$> JSON.read' (unsafeToForeign obj)

handleObjectBindingPattern :: Object Foreign -> F Node
handleObjectBindingPattern obj = ObjectBindingPattern <$> JSON.read' (unsafeToForeign obj)

handleTupleType :: Object Foreign -> F Node
handleTupleType obj = TupleType <$> JSON.read' (unsafeToForeign obj)

handleTypeOperator :: Object Foreign -> F Node
handleTypeOperator obj = TypeOperator <$> JSON.read' (unsafeToForeign obj)

handleBindingElement :: Object Foreign -> F Node
handleBindingElement obj = BindingElement <$> JSON.read' (unsafeToForeign obj)

handleMappedType :: Object Foreign -> F Node
handleMappedType obj = ado
  typeNode <- lookupOrError "type" obj 
  typeParameters <- arrayNode "typeParameters" obj 
  questionToken <- maybeNode "questionToken" obj 
  in MappedType { type : typeNode, typeParameters, questionToken }

handleModuleBlock :: Object Foreign -> F Node
handleModuleBlock obj = ModuleBlock <$> JSON.read' (unsafeToForeign obj)

handleModuleDeclaration :: Object Foreign -> F Node
handleModuleDeclaration obj = ModuleDeclaration <$> JSON.read' (unsafeToForeign obj)

handleConstructSignature :: Object Foreign -> F Node
handleConstructSignature obj = ado
  typeNode <- lookupOrError "type" obj 
  typeParameters <- arrayNode "typeParameters" obj 
  parameters <- arrayNode "parameters" obj 
  in ConstructSignature { type : typeNode, typeParameters, parameters }

handleIndexSignature :: Object Foreign -> F Node
handleIndexSignature obj = IndexSignature <$> JSON.read' (unsafeToForeign obj)

handleParenthesizedType :: Object Foreign -> F Node
handleParenthesizedType obj = ParenthesizedType <$> JSON.read' (unsafeToForeign obj)

handleIntersectionType :: Object Foreign -> F Node
handleIntersectionType obj = IntersectionType <$> JSON.read' (unsafeToForeign obj)

handleFunctionDeclaration :: Object Foreign -> F Node
handleFunctionDeclaration obj = ado
  name <- lookupOrError "name" obj 
  typeNode <- lookupOrError "type" obj 
  typeParameters <- arrayNode "typeParameters" obj 
  parameters <- arrayNode "parameters" obj 
  asteriskToken <- maybeNode "asteriskToken" obj 
  body <- maybeNode "body" obj 
  in FunctionDeclaration { name, type : typeNode, typeParameters, parameters, body, asteriskToken }

handleTypeParameter :: Object Foreign -> F Node
handleTypeParameter obj = TypeParameter <$> JSON.read' (unsafeToForeign obj)

handleTypeQuery :: Object Foreign -> F Node
handleTypeQuery obj = TypeQuery <$> JSON.read' (unsafeToForeign obj)

handlePropertyDeclaration :: Object Foreign -> F Node
handlePropertyDeclaration obj = ado
  name <- lookupOrError "name" obj 
  typeNode <- lookupOrError "type" obj 
  questionToken <- maybeNode "questionToken" obj 
  in PropertyDeclaration { name, type : typeNode, questionToken }

handleMethodDeclaration :: Object Foreign -> F Node
handleMethodDeclaration obj = ado
  name <- lookupOrError "name" obj 
  typeNode <- lookupOrError "type" obj 
  typeParameters <- arrayNode "typeParameters" obj 
  parameters <- arrayNode "parameters" obj 
  questionToken <- maybeNode "questionToken" obj 
  asteriskToken <- maybeNode "asteriskToken" obj 
  in MethodDeclaration { name, type : typeNode, typeParameters, parameters, questionToken, asteriskToken }

handlePropertyAccessExpression :: Object Foreign -> F Node
handlePropertyAccessExpression obj = PropertyAccessExpression <$> JSON.read' (unsafeToForeign obj)

handleQualifiedName :: Object Foreign -> F Node
handleQualifiedName obj = QualifiedName <$> JSON.read' (unsafeToForeign obj)

handleArrayType :: Object Foreign -> F Node
handleArrayType obj = ArrayType <$> JSON.read' (unsafeToForeign obj)

handleClassDeclaration :: Object Foreign -> F Node
handleClassDeclaration obj = ado
  name <- lookupOrError "name" obj 
  typeParameters <- arrayNode "typeParameters" obj 
  members <- arrayNode "members" obj 
  heritageClauses <- arrayNode "heritageClauses" obj 
  in ClassDeclaration { name, typeParameters, members, heritageClauses }

handleVariableStatement :: Object Foreign -> F Node
handleVariableStatement obj = VariableStatement <$> JSON.read' (unsafeToForeign obj)

handleVariableDeclaration :: Object Foreign -> F Node
handleVariableDeclaration obj = VariableDeclaration <$> JSON.read' (unsafeToForeign obj)

handleVariableDeclarationList :: Object Foreign -> F Node
handleVariableDeclarationList obj = ado
  declarations <- arrayNode "declarations" obj 
  in VariableDeclarationList { declarations }

handleTypeAliasDeclaration :: Object Foreign -> F Node
handleTypeAliasDeclaration obj = ado
  name <- lookupOrError "name" obj 
  typeNode <- lookupOrError "type" obj 
  typeParameters <- arrayNode "typeParameters" obj 
  in TypeAliasDeclaration { name, type : typeNode, typeParameters }

handleHeritageClause :: Object Foreign -> F Node
handleHeritageClause obj = ado
  types <- arrayNode "types" obj 
  in HeritageClause { types }

handleExpressionWithTypeArguments :: Object Foreign -> F Node
handleExpressionWithTypeArguments obj = ado
  expression <- lookupOrError "expression" obj 
  typeArguments <- arrayNode "typeArguments" obj 
  in ExpressionWithTypeArguments { expression, typeArguments }

handleMethodSignature:: Object Foreign -> F Node
handleMethodSignature obj = ado
  name <- lookupOrError "name" obj 
  typeNode <- lookupOrError "type" obj 
  typeParameters <- arrayNode "typeParameters" obj 
  parameters <- arrayNode "parameters" obj 
  questionToken <- maybeNode "questionToken" obj 
  in MethodSignature { name, type : typeNode, typeParameters, parameters, questionToken }

handleUnionType :: Object Foreign -> F Node
handleUnionType obj = ado
  types <- arrayNode "types" obj 
  in UnionType { types }

handleInterfaceDeclaration :: Object Foreign -> F Node
handleInterfaceDeclaration obj = ado
  name <- lookupOrError "name" obj 
  typeParameters <- arrayNode "typeParameters" obj 
  members <- arrayNode "members" obj 
  heritageClauses <- arrayNode "heritageClauses" obj 
  in InterfaceDeclaration { name, typeParameters, members, heritageClauses }


handleFunctionType :: Object Foreign -> F Node
handleFunctionType obj = ado
  typeNode <- lookupOrError "type" obj 
  typeParameters <- arrayNode "typeParameters" obj 
  parameters <- arrayNode "parameters" obj 
  in FunctionType { type : typeNode, typeParameters, parameters }

handleStringLiteral :: Object Foreign -> F Node
handleStringLiteral obj = ado
  text <- lookupForeignOrError "text" obj >>= JSON.read'
  in StringLiteral text 

handleTypeLiteral :: Object Foreign -> F Node
handleTypeLiteral obj = ado
  members <- lookupForeignOrError "members" obj >>= JSON.read'
  in TypeLiteral members 


handleNumericLiteral :: Object Foreign -> F Node
handleNumericLiteral obj = ado
  number <- lookupForeignOrError "text" obj >>= JSON.read'
  in NumericLiteral number 

handleLiteralType :: Object Foreign -> F Node
handleLiteralType obj = ado
  literal <- lookupOrError "literal" obj
  in LiteralType literal

handleParameter :: Object Foreign -> F Node
handleParameter obj = ado
  name <- lookupOrError "name" obj
  typeNode <- lookupOrError "type" obj
  dotDotDotToken <- maybeNode "dotDotDotToken" obj
  questionToken <- maybeNode "questionToken" obj
  in Parameter { name, type : typeNode, dotDotDotToken, questionToken }
 
handleIdentifier :: Object Foreign -> F Node
handleIdentifier obj = do 
  Identifier <$> (lookupForeignOrError "escapedText" obj >>= JSON.read')
  
handleTypeReference :: Object Foreign -> F Node
handleTypeReference obj = ado
  typeName <- lookupOrError "typeName" obj 
  typeArguments <- arrayNode "typeArguments" obj 
  in TypeReference { typeName, typeArguments }

handlePropertySignature :: Object Foreign -> F Node
handlePropertySignature obj = ado
  name <- lookupOrError "name" obj 
  nodeType <- lookupOrError "type" obj 
  let 
    questionToken = (Object.lookup "questionToken" obj) >>= \v -> do
      if Foreign.isUndefined v 
        then Nothing
        else Just $ QuestionToken "?"
  in PropertySignature { name, questionToken, type : nodeType }

lookupOrError :: String -> Object Foreign -> F Node 
lookupOrError key obj = JSON.read' =<< 
  (except $ (Either.note 
    (pure $ ForeignError ("Expected to find key '" <> key <> "' but didn't") )
    (Object.lookup key obj)))

lookupForeignOrError :: String -> Object Foreign -> F Foreign 
lookupForeignOrError key obj = except
  (Either.note 
    (pure $ ForeignError ("Expected to find key '" <> key <> "' but didn't") )
    (Object.lookup key obj))

maybeNode :: String -> Object Foreign -> F (Maybe Node)
maybeNode key obj = 
  ((lookupOrError key obj) <#> Just) <|> (pure Nothing)

arrayNode :: String -> Object Foreign -> F (Array Node)
arrayNode key obj = 
  (lookupForeignOrError key obj >>= JSON.read') <|> (pure empty)

handle :: (Tuple String (Object Foreign)) -> F Node
handle (Tuple "ConstructorType" obj) = handleConstructorType obj
handle (Tuple "EndOfFileToken" obj) = except $ Right (EndOfFileToken "EOF")
handle (Tuple "FalseKeyword" obj) = except $ Right (FalseKeyword "false")
handle (Tuple "IndexedAccessType" obj) = handleIndexedAccessType obj
handle (Tuple "Constructor" obj) = handleConstructor obj
handle (Tuple "ImportClause" obj) = handleImportClause obj
handle (Tuple "ImportDeclaration" obj) = handleImportDeclaration obj
handle (Tuple "NamespaceImport" obj) = handleNamespaceImport obj
handle (Tuple "ObjectBindingPattern" obj) = handleObjectBindingPattern obj
handle (Tuple "ObjectKeyword" obj) = except $ Right $ ObjectKeyword "Object"
handle (Tuple "ReadonlyKeyword" obj) = except $ Right $ ReadonlyKeyword "readonly"
handle (Tuple "UndefinedKeyword" obj) = except $ Right $ UndefinedKeyword "Undefined"
handle (Tuple "TupleType" obj) = handleTupleType obj
handle (Tuple "TypeOperator" obj) = handleTypeOperator obj
handle (Tuple "BindingElement" obj) = handleBindingElement obj
handle (Tuple "MappedType" obj) = handleMappedType obj
handle (Tuple "ModuleBlock" obj) = handleModuleBlock obj
handle (Tuple "ModuleDeclaration" obj) = handleModuleDeclaration obj
handle (Tuple "ConstructSignature" obj) = handleConstructSignature obj
handle (Tuple "NumericLiteral" obj) = handleNumericLiteral obj
handle (Tuple "DotDotDotToken" obj) = except $ Right $ DotDotDotToken "..."
handle (Tuple "ParenthesizedType" obj) = handleParenthesizedType obj
handle (Tuple "IndexSignature" obj) = handleIndexSignature obj
handle (Tuple "StaticKeyword" obj) = except $ Right $ StaticKeyword "static"
handle (Tuple "IntersectionType" obj) = handleIntersectionType obj
handle (Tuple "FunctionDeclaration" obj) = handleFunctionDeclaration obj
handle (Tuple "TypeParameter" obj) = handleTypeParameter obj
handle (Tuple "NullKeyword" obj) = except $ Right $ NullKeyword "Null"
handle (Tuple "TypeQuery" obj) = handleTypeQuery obj
handle (Tuple "PropertyDeclaration" obj) = handlePropertyDeclaration obj
handle (Tuple "MethodDeclaration" obj) = handleMethodDeclaration obj
handle (Tuple "PropertyAccessExpression" obj) = handlePropertyAccessExpression obj
handle (Tuple "DeclareKeyword" obj) = except $ Right $ DeclareKeyword "declare"
handle (Tuple "QualifiedName" obj) = handleQualifiedName obj
handle (Tuple "ArrayType" obj) = handleArrayType obj
handle (Tuple "ClassDeclaration" obj) = handleClassDeclaration obj
handle (Tuple "VariableDeclaration" obj) = handleVariableDeclaration obj
handle (Tuple "VariableDeclarationList" obj) = handleVariableDeclarationList obj
handle (Tuple "VariableStatement" obj) = handleVariableStatement obj
handle (Tuple "TypeLiteral" obj) = handleTypeLiteral obj
handle (Tuple "TypeAliasDeclaration" obj) = handleTypeAliasDeclaration obj
handle (Tuple "HeritageClause" obj) = handleHeritageClause obj
handle (Tuple "AnyKeyword" obj) = except $ Right $ AnyKeyword "Any"
handle (Tuple "ExpressionWithTypeArguments" obj) = handleExpressionWithTypeArguments obj
handle (Tuple "MethodSignature" obj) = handleMethodSignature obj
handle (Tuple "BooleanKeyword" obj) = except $ Right $ BooleanKeyword "Boolean"
handle (Tuple "UnionType" obj) = handleUnionType obj
handle (Tuple "InterfaceDeclaration" obj) = handleInterfaceDeclaration obj
handle (Tuple "FunctionType" obj) = handleFunctionType obj
handle (Tuple "VoidKeyword" obj) = except $ Right $ VoidKeyword "Void"
handle (Tuple "ExportKeyword" obj) = except $ Right $ ExportKeyword "export"
handle (Tuple "StringKeyword" obj) = except $ Right $ StringKeyword "String"
handle (Tuple "StringLiteral" obj) = handleStringLiteral obj
handle (Tuple "LiteralType" obj) = handleLiteralType obj
handle (Tuple "NumberKeyword" obj) = except $ Right $ NumberKeyword "Number"
handle (Tuple "Parameter" obj) = handleParameter obj
handle (Tuple "QuestionToken" obj) = except $ Right $ QuestionToken "?"
handle (Tuple "TypeReference" obj) = handleTypeReference obj
handle (Tuple "PropertySignature" obj) = handlePropertySignature obj
handle (Tuple "Identifier" obj) = handleIdentifier obj
handle (Tuple tpe obj) = case (Object.lookup "escapedText" obj) of 
  Nothing -> except $ Left $ pure $ ForeignError ("Couldn't find escapedText: " <> tpe)
  Just f -> JSON.read' f <#> Name

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

typescript :: Effect (F (Array Node))
typescript =  do
  nodes <- _nodes >>= types
  pure $ traverse handle nodes

foreign import hushSpy :: forall a. a -> a 
foreign import hushSpyStringify :: forall a. a -> a 
foreign import _nodes :: Effect (Array (Object Foreign))
foreign import _kindLookup :: Object Foreign -> Effect String 
