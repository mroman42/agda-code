module Functor where

open import Equality
open import Categories hiding (_∘_)


record Functor (C D : Category) : Set where
  module C = Category C
  module D = Category D
  field
    fobj : C.obj → D.obj
    fmap : ∀{A B} → C.hom A B → D.hom (fobj A) (fobj B)

    fcomp : ∀{A B C} {g : C.hom B C} {f : C.hom A B} →
      fmap (g C.∘ f) ≡ fmap g D.∘ fmap f

    fidnt : ∀{A} → fmap {A} (C.id) ≡ D.id
open Functor {{...}} public


-- Composition of functors.
_∘_ : {C D E : Category} → Functor D E → Functor C D → Functor C E
G ∘ F = record
  { fobj = λ A → G.fobj (F.fobj A) 
  ; fmap = λ f → G.fmap (F.fmap f)
  ; fcomp = λ {A} {B} {C} {g} {f} →
      begin
        G.fmap (F.fmap (g F.C.∘ f))               ≡⟨ ap G.fmap F.fcomp ⟩
        G.fmap ((F.fmap g) F.D.∘ (F.fmap f))      ≡⟨ G.fcomp ⟩
        G.fmap (F.fmap g) G.D.∘ G.fmap (F.fmap f)
      ∎
  ; fidnt = λ {A} →
     begin
       G.fmap (F.fmap F.C.id) ≡⟨ ap G.fmap F.fidnt ⟩
       G.fmap (F.D.id)        ≡⟨ G.fidnt ⟩
       G.D.id
     ∎
  }
  where
    module F = Functor F 
    module G = Functor G


-- record NaturalTransformation {C D : Category} (F G : Functor C D) : Set where
  
    
