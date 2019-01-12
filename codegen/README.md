# Codegen


## Intro

The intent of this project is to generate the props types in the same way `purescript-react-basic` does in its [Generated.purs](https://github.com/lumihq/purescript-react-basic/blob/v6.2.0/src/React/Basic/DOM/Generated.purs). The Typescript type declaration file for React Native ought to have all of the information necessary. This project uses Typescript's parser, which generates an AST in JSON, and converts that into Purescript types which can intern generate the output for the props types 

## Running the project

This project uses (purescript-spago)[https://github.com/spacchetti/spago] to build and manage dependencies.

### Setup 

`npm run setup` will install the Javascript/Typescript dependencies along with purescript-spago and all of the spago (purescript) dependencies. 

### Build

You can build the project with `spago build` if spago is on your path, or `npx spago build` if not. 

### Testing/Running 

`purescript-spago` only runs tests, so you've got three options:

* `spago test` if spago is on your path
* `npx spago test` if spago is on *not* your path
* `npm run test` - a script included in package.json
