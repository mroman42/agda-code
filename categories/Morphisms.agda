open import Equality
open import Categories
open import Base

module Morphisms {C : Category} where

module C = Category C
open C renaming (obj to Cₒ ; _∘_ to _∘'_)
 
record _≅_ (A B : Cₒ) : Set where
  field
    f : C.hom A B
    g : C.hom B A
    linv : f ∘' g ≡ C.id
    rinv : g ∘' f ≡ C.id
open _≅_ {{...}} public

is-mono : {Y Z : Cₒ} → (f : C.hom Y Z) → Set
is-mono {Y} {Z} f = {X : Cₒ} → (g h : C.hom X Y) → (f C.∘ g) ≡ (f C.∘ h) → g ≡ h

