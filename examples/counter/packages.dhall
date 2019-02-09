let mkPackage =
      https://raw.githubusercontent.com/spacchetti/spacchetti/20181209/src/mkPackage.dhall sha256:8e1c6636f8a089f972b21cde0cef4b33fa36a2e503ad4c77928aabf92d2d4ec9

let upstream =
      https://raw.githubusercontent.com/spacchetti/spacchetti/20181209/src/packages.dhall sha256:c63285af67ae74feb2f6eb67521712441928d2726ea10e2040774849ca765027

let overrides = {
  react-basic = 
    mkPackage
        [ "aff"
        , "console"
        , "effect"
        , "exceptions"
        , "functions"
        , "nullable"
        , "record"
        , "typelevel-prelude"
        , "unsafe-coerce"
        , "web-dom"
        , "web-events"
        , "web-html"
]
      "https://github.com/lumihq/purescript-react-basic.git"
      "v8.0.0"
}

let additions = {
  react-native-basic =
    mkPackage
      [ "effect", "console", "react-basic" ]
      "https://github.com/dwhitney/purescript-react-native-basic.git"
      "master"
}

in  upstream ⫽ overrides ⫽ additions
