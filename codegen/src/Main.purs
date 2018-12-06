module Main where

import Prelude

import Control.Lazy (fix)
import Control.Monad.Except (runExcept)
import Data.Array (catMaybes, length, zip) as Array
import Data.Lens (preview)
import Data.Lens.Index (ix)
import Data.Maybe (Maybe(..), isJust)
import Data.Traversable (traverse)
import Data.Tuple (Tuple(..))
import Effect (Effect)
import Effect.Aff (Aff, error, launchAff_, throwError)
import Effect.Class (liftEffect)
import Typescript (Node(..), _ClassDeclaration, _ExpressionWithTypeArguments, _HeritageClause, _InterfaceDeclaration, _Name, _TypeParameter, _TypeReference, _expression, _heritageClauses, _members, _name, _typeArguments, _typeName, _typeParameters, _types, hushSpy, hushSpyStringify, typescript)
import Util (liftEither)

nodes :: Aff (Array Node)
nodes = (typescript <#> runExcept) # liftEffect # liftEither

type BaseType = { name :: String, props :: String }

data TypeArgument = TypeArgument { name :: String, typeArguments :: Array FieldType }

data Interface = Interface { name :: String, fields :: Array Field, typeArguments :: Array TypeArgument, parents :: Array Interface }

data FieldType 
  = Literal String 
  | StringLiteralField String
  | NumericLiteralField String
  | ArrayField FieldType 
  | TypeArgumentField TypeArgument
  | FunctionField { typeParameters :: Array TypeArgument, type :: FieldType, parameters :: Array FieldType }
  | TypeLiteralField (Array Field)
  | UnionTypeField (Array FieldType)
  | ParamField { name :: String, type :: FieldType, isOptional :: Boolean, isDotDotDot :: Boolean }
  | TypeOfField String 
  | Null
  | Undefined

--type FieldParam = { name :: String, type :: FieldType, isOptional :: Boolean, isDotDotDot :: Boolean }

data Field 
  = Field { name :: String, isOptional :: Boolean, type :: FieldType }
  | IndexField { type :: FieldType, parameters :: Array FieldType }
  | ConstructorField
  | MethodField


getBaseTypes :: Aff (Array BaseType)
getBaseTypes = nodes <#> Array.catMaybes <<< map makeBaseType 
  where
    _head = ix 0
    makeBaseType node = do
      name <- preview classNamePrism node
      props <- preview propsPrism node
      pure { name, props } 
    classNamePrism = _ClassDeclaration <<< _name <<< _Name
    propsPrism = 
      _ClassDeclaration <<<
      _heritageClauses <<<
      _head <<<
      _HeritageClause <<<
      _types <<<
      _head <<<
      _ExpressionWithTypeArguments <<<
      _typeArguments <<<
      _head <<< 
      _TypeReference <<<
      _typeName <<<
      _Name
 
getInterfaces :: Aff (Array Interface)
getInterfaces = nodes <#> Array.catMaybes <<< map makeInterfaces
  where
    makeInterfaces node = do
      name            <- preview namePrism node
      parents         <- heritageNames node
      typeArguments   <- preview (_InterfaceDeclaration <<< _typeParameters) node 
                          >>= (traverse (preview (_TypeParameter <<< _name <<< _Name)))
                          <#> (map (\n -> TypeArgument { name : n, typeArguments : [] }))
      fields          <- preview (_InterfaceDeclaration <<< _members) node >>= buildFields
      pure $ Interface { name, fields, typeArguments, parents }
    namePrism = 
      _InterfaceDeclaration <<<
      _name <<<
      _Name


buildFields :: Array Node -> Maybe (Array Field)
buildFields = fix \_ -> traverse buildField

buildField :: Node -> Maybe Field
buildField (ConstructSignature _) = Nothing 
buildField (MethodSignature _) = Nothing 
buildField (PropertySignature rec) = do 
  name <- getName rec.name
  let isOptional = isJust rec.questionToken
  let fieldType = case (buildFieldType rec.type) of 
        Nothing -> do
          let s = hushSpy rec.type
          let s1 = hushSpyStringify rec.type
          Literal "Dunno"
        Just a -> a
  pure $ Field { name, isOptional, type : fieldType }
buildField (IndexSignature rec) = do
  typeField   <- buildFieldType rec.type
  parameters  <- traverse buildFieldType rec.parameters
  pure $ IndexField { parameters, type : typeField }

buildField node = do
  let s = hushSpy "buildField got a node I don't know"
  let s1 = hushSpy node
  Nothing

buildFieldType :: Node -> Maybe (FieldType) 
buildFieldType (AnyKeyword _) = Just $ Literal "Any" 
buildFieldType (ArrayType { elementType }) = ArrayField <$> (buildFieldType elementType)
buildFieldType (BooleanKeyword _) = Just $ Literal "Boolean" 
buildFieldType (LiteralType node) = buildFieldType node
buildFieldType (NumberKeyword _) = Just $ Literal "Number"
buildFieldType (ObjectKeyword _) = Just $ Literal "Object Foreign" 
buildFieldType (StringKeyword _) = Just $ Literal "String" 
buildFieldType (NullKeyword _) = Just Null
buildFieldType (UndefinedKeyword _) = Just Undefined
buildFieldType (StringLiteral str) = Just $ StringLiteralField str
buildFieldType (NumericLiteral str) = Just $ NumericLiteralField str
buildFieldType (TypeLiteral fields) = TypeLiteralField <$> buildFields fields
buildFieldType (TypeOperator rec ) = buildFieldType rec.type 
buildFieldType (VoidKeyword _) = Just $ Literal "Unit" 
buildFieldType (TypeQuery { exprName }) = TypeOfField <$> getName exprName
buildFieldType (UnionType { types }) = UnionTypeField <$> (traverse buildFieldType types)
buildFieldType (ParenthesizedType rec) = UnionTypeField <$> (buildFieldType rec.type <#> \f -> [f])
buildFieldType node @ (TypeReference _) = TypeArgumentField <$> buildTypeArguments node

buildFieldType (Parameter rec) = do 
  name <- getName rec.name
  fieldType <- buildFieldType rec.type
  let isOptional = isJust rec.questionToken
  let isDotDotDot = isJust rec.dotDotDotToken
  pure $ ParamField { name, isOptional, isDotDotDot, type : fieldType }

buildFieldType (FunctionType rec) = (buildFieldType rec.type) >>= \fieldType -> do
  typeParameters <- handleTypeParameters rec.typeParameters
  parameters <- traverse buildFieldType rec.parameters
  pure $ FunctionField { typeParameters, parameters, type : fieldType }
  where
    handleTypeParameters ns = Just []

buildFieldType node = do
  let s = hushSpy "buildFieldType got a node I don't know"
  let s1 = hushSpy node
  Nothing

heritageNames :: Node -> Maybe (Array Interface)
heritageNames node = 
  interfaceHeritage
  where
    interfaceHeritage = do
      clauses   <- preview (_InterfaceDeclaration <<< _heritageClauses) node
      types     <- join <$> traverse (preview (_HeritageClause <<< _types)) clauses
      names     <- traverse (preview (_ExpressionWithTypeArguments <<< _expression <<< _Name)) types
      argNodes  <- traverse (preview (_ExpressionWithTypeArguments <<< _typeArguments)) types
      let args = Array.catMaybes <$> map (map buildTypeArguments) argNodes
      let nameAndArgs = Array.zip names args
      pure $ map (\(Tuple name typeArguments) -> Interface { name, typeArguments, parents : [], fields : [] }) nameAndArgs

buildTypeArguments :: Node -> Maybe TypeArgument
buildTypeArguments (TypeReference { typeName, typeArguments }) | Array.length typeArguments == 0 = do
  name <- getName typeName
  pure $ TypeArgument { name, typeArguments : [] }
buildTypeArguments (TypeReference rec ) = do
  typeArguments <- traverse buildFieldType rec.typeArguments 
  name <- getName rec.typeName
  pure $ TypeArgument { name, typeArguments }
buildTypeArguments _ = Nothing

getName :: Node -> Maybe String
getName (Name name) = Just name
getName (QualifiedName { left, right }) = do
  l <- getName left
  r <- getName right
  pure (l <> "." <> r)
getName _ = Nothing

doError :: forall a. String -> Node -> Aff a
doError msg node = do
  let s = hushSpyStringify node
  throwError $ error msg
  
main :: Effect Unit
main = launchAff_ do 
  types <- getBaseTypes
  interfaces <- getInterfaces
  let s = hushSpyStringify interfaces 
  pure unit

type R r =  (foo :: String | r)
type S r =  (bar :: Int | (R r))
type T =    (baz :: Number | (S ()))

blah :: Record T
blah = { foo : "foo", bar : 1, baz : 1.0 }












