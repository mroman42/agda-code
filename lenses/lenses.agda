{-# OPTIONS --type-in-type #-}

open import Prelude.Product
open import Prelude.Function

π₁ : {a b : Set} -> a × b -> a
π₁ (x , y) = x

π₂ : {a b : Set} -> a × b -> b
π₂ (x , y) = y

-- An elementary lens.
record Lens (s t a b : Set) : Set where
  constructor lens
  field
    view : s -> a
    update : s × b -> t
open Lens public


-- Profunctors.
Profunctor : (p : Set -> Set -> Set) -> Set
Profunctor p = {a b c d : Set} -> (c -> a) -> (b -> d) -> p a b -> p c d

-- Cartesian profunctors
Cartesian : (p : Set -> Set -> Set) -> Set
Cartesian p = {a b c : Set} -> p a b -> p (c × a) (c × b)

-- A profunctor lens.
LensP : Set -> Set -> Set -> Set -> Set
LensP s t a b = {p : Set -> Set -> Set} {_ : Profunctor p} {_ : Cartesian p} -> p a b -> p s t



-- From profunctor to concrete, from concrete to profunctor.
lensP2C : {s t a b : Set} -> LensP s t a b -> Lens s t a b
lensP2C l = l {_} {lensprofunctor} {lenscartesian} trivialLens
  where
    lensprofunctor : {a b : Set} -> Profunctor (λ s t -> Lens s t a b)
    lensprofunctor f g l = lens (view l ∘ f) (g ∘ update l ∘ first f)

    lenscartesian : {a b : Set} -> Cartesian (λ s t -> Lens s t a b)
    lenscartesian l = lens (view l ∘ π₂) λ { ((c , a) , b) -> (c , update l (a , b)) }
  
    trivialLens : {a b : Set} -> Lens a b a b
    trivialLens = lens id π₂

lensC2P : {s t a b : Set} -> Lens s t a b -> LensP s t a b
lensC2P l {p} {dimap} {cart} x = dimap (λ s -> (s , view l s)) (update l) (cart x)
