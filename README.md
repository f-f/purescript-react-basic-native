# purescript-react-basic-native

This library builds off (purescript-react-basic)[https://github.com/lumihq/purescript-react-basic] to enable (React Native (0.57 at the time of writing))[https://facebook.github.io/react-native/]. 99% of the library is codegen'd from the React Native (typescript type declaration)[https://github.com/DefinitelyTyped/DefinitelyTyped/blob/master/types/react-native/index.d.ts].  Look in the `codegen` directory for the code that does this. We've recreated the `counter` and `controlled-input` examples from purescript-react-basic in the `examples` directory. They are nearly identical except for events, which is discussed below.

## Events

The event types in React Native are a little more rich than they are in React, so we've created a new event type called `NativeSyntheticEvent a`, which `a` is the type of the `nativeEvent` field. In general this is nice, but requires some additional type annotations when used with he `merge` function. This is illustrated in the `controlled-input` example. 
