{-# OPTIONS --type-in-type #-}

module Functor where

-- Definition of Functor.
record Functor (F : Set -> Set) : Set where
  field
    fmap : {A B : Set} -> (A -> B) -> F A -> F B
open Functor {{...}} public
