module Main where

import Prelude

import Data.Maybe (Maybe(..), fromMaybe, maybe)
import Data.Nullable (toMaybe)
import React.Basic (Component, JSX, createComponent, make)
import React.Basic (fragment) as React
import React.Basic.DOM.Events (capture, timeStamp)
import React.Basic.Events (EventFn, SyntheticEvent, merge, unsafeEventFn)
import React.Basic.Native (string, text, textInput) as RN
import Unsafe.Coerce (unsafeCoerce)

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
            onChange: 
              capture (merge { getText, timeStamp }) 
                \event ->
                  self.setState _ 
                    { value = fromMaybe "" event.getText
                    , timestamp = Just event.timeStamp 
                    } 
          , value: self.state.value
        }
        , RN.text { key : "2", children : [ RN.string ("Current value = " <> show self.state.value) ] }
        , RN.text { key : "3", children : [ RN.string ("Changed at = " <> maybe "never" show self.state.timestamp) ] }
        ] 
  }

getText :: EventFn SyntheticEvent (Maybe String)
getText = unsafeEventFn \e -> 
  toMaybe (unsafeCoerce e).nativeEvent.text
