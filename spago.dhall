{ sources =
    [ "src/**/*.purs", "test/**/*.purs" ]
, name =
    "react-basic-native"
, dependencies =
    [ "effect", "foreign-object", "js-date", "react-basic", "undefinable" ]
, packages =
    ./packages.dhall
}
