{-# OPTIONS --type-in-type #-}

module Cellular where

open import Stream
open import Functor
open import Relation.Binary.PropositionalEquality
open import Data.Bool

-- 1-d Cellular universe.
data Universe (A : Set) : Set where
  U : Stream A -> A -> Stream A -> Universe A

left : {A : Set} -> Universe A -> Universe A
left (U l x r) = U (tail l) (head l) (x ∷ r)

right : {A : Set} -> Universe A -> Universe A
right (U l x r) = U (x ∷ l) (head r) (tail r)

universefmap : {A B : Set} -> (A -> B) -> Universe A -> Universe B
universefmap f (U l x r) = U (fmap f l) (f x) (fmap f r)

instance
  FunctorUniverse : Functor Universe
  FunctorUniverse = record { fmap = universefmap }

-- Comonad structure.
counitUniverse : {A : Set} -> Universe A -> A
counitUniverse (U l x r) = x

comultiplicationUniverse : {A : Set} -> Universe A -> Universe (Universe A)
comultiplicationUniverse u = U (iterate left u) u (iterate right u)

cobindUniverse : {A B : Set} -> Universe A -> (Universe A -> B) -> Universe B
cobindUniverse u f = fmap f (comultiplicationUniverse u)

counitality-right : {A : Set} {d : Universe A} -> counitUniverse (comultiplicationUniverse d) ≡ d
counitality-right {A} {U l x r} = refl

counitality-left : {A : Set} {d : Universe A} -> (fmap counitUniverse) (comultiplicationUniverse d) ≡ d
counitality-left {A} {U l x r} = {!!}


-- Evolution rule
rule110 : Bool -> Bool -> Bool -> Bool
rule110 true  true  true  = false
rule110 true  true  false = true
rule110 true  false true  = true
rule110 true  false false = false
rule110 false true  true  = true
rule110 false true  false = true
rule110 false false true  = true
rule110 false false false = false

rule : Universe Bool -> Bool
rule (U l x r) = rule110 (head l) x (head r)

evolution : Universe Bool -> Universe Bool
evolution u = cobindUniverse u rule
