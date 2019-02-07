module Main where

import Prelude hiding (top)

import Control.Alt ((<|>))
import Control.Lazy (fix)
import Control.Monad.Except (runExcept)
import Control.MonadZero (guard)
import Data.Array (catMaybes, elem, filter, length, nubEq, sort, sortWith, zip) as Array
import Data.Foldable (intercalate)
import Data.Lens (Lens', Prism', lens, preview, prism')
import Data.Lens.Index (ix)
import Data.Lens.Record (prop)
import Data.Map (Map)
import Data.Map (fromFoldable, lookup) as Map
import Data.Maybe (Maybe(..), fromMaybe, isJust)
import Data.Newtype (class Newtype, unwrap, wrap)
import Data.String (Pattern(..), Replacement(..), indexOf, replace, trim)
import Data.Symbol (SProxy(..))
import Data.Traversable (traverse)
import Data.Tuple (Tuple(..), fst, snd)
import Effect (Effect)
import Effect.Aff (Aff, error, launchAff_, throwError)
import Effect.Class (liftEffect)
import Effect.Console (log, logShow)
import Typescript (Node(..), _ClassDeclaration, _ExpressionWithTypeArguments, _HeritageClause, _InterfaceDeclaration, _Name, _TypeAliasDeclaration, _TypeParameter, _TypeReference, _expression, _heritageClauses, _members, _name, _parameters, _type, _typeArguments, _typeName, _typeParameters, _types, hushSpy, hushSpyStringify, typescript)
import Util (liftEither, liftMaybe)

type BaseType = { name :: String, props :: String }

type FunctionFieldRec = { type :: FieldType, parameters :: Array FieldType }
type ParamFieldRec = { name :: String, type :: FieldType, isOptional :: Boolean, isDotDotDot :: Boolean }

data FieldType 
  = Literal String 
  | StringLiteralField String
  | NumericLiteralField String
  | ArrayField FieldType 
  | TypeArgumentField TypeArgument
  | FunctionField FunctionFieldRec
  | TypeLiteralField (Array Field)
  | UnionTypeField (Array FieldType)
  | ParamField ParamFieldRec
  | TypeOfField String 
  | Null
  | Undefined

derive instance eqFieldType :: Eq FieldType

instance showFieldType :: Show FieldType where
  show (Literal str) = "(Literal " <> str <> ")"
  show (StringLiteralField str) = "(StringLiteralField " <> str <> ")"
  show (NumericLiteralField str) = "(NumericLiteralField " <> str <> ")"
  show (ArrayField fieldType) = "(ArrayField " <> (show fieldType) <> ")"
  show (TypeArgumentField typeArgument) = "(TypeArgumentField " <> (show typeArgument) <> ")"
  show (FunctionField functionFieldRec) = "(FunctionField " <> (show functionFieldRec) <> ")"
  show (TypeLiteralField fields) = "(TypeLiteralField " <> (show fields) <> ")"
  show (UnionTypeField fieldTypes) = "(UnionTypeField " <> (show fieldTypes) <> ")"
  show (ParamField paramFieldRec) = "(PramField " <> (show paramFieldRec) <> ")"
  show (TypeOfField str) = "(TypeOfField " <> str <> ")"
  show Null = "null"
  show Undefined = "undefined"



type TypeArgumentRec = { name :: String, typeArguments :: Array FieldType }
newtype TypeArgument = TypeArgument TypeArgumentRec

instance showTypeArgument :: Show TypeArgument where
  show (TypeArgument rec) = "(TypeArgument " <> (show rec) <> ")"

derive instance eqTypeArgument :: Eq TypeArgument

type InterfaceRec = { name :: String, fields :: Array Field, typeArguments :: Array TypeArgument, parents :: Array String }
newtype Interface = Interface InterfaceRec

data Field 
  = Field FieldRec 
  | IndexField IndexFieldRec
  | ConstructorField
  | MethodField

derive instance eqField :: Eq Field
instance fieldOrd :: Ord Field where 
  compare (Field rec1) (Field rec2) = compare rec1.name rec2.name
  compare  _ (Field _) = LT
  compare  (Field _) _ = GT
  compare  _ _ = EQ 

instance showField :: Show Field where
  show (Field rec) = "(Field " <> (show rec) <> ")"
  show (IndexField rec) = "(IndexField " <> (show rec) <> ")"
  show ConstructorField = "ConstructorField"
  show MethodField = "MethodField"

newtype ForeignData = ForeignData String 
derive instance eqForeignData :: Eq ForeignData
derive instance newtypeForeignData :: Newtype ForeignData _

_ForeignData :: Lens' ForeignData String
_ForeignData = lens (\(ForeignData str) -> str) (\_ -> ForeignData)

_props :: ∀ a r. Lens' { props :: a | r } a
_props = prop (SProxy :: SProxy "props")

_TypeArgument :: Lens' TypeArgument TypeArgumentRec
_TypeArgument = lens (\(TypeArgument rec) -> rec) (\_ -> TypeArgument)

_parents :: ∀ a r. Lens' { parents :: a | r } a
_parents = prop (SProxy :: SProxy "parents")

_fields :: ∀ a r. Lens' { fields :: a | r } a
_fields = prop (SProxy :: SProxy "fields")

_Interface :: Lens' Interface InterfaceRec
_Interface = lens (\(Interface rec) -> rec) (\_ -> Interface)

type FieldRec = { name :: String, isOptional :: Boolean, type :: FieldType }
type IndexFieldRec = { type :: FieldType, parameters :: Array FieldType }

_isOptional :: ∀ a r. Lens' { isOptional :: a | r } a
_isOptional = prop (SProxy :: SProxy "isOptional")

_isDotDotDot :: ∀ a r. Lens' { isDotDotDot :: a | r } a
_isDotDotDot = prop (SProxy :: SProxy "isDotDotDot")

_Field :: Prism' Field FieldRec
_Field = prism' Field case _ of 
  Field rec -> Just rec 
  _ -> Nothing

_IndexField :: Prism' Field IndexFieldRec
_IndexField = prism' IndexField case _ of 
  IndexField rec -> Just rec 
  _ -> Nothing

_Literal :: Prism' FieldType String
_Literal = prism' Literal case _ of 
  Literal str -> Just str 
  _ -> Nothing

_StringLiteralField :: Prism' FieldType String
_StringLiteralField = prism' StringLiteralField case _ of 
  StringLiteralField str -> Just str 
  _ -> Nothing

_NumericLiteralField :: Prism' FieldType String 
_NumericLiteralField = prism' NumericLiteralField case _ of 
  NumericLiteralField str -> Just str 
  _ -> Nothing

_ArrayField :: Prism' FieldType FieldType 
_ArrayField = prism' ArrayField case _ of 
  ArrayField fieldType -> Just fieldType 
  _ -> Nothing

_TypeArgumentField :: Prism' FieldType TypeArgument
_TypeArgumentField = prism' TypeArgumentField case _ of 
  TypeArgumentField typeArgument -> Just typeArgument 
  _ -> Nothing

_FunctionField :: Prism' FieldType FunctionFieldRec
_FunctionField = prism' FunctionField case _ of 
  FunctionField rec -> Just rec 
  _ -> Nothing

_TypeLiteralField :: Prism' FieldType (Array Field)
_TypeLiteralField = prism' TypeLiteralField case _ of 
  TypeLiteralField arr -> Just arr 
  _ -> Nothing

_UnionTypeField :: Prism' FieldType (Array FieldType)
_UnionTypeField = prism' UnionTypeField case _ of 
  UnionTypeField arr -> Just arr 
  _ -> Nothing

_ParamField :: Prism' FieldType ParamFieldRec
_ParamField = prism' ParamField case _ of 
  ParamField rec -> Just rec 
  _ -> Nothing

_TypeOfField :: Prism' FieldType String 
_TypeOfField = prism' TypeOfField case _ of 
  TypeOfField str -> Just str 
  _ -> Nothing

_Null :: Prism' FieldType Unit 
_Null = prism' (const Null) case _ of 
  Null -> Just unit 
  _ -> Nothing

_Undefined :: Prism' FieldType Unit 
_Undefined = prism' (const Undefined) case _ of 
  Undefined -> Just unit 
  _ -> Nothing


nodes :: Aff (Array Node)
nodes = (typescript <#> runExcept) # liftEffect # liftEither

writeFunction :: String -> Tuple String (Array ForeignData) -> String
writeFunction propsName (Tuple props _) = if (isJust $ indexOf (Pattern (propsName <> "_required optional = ")) props)
  then writeRequired
  else writeOptional
  where
    componentName = replace (Pattern "Props") (Replacement "") propsName
    functionName = lowerCaseFirstLetter componentName

    writeRequired = functionName <> """
  :: ∀ attrs attrs_
   . Union attrs attrs_ """ <> propsName <> """_optional
  => Record (""" <> propsName <> """_required attrs)
  -> JSX""" <> "\n" <> functionName <> """ props = element (unsafeCoerce """ <> "\"" <> componentName <> "\") props"

    writeOptional = functionName <> """
  :: ∀ attrs attrs_
   . Union attrs attrs_ """ <> propsName <> """
  => Record attrs
  -> JSX""" <> "\n" <> functionName <> """ props = element (unsafeCoerce """ <> "\"" <> componentName <> "\") props" <> 
    writeOptionalChildren

    writeOptionalChildren | (not $ Array.elem propsName noChildren) = "\n\n" <> functionName <> """_
  :: ∀ attrs attrs_
   . Union attrs attrs_ """ <> propsName <> """
  => Array JSX
  -> JSX""" <> "\n" <> functionName <> """_ children = """ <> functionName <> " { children }"
    writeOptionalChildren = ""

  

 
collectAllFields :: Map String Interface -> Interface -> Aff (Array Field)
collectAllFields interfaceMap (Interface rec) = do
  parents <- traverse (getInterface interfaceMap) rec.parents
  parentFields <- join <$> traverse (collectAllFields interfaceMap) parents
  pure $ Array.sort (rec.fields <> parentFields)
    
writeProps :: Map String FieldType -> Map String Interface -> Interface -> Aff (Tuple String (Array ForeignData))
writeProps fieldTypeMap interfaceMap interface @ (Interface rec) = do
  required <- requiredFields
  if Array.length required > 0
    then do
      rType <- requiredType
      oType <- optionalType
      let str = ((fst rType) <> "\n\n" <> (fst oType))
      let foreignData = (snd rType) <> (snd oType)
      pure $ Tuple str foreignData
    else singleType
  where
    requiredType = requiredFields >>= writeRequiredType rec.name
    optionalType = optionalFields >>= writeOptionalType rec.name
    singleType = optionalFields >>= writeSingleType rec.name
    allFields = collectAllFields interfaceMap interface
    requiredFields = allFields <#> Array.filter fieldIsRequired
    optionalFields = allFields <#> Array.filter (not fieldIsRequired) 
    
    children | (not $ Array.elem rec.name noChildren) = ["children :: Array JSX"]
    children                                          = []


    writeOptionalType name fields = (traverse (writeField fieldTypeMap interface) fields) <#> (\fieldTuples -> do
      let str = intercalate "\n" 
            [ "type " <> name <> "_optional = "
            , "  ( " <> (intercalate "\n  , " ((Array.nubEq $ map fst fieldTuples) <> children))
            , "  )"
            ]
      Tuple str (join $ map snd fieldTuples))
    
    writeRequiredType name fields = (traverse (writeField fieldTypeMap interface) fields) <#> (\fieldTuples -> do
      let str = intercalate "\n" 
            [ "type " <> name <> "_required optional = "
            , "  ( " <> (intercalate "\n  , " (Array.nubEq $ map fst fieldTuples))
            , "  | optional"
            , "  )"
            ]
      Tuple str (join $ map snd fieldTuples))
    
    writeSingleType name fields = (traverse (writeField fieldTypeMap interface) fields) <#> (\fieldTuples -> do
      let str = intercalate "\n" 
            [ "type " <> name <> " = "
            , "  ( " <> (intercalate "\n  , " ((Array.nubEq $ map fst fieldTuples) <> children))
            , "  )"
            ]
      Tuple str (join $ map snd fieldTuples))

