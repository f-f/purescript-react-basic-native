module Main where

import Prelude

import React.Basic.Classic (Component, JSX, createComponent, make)
import React.Basic.Native (button) as RN
import React.Basic.Native.Events (capture_)

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
        { onPress: capture_ $ self.setState \s -> s { counter = s.counter + 1 }
        , title: (self.props.label <> ": " <> show self.state.counter)
        }
