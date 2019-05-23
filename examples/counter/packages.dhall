let mkPackage =
      https://raw.githubusercontent.com/purescript/package-sets/psc-0.12.5-20190519/src/mkPackage.dhall sha256:0b197efa1d397ace6eb46b243ff2d73a3da5638d8d0ac8473e8e4a8fc528cf57

let upstream =
      https://raw.githubusercontent.com/purescript/package-sets/psc-0.12.5-20190519/src/packages.dhall sha256:a34c8cdec3e6ba4cd0b0fb9f213bfabe74a093583586a22c66719f020e90bbf5

let overrides = {=}

let additions =
      { react-basic-native =
          mkPackage (../../spago.dhall).dependencies "../../" "master"
      , undefinable =
          mkPackage
          [ "functions", "maybe" ]
          "https://github.com/ethul/purescript-undefinable.git"
          "v4.0.0"
      }

in  upstream // overrides // additions
