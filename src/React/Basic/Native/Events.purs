module React.Basic.Native.Events where

import Prelude

import Effect (Effect)
import Effect.Uncurried (EffectFn1, mkEffectFn1)
import Effect.Unsafe (unsafePerformEffect)
import React.Basic.Events (EventFn, unsafeEventFn)
import Unsafe.Coerce (unsafeCoerce)

foreign import data NativeSyntheticEvent :: Type -> Type

type EventHandler e = EffectFn1 (NativeSyntheticEvent e) Unit

handler :: forall e a. EventFn (NativeSyntheticEvent e) a -> (a -> Effect Unit) -> EventHandler e
handler efn cb = mkEffectFn1 $ (unsafeCoerce efn) >>> cb

capture :: forall e a. EventFn (NativeSyntheticEvent e) a -> (a -> Effect Unit) -> EventHandler e
capture eventFn = handler (preventDefault >>> stopPropagation >>> eventFn)

capture_ :: forall e. Effect Unit -> EventHandler e
capture_ cb = capture identity \_ -> cb

timeStamp :: forall e. EventFn (NativeSyntheticEvent e) Number
timeStamp = unsafeEventFn \e -> (unsafeCoerce e).timeStamp

nativeEvent :: forall e. EventFn (NativeSyntheticEvent e) e
nativeEvent = unsafeEventFn \e -> (unsafeCoerce e).nativeEvent

preventDefault :: forall e. EventFn (NativeSyntheticEvent e) (NativeSyntheticEvent e)
preventDefault = unsafeEventFn \e -> unsafePerformEffect do
  _ <- (unsafeCoerce e).preventDefault
  pure e

stopPropagation :: forall e. EventFn (NativeSyntheticEvent e) (NativeSyntheticEvent e)
stopPropagation = unsafeEventFn \e -> unsafePerformEffect do
  _ <- (unsafeCoerce e).stopPropagation
  pure e

{-
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
-}