writeForeignData :: Array ForeignData -> String
writeForeignData foreignData | Array.length foreignData == 0 = ""
writeForeignData foreignData = do 
  let full = map (\(ForeignData f) -> "foreign import data " <> f <> " :: Type") (Array.nubEq foreignData)
  intercalate "\n" full <> "\n"


fieldIsRequired :: Field -> Boolean
fieldIsRequired (Field rec) = not rec.isOptional
fieldIsRequired _ = false

writeField :: Map String FieldType -> Interface -> Field -> Aff (Tuple String (Array ForeignData))
writeField fieldTypeMap interface field @ (Field rec) = do 
  tuple <- writeFieldType fieldTypeMap interface field rec.type
  pure $ Tuple ((lowerCaseFirstLetter rec.name) <> " :: " <> (fst tuple)) (snd tuple)
  where
    fieldName | lowerCaseFirstLetter rec.name == rec.name = rec.name
    fieldName = "\"" <> rec.name <> "\""
writeField _ _ _ = pure (Tuple "" [])

writeFieldType :: Map String FieldType -> Interface -> Field -> FieldType -> Aff (Tuple String (Array ForeignData))
writeFieldType fieldTypeMap i @ (Interface interface) f @ (Field field) fieldType = do

  -- log (show fieldType) # liftEffect

  case fieldType of 
   
   (Literal str) -> pure (Tuple str [])
   
   (StringLiteralField str) -> pure (Tuple str [])
   
   (NumericLiteralField num) -> pure $ Tuple (show num) []
   
   (ArrayField fieldTpe) -> do
    tpe <- (writeFieldType fieldTypeMap i f fieldTpe)
    pure $ Tuple ("(Array " <> (fst tpe) <> ")") (snd tpe) 
   
   (TypeArgumentField (TypeArgument { name, typeArguments })) -> case name of
    "StyleProp" -> pure (Tuple "CSS" [])
    "ScrollViewProps" -> pure (Tuple "(Record ScrollViewProps)" [])
    "React.ReactElement" -> pure (Tuple "JSX" [])
    "React.ComponentType" -> do
      args <- traverse (writeFieldType fieldTypeMap i f) typeArguments
      pure (Tuple ("(Component " <> (intercalate " " (map fst args)) <> ")") (join $ map snd args))
    "Array"     -> do
                    args <- traverse (writeFieldType fieldTypeMap i f) typeArguments
                    pure (Tuple ("(Array " <> (intercalate " " (map fst args)) <> ")") (join $ map snd args))
    foreignData -> (getTypeAlias fieldTypeMap name >>= writeFieldType fieldTypeMap i f) <|> pure (Tuple name [ForeignData foreignData])
      
   
   (FunctionField rec) -> writeFunctionFieldType fieldTypeMap i f rec
   
   (TypeLiteralField fields) -> do
      tuples <- traverse (writeField fieldTypeMap i) fields
      let types = intercalate ", " (map fst tuples)
      let obj = "({ " <> types  <> " })"
      let foreignData = join $ map snd tuples
      pure $ Tuple obj foreignData 
   
   (UnionTypeField fieldTypes) -> do
      -- (log $ show fieldTypes) # liftEffect
      if unionTypeAsString fieldTypes
        then pure $ Tuple "String" []
        else case (oneIsNull fieldTypeMap i f fieldTypes) of 
          Just aff -> aff
          Nothing -> 
            case (isSingleOrArrayOfSameType fieldTypes) of 
                Nothing -> do 
                  let typeName = interface.name <> (capitalize field.name)
                  pure $ Tuple typeName [ ForeignData typeName ]
                Just name -> (do
                  alias <- getTypeAlias fieldTypeMap name
                  tpe <- writeFieldType fieldTypeMap i f alias
                  (pure $ Tuple ("(Array " <> (fst tpe) <> ")") (snd tpe) )) <|> 
                  (pure (Tuple ("(Array " <> name <> ")") []))
   
   (ParamField rec) -> 
      if rec.isOptional 
        then do
          tuple <- writeFieldType fieldTypeMap i f rec.type
          pure $ Tuple ("(Maybe " <> (fst tuple) <> ")") (snd tuple)
        else writeFieldType fieldTypeMap i f rec.type
   
   (TypeOfField str) -> pure $ Tuple str []
   
   Null -> pure $ Tuple "Null" []
   
   Undefined -> pure $ Tuple "Undefined" []

