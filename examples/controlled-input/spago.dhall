{ sources = [ "src/**/*.purs", "test/**/*.purs" ]
, name = "counter"
, dependencies = [ "debug", "effect", "console", "react-basic-native", "react-basic", "react-basic-classic" ]
, packages = ./packages.dhall
}
