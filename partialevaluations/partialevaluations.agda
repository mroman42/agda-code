-- The definitions here are taken from: 'Monads, partial evaluations,
-- and rewriting' by Tobias Fritz and Paolo Perrone.
-- https://arxiv.org/pdf/1810.06037.pdf

-- Auxiliary definitions.
infix 4 _≡_
data _≡_ {a} {A : Set a} (x : A) : A → Set a where
  instance refl : x ≡ x
{-# BUILTIN EQUALITY _≡_ #-}

record Monad : Set where
  field
    F : Set -> Set
    fmap : {A B : Set} -> (A -> B) -> (F A -> F B)
    η : {A : Set} -> A -> F A
    μ : {A : Set} -> F (F A) -> F A
open Monad {{...}} public

record Algebra (T : Monad) : Set where
  private module T = Monad T
  field
    A : Set
    ev : T.F A -> A
open Algebra {{...}} public


-- Partial evaluations. A formal expression is an element on the
-- algebra; a partial evaluation goes from one formal expression to
-- another.
module PartialEvaluations (T : Monad) (N : Algebra T) where
  private module N = Algebra N
  private module T = Monad T
  M = T.F
  X = N.A

  data PartialEvaluation (u : M X) (v : M X) : Set where
    partial : (w : M (M X)) -> (u ≡ T.μ w) -> (v ≡ T.fmap N.ev w) -> PartialEvaluation u v
open PartialEvaluations {{...}} public



-- Example: Maybe monad and the pointed natural numbers.
module MaybeExample where
  data Maybe (A : Set) : Set where
    just : A -> Maybe A
    nothing : Maybe A
  
  maybemap : {A B : Set} -> (A -> B) -> (Maybe A -> Maybe B)
  maybemap f (just x) = just (f x)
  maybemap f nothing  = nothing
  
  maybeflatten : {A : Set} -> Maybe (Maybe A) -> Maybe A
  maybeflatten (just mma) = mma
  maybeflatten nothing = nothing
  
  maybe : Monad
  maybe = record
    { F = Maybe
    ; fmap = maybemap
    ; η = just
    ; μ = maybeflatten
    }
  
  data Nat : Set where
    zero : Nat
    succ : Nat -> Nat
  
  pointednats : Algebra maybe
  pointednats = record
    { A = Nat
    ; ev = pointtozero
    }
    where
      pointtozero : Maybe Nat -> Nat
      pointtozero (just x) = x
      pointtozero nothing = zero

  private module P = PartialEvaluations maybe pointednats
  (_~>_) = P.PartialEvaluation

  example1 : nothing ~> nothing
  example1 = PartialEvaluations.partial nothing refl refl

  example2 : nothing ~> just zero
  example2 = PartialEvaluations.partial (just nothing) refl refl


-- Example: The natural numbers as a monoid.
module ListExample where
  data List (A : Set) : Set where
    [] : List A
    _∷_ : A -> List A -> List A
  infixr 20 _∷_

  listmap : {A B : Set} -> (A -> B) -> (List A -> List B)
  listmap f []      = []
  listmap f (x ∷ l) = f x ∷ listmap f l

  listconcat : {A : Set} -> List (List A) -> List A
  listconcat [] = []
  listconcat ([] ∷ l₁) = listconcat l₁
  listconcat ((x ∷ l) ∷ l₁) = x ∷ listconcat (l ∷ l₁)

  list : Monad
  list = record
    { F = List
    ; fmap = listmap
    ; η = λ x -> x ∷ []
    ; μ = listconcat
    }

  data Nat : Set where
    zero : Nat
    succ : Nat -> Nat
  {-# BUILTIN NATURAL Nat #-}

  add : Nat -> Nat -> Nat
  add zero m = m
  add (succ n) m = succ (add n m)

  sum : List Nat -> Nat
  sum [] = zero
  sum (x ∷ l) = add x (sum l)

  natsmonoid : Algebra list
  natsmonoid = record
    { A = Nat
    ; ev = sum
    }

  private module P = PartialEvaluations list natsmonoid
  (_~>_) = P.PartialEvaluation

  -- Motivating example from the paper.
  example1 : (3 ∷ 4 ∷ 5 ∷ []) ~> (7 ∷ 5 ∷ [])
  example1 = PartialEvaluations.partial ((3 ∷ 4 ∷ []) ∷ (5 ∷ []) ∷ []) refl refl
