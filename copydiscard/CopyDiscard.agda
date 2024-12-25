{-# OPTIONS --type-in-type #-}
{-# OPTIONS --rewriting #-}


-- A finite function n → m is a Vec n (Finset m).
-- We will prove finite functions form an op-copy-discard category first.

open import Agda.Builtin.Equality
open import Agda.Builtin.Equality.Rewrite

open import Data.Fin renaming (_+_ to _+f_)
open import Data.Vec
open import Data.Nat hiding (_*_)
open import Data.Empty
open import Data.Nat.Properties using (+-identityʳ)
open import Relation.Binary.PropositionalEquality.Core using (_≡_; refl; trans; cong; sym)
open import Data.List renaming (map to lmap ; lookup to llookup ; _++_ to _++l_)
open import Tactic.Cong
open import FiniteFunctions

------------ TYPE THEORY
record Signature : Set where
  field
    type : Set
    gen : ∀{x y} -> (X : Vec type x) -> (Y : Vec type y) -> Set
open Signature public 


module Theory (Σ : Signature) where

  data Arrow : ∀{n m} -> Vec (type Σ) n → Vec (type Σ) m → Set where
    ret : ∀{x y} 
      -> {X : Vec (type Σ) x}
      -> (α : Function y x) 
      -> Arrow X (reindex α X)

    arr : ∀{x y z k}
      -> {X : Vec (type Σ) x} 
      -> {Y : Vec (type Σ) y} 
      -> {Z : Vec (type Σ) z} 
      -> (β : Function k x)
      -> (gen Σ) (reindex β X) Y
      -> Arrow (X ++ Y) Z
      -> Arrow X Z
      
  -- Rewiring
  _*_ : ∀{x y u} {U : Vec (type Σ) u} {Y : Vec (type Σ) y} 
    -> (φ : Function x u) 
    -> Arrow (reindex φ U) Y 
    -> Arrow U Y
  _*_ {U = U} 
    φ (ret α)  
    rewrite (cong (Arrow U) (sym (reindexFunctorial α φ U))) 
    = ret (φ ∘ α)
  _*_ {x = x} {y = y} {u = u} {U = U} {Y = Y}
    φ (arr {y = y₁} {Y = Y₁} β f t) 
    rewrite cong (λ i -> gen Σ i Y₁) (sym (reindexFunctorial β φ U))
    rewrite sym (cong (λ i -> Arrow i Y) (reindex-whiskering φ U Y₁))
    =
    arr (φ ∘ β) f ((φ ⊕ (id y₁)) * t)

open Theory public

data ⊤ : Set where
  tt : ⊤

Σex : Signature
Σex = record { type = ⊤ ; gen = λ X Y → ⊤ }

ex : Arrow Σex (tt ∷ tt ∷ []) (tt ∷ tt ∷ tt ∷ [])
ex = let x = zero in let y = suc zero in 
  ret (y ∷ x ∷ y ∷ [])