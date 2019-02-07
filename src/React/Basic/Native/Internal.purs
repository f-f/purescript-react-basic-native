module React.Basic.Native.Internal where

import React.Basic (JSX)

foreign import unsafeCreateNativeElement :: ∀ props. String -> { | props } -> JSX
