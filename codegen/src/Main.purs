module Main where

import Prelude

import Control.Monad.Except (runExcept)
import Data.Array (catMaybes) as Array
import Data.Lens (preview)
import Data.Lens.Index (ix)
import Data.Maybe (Maybe)
import Data.Traversable (traverse)
import Effect (Effect)
import Effect.Aff (Aff, launchAff_)
import Effect.Class (liftEffect)
import Typescript (Node, _ClassDeclaration, _ExpressionWithTypeArguments, _HeritageClause, _InterfaceDeclaration, _Name, _TypeReference, _expression, _heritageClauses, _name, _typeArguments, _typeName, _types, hushSpyStringify, typescript)
import Util (liftEither)

nodes :: Aff (Array Node)
nodes = (typescript <#> runExcept) # liftEffect # liftEither

type BaseType = { name :: String, props :: String }
type Interfaces = { name :: String, parents :: Array String }

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
 
getInterfaces :: Aff (Array Interfaces)
getInterfaces = nodes <#> Array.catMaybes <<< map makeInterfaces
  where
    makeInterfaces node = do
      name <- preview namePrism node
      parents <- heritageNames node
      pure { name, parents }
    namePrism = 
      _InterfaceDeclaration <<<
      _name <<<
      _Name

--heritageNames :: Node -> Maybe (Array String)
heritageNames :: Node -> Maybe (Array String)
heritageNames node = 
  interfaceHeritage
  where
    interfaceHeritage = do
      clauses <- preview (_InterfaceDeclaration <<< _heritageClauses) node
      types   <- join <$> traverse (preview (_HeritageClause <<< _types)) clauses
      names   <- traverse (preview (_ExpressionWithTypeArguments <<< _expression <<< _Name)) types
      pure names
      

  
  


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












