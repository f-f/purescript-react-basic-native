module Util where

import Prelude

import Data.Either (Either(..))
import Data.Maybe (Maybe(..))
import Effect.Aff (Aff, error, throwError)

liftEither :: forall e a. Show e => Aff (Either e a) -> Aff a
liftEither aff = do
  either <- aff
  case either of 
    Left bad  -> throwError $ error (show bad)
    Right value -> pure value

liftMaybe :: forall a. String -> Maybe a -> Aff a
liftMaybe msg Nothing = throwError $ error msg 
liftMaybe _ (Just a) = pure a
