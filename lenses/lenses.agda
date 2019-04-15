{-# OPTIONS --type-in-type #-}

open import Prelude.Product
open import Prelude.Function

π₁ : {a b : Set} -> a × b -> a
π₁ (x , y) = x

π₂ : {a b : Set} -> a × b -> b
π₂ (x , y) = y


-----------------
-- PROFUNCTORS --
-----------------
record Profunctor (p : Set -> Set -> Set) : Set where
  constructor profunctor
  field
    dimap : {a b c d : Set} -> (c -> a) -> (b -> d) -> p a b -> p c d

  lmap : {a b c : Set} -> (a -> b) -> p b c -> p a c
  lmap f = dimap f id

  rmap : {a b d : Set} -> (b -> d) -> p a b -> p a d
  rmap f = dimap id f
open Profunctor {{...}} public

-- Cartesian profunctors.
record Cartesian (p : Set -> Set -> Set) : Set where
  constructor cartesian
  field
    {{isProfunctor}} : Profunctor p
    sfirst : {a b c : Set} -> p a b -> p (c × a) (c × b)
open Cartesian {{...}} public

-- coCartesian profunctors.
record Cocartesian (p : Set -> Set -> Set) : Set where
  constructor cocartesian
  field
    {{isProfunctor}} : Profunctor p
    sright : {a b c : Set} -> p a b -> p (c + a) (c + b)
open Cocartesian {{...}} public



------------
-- LENSES --
------------
-- A profunctor lens.
Lens : Set -> Set -> Set -> Set -> Set
Lens s t a b = {p : Set -> Set -> Set} {{_ : Cartesian p}} -> p a b -> p s t

-- Concrete lens
record LensC (s t a b : Set) : Set where
  constructor lens
  field
    view : s -> a
    update : s × b -> t
open LensC public


-- From concrete to profunctor.
lensC2P : {s t a b : Set} -> LensC s t a b -> Lens s t a b
lensC2P l x = dimap (λ s -> (s , view l s)) (update l) (sfirst x)

-- From profunctor to concrete, from concrete to profunctor.
instance
  lens-profunctor : {a b : Set} -> Profunctor (λ s t -> LensC s t a b)
  lens-profunctor = profunctor λ f g l -> lens (view l ∘ f) (g ∘ update l ∘ first f)

  lens-cartesian : {a b : Set} -> Cartesian (λ s t -> LensC s t a b)
  lens-cartesian = cartesian λ l -> lens (view l ∘ π₂) λ { ((c , a) , b) -> (c , update l (a , b)) }

lensP2C : {s t a b : Set} -> Lens s t a b -> LensC s t a b
lensP2C l = l (lens id π₂)


