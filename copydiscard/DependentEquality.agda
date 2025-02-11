{-# OPTIONS --cubical #-}
{-# OPTIONS --type-in-type #-}
open import Cubical.Foundations.Prelude
open import Cubical.Data.Bool

data _≣_ {A B : Set} (x : A) (y : B) : Set where
  refl : x ≡ x