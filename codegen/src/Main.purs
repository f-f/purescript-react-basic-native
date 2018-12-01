module Main where

import Prelude

import Control.Monad.Except (runExcept)
import Data.Array (filter) as Array
import Data.Either (Either(..))
import Effect (Effect)
import Effect.Aff (Aff, error, launchAff_, throwError)
import Effect.Class (liftEffect)
import Typescript (Node(..), hushSpyStringify, typescript)

getClasses :: Aff (Array Node)
getClasses = filterNodes isClass 
 
isClass :: Node -> Boolean
isClass (ClassDeclaration _) = true
isClass _ = false

nodes :: Aff (Array Node)
nodes = 
  (typescript <#> runExcept) # liftEffect # liftEither

filterNodes :: (Node -> Boolean) -> Aff (Array Node)
filterNodes predicate = do
  ns <- nodes
  pure $ Array.filter predicate ns


liftEither :: forall e a. Show e => Aff (Either e a) -> Aff a
liftEither aff = do
  either <- aff
  case either of 
    Left bad  -> throwError $ error (show bad)
    Right value -> pure value

main :: Effect Unit
main = launchAff_ do 
  classes <- getClasses 
  let s = hushSpyStringify classes
  pure unit
