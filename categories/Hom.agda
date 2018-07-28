{-# OPTIONS --type-in-type #-}
open import Categories
open import Functor
open import Equality
open import Base

module Hom where

homfunctor : {C : Category} (A : obj {{C}}) → Functor C Sets
homfunctor {C} A = record
  { fobj = C.hom A
  ; fmap = C._∘_
  ; fcomp = funext (λ _ → C.assoc)
  ; fidnt = funext (λ _ → C.idleft)
  }
  where
    module C = Category C
    open C
