module Main where

import Prelude

import Data.Maybe (Maybe(..), fromMaybe, maybe)
import Data.Nullable (toMaybe)
import Debug.Trace (spy)
import Effect (Effect)
import Effect.Uncurried (mkEffectFn1, EffectFn1)
import React.Basic (Component, JSX, createComponent, make)
import React.Basic (fragment) as React
import React.Basic.DOM.Events (capture, timeStamp)
import React.Basic.Events (EventFn(..), SyntheticEvent, merge, unsafeEventFn)
import React.Basic.Native (string, text, textInput, TextInputChangeEventData) as RN
import React.Basic.Native.Events (NativeSyntheticEvent)
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
            onChange: mkEffectFn1 (\event -> do
                event.persist
                self.setState _ { value = event.nativeEvent.text, timestamp = Just event.timeStamp })
                -- self.setState _ { value = value, timestamp = Nothing })
                --let _ = spy "e" e
                --self.setState _ state { value = e.nativeValue.text, target = Nothing }
--              capture (merge { getText, timeStamp }) 
--                \event ->
--                  self.setState _ 
--                    { value = fromMaybe "" event.getText
--                    
--                    } 
          , value: self.state.value
        }
        , RN.text { key : "2", children : [ RN.string ("Current value = " <> show self.state.value) ] }
        , RN.text { key : "3", children : [ RN.string ("Changed at = " <> maybe "never" show self.state.timestamp) ] }
        ] 
  }

type NativeEventHandler e = EffectFn1 (NativeSyntheticEvent e) Unit

getText :: EventFn (NativeSyntheticEvent RN.TextInputChangeEventData) String
getText = unsafeEventFn \e -> 
  (unsafeCoerce e).nativeEvent.text


mkNativeFn :: forall e. (e -> Effect Unit) -> EffectFn1 (NativeSyntheticEvent e) Unit
mkNativeFn fn = mkEffectFn1 (unsafeCoerce fn)

toSyntheticEvent :: forall e. EventFn (NativeSyntheticEvent e) _ -> EventFn SyntheticEvent e
toSyntheticEvent = unsafeCoerce
