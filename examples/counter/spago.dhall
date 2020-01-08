{ sources = [ "src/**/*.purs", "test/**/*.purs" ]
, name = "counter"
, dependencies = [ "effect", "console", "react-basic-native" ]
, packages = ./packages.dhall
}
