# Codegen


## Decription

This code will codegen the PureScript props and functions for the major React Native components. It does this by parsing the typescript (type declaration)[https://github.com/DefinitelyTyped/DefinitelyTyped/blob/master/types/react-native/index.d.ts] file for React Native. For now this is a bit adhoc. If you look through the file, you'll notice that each component extends `React.Component<Props>`, so the codegen code looks for thesee classes and then finds the corresponding `Props` interface, which is then turned into PureScript code.

It works, but some dog-fooding is needed, which I'll be undertaking over the next few months


## Building / Running

* `npm install`
* `npm run build`
* `npm run codegen`

