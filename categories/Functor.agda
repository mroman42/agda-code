module Functor where

open import Equality
open import Categories hiding (_∘_)


record Functor (C D : Category) : Set where
  private module C = Category C
  private module D = Category D
  field
    fobj : C.obj → D.obj
    fmap : ∀{A B} → C.hom A B → D.hom (fobj A) (fobj B)

    fcomp : ∀{A B C} {g : C.hom B C} {f : C.hom A B} →
      fmap (g C.∘ f) ≡ fmap g D.∘ fmap f

    fidnt : ∀{A} → fmap {A} (C.id) ≡ D.id
open Functor {{...}} public


-- Composition of functors.
_∘_ : {C D E : Category} → Functor D E → Functor C D → Functor C E
_∘_ {C} {D} {E} G F = record
  { fobj = λ A → Gobj (Fobj A) 
  ; fmap = λ f → Gmap (Fmap f)
  ; fcomp = λ {A} {B} {C} {g} {f} →
      begin
        Gmap (Fmap (g ∘₁ f))             ≡⟨ ap Gmap F.fcomp ⟩
        Gmap ((Fmap g) ∘₂ (Fmap f))      ≡⟨ G.fcomp ⟩
        Gmap (Fmap g) ∘₃ Gmap (Fmap f)
      ∎
  ; fidnt = λ {A} →
     begin
       Gmap (Fmap C.id) ≡⟨ ap Gmap F.fidnt ⟩
       Gmap (D.id)      ≡⟨ G.fidnt ⟩
       E.id
     ∎
  }
  where
    module F = Functor F 
    module G = Functor G
    open F renaming (fmap to Fmap ; fobj to Fobj)
    open G renaming (fmap to Gmap ; fobj to Gobj)
    module C = Category C
    module D = Category D
    module E = Category E
    open C renaming (_∘_ to _∘₁_)
    open D renaming (_∘_ to _∘₂_)    
    open E renaming (_∘_ to _∘₃_)

-- record NaturalTransformation {C D : Category} (F G : Functor C D) : Set where
  
    
