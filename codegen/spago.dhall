{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name =
    "codegen"

, dependencies =
    [ "aff",
      "console",
      "debug",
      "effect",
      "generics-rep",
      "prelude",
      "profunctor-lenses",
      "psci-support",
      "simple-json",
      "strings"
    ]

, packages =
    ./packages.dhall
}
