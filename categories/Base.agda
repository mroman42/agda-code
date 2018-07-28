open import Equality

module Base where

record Pair (A B : Set) : Set where
  field
    fst : A
    snd : B

-- Function extensionality
postulate funext : {A B : Set} {f g : A → B} → ((a : A) → f a ≡ g a) → f ≡ g

