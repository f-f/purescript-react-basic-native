module React.Basic.Native
  ( string
  , module Generated
  ) where
import React.Basic (JSX)
import React.Basic.Native.Generated as Generated
import Unsafe.Coerce (unsafeCoerce)


string :: String -> JSX
string = unsafeCoerce