writeFieldType _ _ _ _ = pure $ Tuple "" []

-- type FunctionFieldRec = { type :: FieldType, parameters :: Array FieldType }
writeFunctionFieldType :: Map String FieldType -> Interface -> Field -> FunctionFieldRec -> Aff (Tuple String (Array ForeignData))
writeFunctionFieldType fieldTypeMap i @ (Interface interface) f @ (Field field) rec = do 
  let tupleAff = if isEventHandler (FunctionField rec)
        then pure $ Tuple "EventHandler" []
        else do
         typeTuple         <- writeFieldType fieldTypeMap i f rec.type 
         paramsTuple       <- traverse (writeFieldType fieldTypeMap i f) rec.parameters
         let types         =  intercalate " " (map fst (paramsTuple <> [typeTuple]))
         let foreignData   =  join $ ((map snd paramsTuple) <> [snd typeTuple])
         pure $ case (Array.length rec.parameters) of 
            0 -> Tuple ("(Effect " <> types <> ")") foreignData
            1 -> Tuple ("(EffectFn1 " <> types  <> ")") foreignData
            2 -> Tuple ("(EffectFn2 " <> types  <> ")") foreignData
            3 -> Tuple ("(EffectFn3 " <> types  <> ")") foreignData
            4 -> Tuple ("(EffectFn4 " <> types  <> ")") foreignData
            5 -> Tuple ("(EffectFn5 " <> types  <> ")") foreignData
            6 -> Tuple ("(EffectFn6 " <> types  <> ")") foreignData
            7 -> Tuple ("(EffectFn7 " <> types  <> ")") foreignData
            8 -> Tuple ("(EffectFn8 " <> types  <> ")") foreignData
            9 -> Tuple ("(EffectFn9 " <> types  <> ")") foreignData
            10 -> Tuple ("(EffectFn10 " <> types  <> ")") foreignData
            _  -> Tuple "FunctionField - too many params" []
  tupleAff <#> filterTypes
  where
    filterTypes (Tuple "React.ReactElement" foreignData) = Tuple "JSX" foreignData
    filterTypes (Tuple "(Effect React.ReactElement)" foreignData) = Tuple "JSX" foreignData
    filterTypes (Tuple "(Effect JSX.Element)" foreignData) = Tuple "JSX" foreignData
    filterTypes (Tuple "JSX.Element" foreignData) = Tuple "JSX" foreignData
    filterTypes (Tuple "(Effect JSX.Element)" foreignData) = Tuple "JSX" foreignData
    filterTypes (Tuple "ScrollViewProps" foreignData) = Tuple "(Record ScrollViewProps)" foreignData
    filterTypes tuple = tuple

