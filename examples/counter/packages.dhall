let upstream = ../../packages.dhall

let overrides = {=}

let additions =
  { react-basic-native = ../../spago.dhall as Location
  , react-basic-classic =
    { dependencies =
        [ "aff"
        , "nullable"
        , "react-basic"
        , "functions"
        , "effect"
        , "maybe"
        ]
    , repo = "https://github.com/lumihq/purescript-react-basic-classic.git"
    , version = "v1.0.1"
    }
  }

in  upstream // overrides // additions
