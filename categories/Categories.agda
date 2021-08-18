{-# OPTIONS --type-in-type #-}

module Categories where

open import Equality

record Category : Set where
  field
    obj : Set
    hom : (A B : obj) → Set

    id : {A : obj} → hom A A
    _∘_ : {A B C : obj} → hom B C → hom A B → hom A C

    assoc : {A B C D : obj}
      → {f : hom A B}
      → {g : hom B C}
      → {h : hom C D}
      → (h ∘ g) ∘ f ≡ h ∘ (g ∘ f)

    idleft : {A B : obj}
      → {f : hom A B}
      → id ∘ f ≡ f

    idright : {A B : obj}
      → {f : hom A B}
      → f ∘ id ≡ f

  -- Auxiliary functions
  dom : ∀{A B} → hom A B → obj
  dom {A} {_} _ = A

  cod : ∀{A B} → hom A B → obj
  cod {_} {B} _ = B
open Category {{...}} public 


-- The category of sets
Sets : Category
Sets = record
  { obj = Set
  ; hom = λ A B → (A → B)
  ; id = λ z → z
  ; _∘_ = λ g f x → g (f x)
  ; assoc = λ {_} → refl
  ; idleft = λ {_} → refl
  ; idright = λ {_} → refl
  }
