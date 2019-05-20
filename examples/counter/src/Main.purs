module Main where

import Prelude

import Effect.Uncurried (mkEffectFn1)
import React.Basic (Component, JSX, createComponent, make)
import React.Basic.DOM.Events (capture)
import React.Basic.Native (button) as RN
import React.Basic.Native.Events (toSyntheticEvent) as RNE

main :: JSX
main = counter { label : "Increment" }

component :: Component Props
component = createComponent "Counter"

type Props = { label :: String }

counter :: Props -> JSX
counter = make component { initialState, render }
  where
    initialState = { counter: 0 }

    render self = 
      RN.button 
        { onPress: mkEffectFn1 \_ -> self.setState \s -> s { counter = s.counter + 1 }
        , title: (self.props.label <> ": " <> show self.state.counter)
        }
