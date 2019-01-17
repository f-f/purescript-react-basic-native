module Test.Main where

import Prelude

import Effect (Effect)
import Main as Main
import Prim.Row (class Union)

type ButtonProps_required optional = 
  ( title :: String
  , onPress :: Effect Unit
  | optional
  )

type ButtonProps_optional = 
  ( color :: String
  , accessibilityLabel :: String
  , disabled :: Boolean
  , testID :: String
  )

button 
  :: ∀ attrs attrs_
   . Union attrs attrs_ ButtonProps_optional
  => Record (ButtonProps_required attrs)
  -> Unit
button props = unit

main :: Effect Unit
main = do
  let s = button { title : "title", onPress : pure unit, color : "blue" } 
  Main.main 
