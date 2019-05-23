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

currentTarget :: forall e. EventFn (NativeSyntheticEvent e) Number
currentTarget = unsafeEventFn \e -> (unsafeCoerce e).currentTarget

target :: forall e. EventFn (NativeSyntheticEvent e) Number
target = unsafeEventFn \e -> (unsafeCoerce e).target

bubbles :: forall e. EventFn (NativeSyntheticEvent e) Boolean 
bubbles = unsafeEventFn \e -> (unsafeCoerce e).bubbles

cancelable :: forall e. EventFn (NativeSyntheticEvent e) Boolean 
cancelable = unsafeEventFn \e -> (unsafeCoerce e).cancelable

defaultPrevented :: forall e. EventFn (NativeSyntheticEvent e) Boolean 
defaultPrevented = unsafeEventFn \e -> (unsafeCoerce e).defaultPrevented

eventPhase :: forall e. EventFn (NativeSyntheticEvent e) Number
eventPhase = unsafeEventFn \e -> (unsafeCoerce e).eventPhase

isTrusted :: forall e. EventFn (NativeSyntheticEvent e) Boolean 
isTrusted = unsafeEventFn \e -> (unsafeCoerce e).isTrusted

type_ :: forall e. EventFn (NativeSyntheticEvent e) String 
type_ = unsafeEventFn \e -> (unsafeCoerce e).type

isDefaultPrevented :: forall e. EventFn (NativeSyntheticEvent e) Boolean
isDefaultPrevented = unsafeEventFn \e -> unsafePerformEffect do
  (unsafeCoerce e).isDefaultPrevented

isPropagationStopped :: forall e. EventFn (NativeSyntheticEvent e) Boolean
isPropagationStopped = unsafeEventFn \e -> unsafePerformEffect do
  (unsafeCoerce e).isPropagationStopped
