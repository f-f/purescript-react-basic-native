{ sources = [ "src/**/*.purs", "test/**/*.purs" ]
, name = "counter"
, dependencies = [ "debug", "effect", "console", "react-basic-native" ]
, packages = ./packages.dhall
}
