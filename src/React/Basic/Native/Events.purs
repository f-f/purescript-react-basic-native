module React.Basic.Native.Events where

import Prelude

import Effect (Effect)

type NativeSyntheticEvent e = {
  nativeEvent :: e 
, currentTarget :: Number 
, target :: Number 
, bubbles :: Boolean
, cancelable :: Boolean
, defaultPrevented :: Boolean
, eventPhase :: Number
, isTrusted :: Boolean
, preventDefault :: Effect Unit
, isDefaultPrevented :: Effect Boolean
, stopPropagation :: Effect Unit
, isPropagationStopped :: Effect Boolean
, persist :: Effect Unit
, timeStamp :: Number
, type :: String
}