writeFunctionFieldType _ _ _ _ = pure $ Tuple "" []

unionTypeAsString :: Array FieldType -> Boolean
unionTypeAsString fieldTypes = isJust $ traverse (preview (_StringLiteralField)) fieldTypes 

oneIsNull :: Map String FieldType -> Interface -> Field -> Array FieldType -> Maybe (Aff (Tuple String (Array ForeignData)))
oneIsNull fieldTypeMap i f fieldTypes | Array.length fieldTypes == 2 = secondIsNull <|> firstIsNull
  where
    firstIsNull = ado 
      _         <- preview ((ix 0) <<< _Null) fieldTypes
      fieldType <- preview (ix 1) fieldTypes
      in writeFieldType fieldTypeMap i f fieldType
    secondIsNull = ado
      fieldType <- preview (ix 0) fieldTypes
      _         <- preview ((ix 1) <<< _Null) fieldTypes
      in writeFieldType fieldTypeMap i f fieldType
oneIsNull _ _ _ _ = Nothing

isJSX :: Array FieldType -> Boolean
isJSX fieldTypes | Array.length fieldTypes == 2 = (firstIsReactElement && secondIsNull) || (firstIsNull && secondIsReactElement)
  where
    firstIsReactElement = (Just "React.ReactElement") == (preview ((ix 0) <<< _TypeArgumentField <<< _TypeArgument <<< _name) fieldTypes)
    secondIsReactElement = (Just "React.ReactElement") == (preview ((ix 1) <<< _TypeArgumentField <<< _TypeArgument <<< _name) fieldTypes)
    firstIsNull = Just unit == (preview ((ix 0) <<< _Null) fieldTypes)
    secondIsNull = Just unit == (preview ((ix 1) <<< _Null) fieldTypes)
