# purescript-react-basic-native

This library builds off [purescript-react-basic](https://github.com/lumihq/purescript-react-basic) to enable [React Native (0.60 at the time of writing)](https://facebook.github.io/react-native/). 99% of the library is codegen'd from the React Native [typescript type declaration](https://github.com/DefinitelyTyped/DefinitelyTyped/blob/master/types/react-native/index.d.ts).  Look in the `codegen` directory for the code that does this. We've recreated the `counter` and `controlled-input` examples from purescript-react-basic in the `examples` directory. They are nearly identical except for events, which are discussed below.

## Events

The event types in React Native are a little more rich than they are in React, so we've created a new event type called `NativeSyntheticEvent a`, where `a` is the type of the `nativeEvent` field. In general this is nice, but requires some additional type annotations when used with the `merge` function. This is illustrated in the `controlled-input` example.  Correspoinding functions from the `React.Basic.DOM.Events` module are in the `React.Basic.Native.Events` module.

## Setup

* `npm install spago expo-cli --global`
* `spago install`
* `spago build`

## NixOS

* `nix-shell` - sets up PureScript/spago tools (but not JS/npm tools)
* `npm install expo-cli --global`
* `spago install`
* `spago build`

## Examples

* [Counter](examples/counter/README.md)
* [Controlled Input](examples/controlled-input/README.md)
