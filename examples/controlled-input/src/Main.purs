module Main where

import Prelude

import Data.Maybe (Maybe(..), maybe)
import Effect.Uncurried (mkEffectFn1)
import React.Basic (Component, JSX, createComponent, make)
import React.Basic (fragment) as React
import React.Basic.Native (string, text, textInput) as RN

app :: JSX
app = controlledInput unit

type Props = Unit

component :: Component Props
component = createComponent "ControlledInput"

controlledInput :: Props -> JSX
controlledInput = make component
  { initialState: 
    { value: "hello world"
    , timestamp: (Nothing :: Maybe Number)
    }
  , render: \self -> 
      React.fragment 
        [ RN.textInput {
            key : "1",
            onChange: mkEffectFn1 (\event -> do
                event.persist
                self.setState _ { value = event.nativeEvent.text, timestamp = Just event.timeStamp })
 
          , value: self.state.value
        }
        , RN.text { key : "2", children : [ RN.string ("Current value = " <> show self.state.value) ] }
        , RN.text { key : "3", children : [ RN.string ("Changed at = " <> maybe "never" show self.state.timestamp) ] }
        ] 
  }

