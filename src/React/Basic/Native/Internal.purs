module React.Basic.Native.Internal where

import Prelude
import React.Basic (JSX)
import Unsafe.Coerce (unsafeCoerce)


-- | An abstract type representing records of CSS attributes.
foreign import data CSS :: Type

instance semigroupCSS :: Semigroup CSS where
  append a b = mergeStyles [ b, a ]

instance monoidCSS :: Monoid CSS where
  mempty = css {}

-- | Create a value of type `CSS` (which can be provided to the `style` property)
-- | from a plain record of CSS attributes.
-- |
-- | For example:
-- |
-- | ```
-- | div { style: css { padding: "5px" } } [ text "This text is padded." ]
-- | ```
css :: forall css. { | css } -> CSS
css = unsafeCoerce

-- | Merge styles from right to left. Uses `Object.assign`.
-- |
-- | For example:
-- |
-- | ```
-- | style: mergeCSS [ (css { padding: "5px" }), props.style ]
-- | ```
foreign import mergeStyles :: Array CSS -> CSS

foreign import unsafeCreateNativeElement :: ∀ props. String -> { | props } -> JSX
