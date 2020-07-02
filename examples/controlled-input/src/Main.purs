module Main where

import Prelude

import Data.Maybe (Maybe(..), maybe)
import React.Basic.Classic (Component, JSX, createComponent, make)
import React.Basic (fragment) as React
import React.Basic.Events (merge, EventFn)
import React.Basic.Native (TextInputChangeEventData, string, text, textInput) as RN
import React.Basic.Native.Events (NativeSyntheticEvent, capture, nativeEvent, timeStamp) as RNE

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
            key : "1"
          , onChange: do
              let (eventFn1 :: EventFn (RNE.NativeSyntheticEvent RN.TextInputChangeEventData) RN.TextInputChangeEventData) = RNE.nativeEvent
              let (eventFn2 :: EventFn (RNE.NativeSyntheticEvent RN.TextInputChangeEventData) Number) = RNE.timeStamp
              RNE.capture (merge { nativeEvent: eventFn1, timeStamp : eventFn2 }) \{ nativeEvent, timeStamp} -> 
                self.setState _ { value = nativeEvent.text, timestamp = Just timeStamp }
          , value: self.state.value
        }
        , RN.text { key : "2", children : [ RN.string ("Current value = " <> show self.state.value) ] }
        , RN.text { key : "3", children : [ RN.string ("Changed at = " <> maybe "never" show self.state.timestamp) ] }
        ] 
  }