isJSX _ = false

isSingleOrArrayOfSameType :: Array FieldType -> Maybe String
isSingleOrArrayOfSameType fieldTypes | Array.length fieldTypes == 2 = typeThenArray <|> arrayThenType
  where
    aTypePrism = _TypeArgumentField <<< _TypeArgument <<< _name
    arrayTypePrism  = _ArrayField <<< _TypeArgumentField <<< _TypeArgument <<< _name
    typeThenArray = do
      n1 <- preview ((ix 0) <<< aTypePrism) fieldTypes
      n2 <- preview ((ix 1) <<< arrayTypePrism) fieldTypes
      guard (n1 == n2)
      Just n1
    arrayThenType = do
      n1 <- preview ((ix 0) <<< arrayTypePrism) fieldTypes
      n2 <- preview ((ix 1) <<< aTypePrism) fieldTypes
      guard (n1 == n2)
      Just n1
isSingleOrArrayOfSameType _ = Nothing 

isEventHandler :: FieldType -> Boolean
isEventHandler fieldType = do
  isUnit && paramIsNativeSynthenticEvent
  where
    isUnit = Just "Unit" == (preview unitTypePrism fieldType)
    paramIsNativeSynthenticEvent = eventHandler
    -- eventHandler = (isJust $ preview eventTypePrism fieldType) || ((Just "info") == (preview eventTypeTypeLiteral fieldType)) || ((Just "event") == (preview eventTypeTypeLiteral fieldType)) || emptyParams
    eventHandler = (isJust $ preview eventTypePrism fieldType) || ((Just "event") == (preview eventTypeTypeLiteral fieldType)) || emptyParams
    emptyParams = Just true == ((preview paramsPrism fieldType) <#> (\params -> Array.length params == 0))
    eventTypePrism = 
      _FunctionField <<< 
      _parameters <<< 
      (ix 0) <<< 
      _ParamField <<< 
      _type <<< 
      _TypeArgumentField <<< 
      _TypeArgument <<< 
      _name
    eventTypeTypeLiteral = 
      _FunctionField <<<
      _parameters <<<
      (ix 0) <<<
      _ParamField <<<
      _name
    paramsPrism = 
      _FunctionField <<< 
      _parameters 
    unitTypePrism = 
      _FunctionField <<<
      _type <<<
      _Literal 

getBaseTypes :: Aff (Array BaseType)
getBaseTypes = 
  nodes <#> (Array.sortWith (\{name} -> name)) <<< Array.catMaybes <<< map makeBaseType
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


getInterfaceMap :: Aff (Map String Interface)
getInterfaceMap = do
  interfaces <- getInterfaces <#> map snd
  let tuples = map (\i @ (Interface rec) -> Tuple rec.name i) interfaces
  pure $ Map.fromFoldable tuples 
  where
    getInterfaces :: Aff (Array (Tuple Node Interface))
    getInterfaces = nodes <#> (\ns -> Array.catMaybes (map makeInterfaces ns))
      where
        makeInterfaces :: Node -> Maybe (Tuple Node Interface)
        makeInterfaces node = ado
          name            <- preview namePrism node
          typeArguments   <- preview (_InterfaceDeclaration <<< _typeParameters) node 
                                      >>= (traverse (preview (_TypeParameter <<< _name <<< _Name)))
                                      <#> (map (\n -> TypeArgument { name : n, typeArguments : [] }))
          fields          <- preview (_InterfaceDeclaration <<< _members) node >>= buildFields
          parents         <- Just $ heritageNames node
          in Tuple node (Interface { name, fields, typeArguments, parents })
          
        namePrism = 
          _InterfaceDeclaration <<<
          _name <<<
          _Name


-- type TypeAliasDeclarationRec = { name :: Node, typeParameters :: Array Node, type :: Node }

getFieldTypeMap :: Aff (Map String FieldType)
getFieldTypeMap = do 
  tuples <- getTypeAliases
  pure $ Map.fromFoldable tuples 
  where
    getTypeAliases = nodes <#> 
      (\ns -> Array.catMaybes (map (\(Tuple name node) -> 
        (buildFieldType node) <#> Tuple name) 
          (Array.catMaybes $ map findTypeAliases ns)))
   
    findTypeAliases :: Node -> Maybe (Tuple String Node)
    findTypeAliases node = ado
      n     <- (preview _TypeAliasDeclaration node) <#> const node
      name  <- preview (_TypeAliasDeclaration <<< _name <<< _Name) node 
      in Tuple name n

getTypeAlias :: Map String FieldType -> String -> Aff FieldType 
getTypeAlias fieldTypeMap name = do
  let alias = Map.lookup name fieldTypeMap
  liftMaybe "couldn't build node into field type" alias
      

getInterface :: (Map String Interface) -> String -> Aff Interface
getInterface interfaceMap interfaceName = do
  let interface = Map.lookup interfaceName interfaceMap
  liftMaybe ("didn't find interface " <> interfaceName) interface


buildFields :: Array Node -> Maybe (Array Field)
buildFields = fix \_ -> traverse buildField

buildField :: Node -> Maybe Field
buildField (ConstructSignature _) = Nothing 
buildField (MethodSignature _) = Nothing 
buildField (PropertySignature rec) = do 
  name <- getName rec.name
  let isOptional = isJust rec.questionToken
  fieldType <- buildFieldType rec.type
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
  name            <- getName rec.name
  fieldType       <- buildFieldType rec.type
  let isOptional  =  isJust rec.questionToken
  let isDotDotDot =  isJust rec.dotDotDotToken
  pure $ ParamField { name, isOptional, isDotDotDot, type : fieldType }
buildFieldType (FunctionType rec) = (buildFieldType rec.type) >>= \fieldType -> do
  parameters <- traverse buildFieldType rec.parameters
  pure $ FunctionField { parameters, type : fieldType }
buildFieldType node = do
  -- let s = hushSpy "buildFieldType got a node I don't know"
  -- let s1 = hushSpy node
  Nothing


heritageNames :: Node -> Array String
heritageNames node = 
  interfaceHeritage
  where
    interfaceHeritage = fromMaybe [] do
      clauses   <- preview (_InterfaceDeclaration <<< _heritageClauses) node
      types     <- join <$> traverse (preview (_HeritageClause <<< _types)) clauses
      traverse (preview (_ExpressionWithTypeArguments <<< _expression <<< _Name)) types

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

listBaseTypes :: Map String Interface -> Aff Unit
listBaseTypes interfaceMap = unit <$ do
  types <- getBaseTypes -- <#> map (\{name} -> name)
  -- having some issues with the components listed below. I suspect there is an error in `getInterface` when there is a method in the interface. also ModalProps isn't an interface, it's a type
  let filtered = Array.filter (\{ name } -> name /= "ImageBackgroundComponent" && name /= "Modal" && name /= "SnapshotViewIOSComponent" && name /= "SwipeableListView") types
  traverse (\t -> (liftEffect $ logShow t) >>= (const $ logProps t) ) filtered 
  where
    logProps :: BaseType -> Aff Unit
    logProps { props } = (liftEffect <<< log) =<< ((append "  ") <$> (listProps interfaceMap props))

listProps :: Map String Interface -> String -> Aff String
listProps interfaceMap propsName = do
  (Interface interface) <- getInterface interfaceMap propsName 
  pure (interface.name <> " " <> (intercalate " " interface.parents))

main :: Effect Unit
main = launchAff_ do
  interfaceMap <- getInterfaceMap
  fieldTypeMap <- getFieldTypeMap
  -- logOne fieldTypeMap interfaceMap "WebViewProps" 
  logAll fieldTypeMap interfaceMap

noChildren :: Array String
noChildren = ["ButtonProps"]

logOne :: Map String FieldType -> Map String Interface -> String -> Aff Unit
logOne fieldTypeMap interfaceMap name = do
  interface <- getInterface interfaceMap name
  tuple     <- writeProps fieldTypeMap interfaceMap interface
  let fn = writeFunction name tuple
  let foreignData = Array.filter (\(ForeignData f) -> f /= "ScrollViewProps" && f /= "React.ReactElement" && f /= "JSX.Element") (map (wrap <<< trim <<< unwrap) (snd tuple))
  let types = fst tuple
  (log $ writeForeignData foreignData) # liftEffect
  (log types) # liftEffect
  (log ("\n" <> fn)) # liftEffect

top :: String
top = """-- | ----------------------------------------
-- | THIS FILE IS GENERATED -- DO NOT EDIT IT
-- | ----------------------------------------

module React.Basic.Native.Generated where

import Prelude

import Data.Maybe (Maybe)
import Effect (Effect)
import Effect.Uncurried (EffectFn1, EffectFn2, EffectFn3, EffectFn4)
import Prim.Row (class Union)
import React.Basic (Component, JSX, element)
import React.Basic.DOM.Internal (CSS)
import React.Basic.Events (EventHandler)
import Unsafe.Coerce (unsafeCoerce)

foreign import data Any :: Type
foreign import data AccessibilityTrait :: Type
foreign import data DataDetectorTypes :: Type

"""

 
logAll :: Map String FieldType -> Map String Interface -> Aff Unit
logAll fieldTypeMap interfaceMap = do
  btypes        <- getBaseTypes <#> map \{props} -> props
  let interfaces = Array.filter (\name -> name /= "ImageBackgroundProps" && name /= "ImageBackgroundComponent" && name /= "Modal"  && name /= "ModalProps" && name /= "SnapshotViewIOSComponent" && name /= "SnapshotViewIOSProps" && name /= "SwipeableListView" && name /= "SwipeableListViewProps") btypes
  tuples            <- (traverse (getInterface interfaceMap) interfaces) >>= traverse (writeProps fieldTypeMap interfaceMap)
  let foreignData   =  Array.filter (\(ForeignData f) -> f /= "ScrollViewProps" && f /= "React.ReactElement" && f /= "JSX.Element") (join $ map snd tuples)
  let types         =  Array.nubEq $ map fst tuples 
  let fns           =  Array.nubEq $ map (\(Tuple name tuple) -> writeFunction name tuple) (Array.zip interfaces tuples)
  -- liftEffect $ log $ show $ Array.length interfaces 
  -- liftEffect $ log $ show $ Array.length tuples 
  -- liftEffect $ log $ show $ Array.length fns 
  -- let together      = join (Array.zip types fns <#> \(Tuple t f) -> [t, f])
  (log top) # liftEffect
  (log $ writeForeignData foreignData) # liftEffect
  (log $ intercalate "\n\n" types) # liftEffect
  (log $ intercalate "\n\n" fns) # liftEffect

foreign import endsWith :: String -> String -> Boolean
foreign import capitalize :: String -> String
foreign import lowerCaseFirstLetter :: String -> String




