{-# OPTIONS --guardedness #-}

module Stream where

open import Functor
open import Relation.Binary.PropositionalEquality
open import Data.Product

-- Definition of streams. Greatest fixpoint of the functor (A × ∙).
record Stream (A : Set) : Set where
  coinductive
  field
    head : A
    tail : Stream A
open Stream public


streamfmap : {A B : Set} -> (A -> B) -> Stream A -> Stream B
head (streamfmap f s) = f (head s)
tail (streamfmap f s) = streamfmap f (tail s)

instance
  FunctorStream : Functor Stream
  FunctorStream = record { fmap = streamfmap }


-- Stream given by the iteration of a function.
iterate : {A : Set} -> (A -> A) -> A -> Stream A
head (iterate f a) = a
tail (iterate f a) = iterate f (f a)

_∷_ : {A : Set} -> A -> Stream A -> Stream A
head (x ∷ s) = x
tail (x ∷ s) = s

-- Bisimilarity
record _≈_ {A : Set} (xs : Stream A) (ys : Stream A) : Set where
  coinductive
  field
    head≈ : head xs ≡ head ys
    tail≈ : tail xs ≈ tail ys
open _≈_ public


-- Splitting and merging lists.
even : {A : Set} -> Stream A -> Stream A
head (even xs) = head xs
tail (even xs) = even (tail (tail xs))
odd : {A : Set} -> Stream A -> Stream A
odd xs = even (tail xs)

split : {A : Set} -> Stream A -> Stream A × Stream A
split xs = even xs , odd xs

merge : {A : Set} -> Stream A × Stream A -> Stream A
head (merge (xs , ys)) = head xs
tail (merge (xs , ys)) = merge (ys , tail xs)

-- Termination checking works differently if the coinduction is explicit.
merge-split-id : {A : Set} -> (xs : Stream A) -> merge (split xs) ≈ xs
head≈ (merge-split-id xs) = refl
tail≈ (merge-split-id xs) = merge-split-id (tail xs)
