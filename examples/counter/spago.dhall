{ sources = [ "src/**/*.purs", "test/**/*.purs" ]
, name = "counter"
, dependencies = [ "effect", "console", "react-basic-native", "react-basic", "react-basic-classic" ]
, packages = ./packages.dhall
}
