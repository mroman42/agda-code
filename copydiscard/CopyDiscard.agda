{-# OPTIONS --type-in-type #-}

-- A finite function n → m is a Vec n (Finset m).
-- We will prove finite functions form an op-copy-discard category first.

open import Agda.Builtin.Equality
open import Data.Fin renaming (_+_ to _+f_)
open import Data.Vec
open import Data.Nat hiding (_*_)
open import Data.Empty
open import Data.Nat.Properties using (+-identityʳ)
open import Relation.Binary.PropositionalEquality.Core using (_≡_; refl; trans; cong; sym)
open import Relation.Binary.PropositionalEquality.TrustMe
open import Data.List renaming (map to lmap ; lookup to llookup ; _++_ to _++l_)
open import Tactic.Cong
open import FiniteFunctions

------------ TYPE THEORY
record Signature : Set where
  field
    type : Set
    gen : ∀{x y} -> (X : Vec type x) -> (Y : Vec type y) -> Set
open Signature public 


-- {-# REWRITE reindexAssociative #-}
-- It may be much better to do the untyped version first.


module Theory (Σ : Signature) where

  data Arrow : ∀{n m} -> Vec (type Σ) n → Vec (type Σ) m → Set where
    ret : ∀{x y} {α⊳X}
      -> {X : Vec (type Σ) x}
      -> (α : Function y x) 
      -> {p : α⊳X ≡ α ⊳ X}
      -> Arrow X α⊳X

    arr : ∀{x y z k X++Y β⊳X}
      -> {X : Vec (type Σ) x} 
      -> {Y : Vec (type Σ) y} 
      -> {Z : Vec (type Σ) z} 
      -> (β : Function k x)
      -> (gen Σ) (β⊳X) Y
      -> Arrow (X++Y) Z
      -> {p : X++Y ≡ X ++ Y}
      -> {q : β⊳X ≡ β ⊳ X}
      -> Arrow X Z
  
  ar : ∀{x y z k}
      -> {X : Vec (type Σ) x} 
      -> {Y : Vec (type Σ) y} 
      -> {Z : Vec (type Σ) z} 
      -> (β : Function k x)
      -> gen Σ (β ⊳ X) Y
      -> Arrow (X ++ Y) Z
      -> Arrow X Z
  ar β x l = arr β x l {p = refl} {q = refl}
      
  -- Rewiring
  rewire : ∀ {x y u} 
    -> {X : Vec (type Σ) x} 
    -> {Y : Vec (type Σ) y}
    -> (φ : Function x u)
    -> (Arrow X Y)
    -> Arrow (φ ⊳ X) Y
  rewire φ (ret α {p}) = ret {!   !} {p = {!   !}}
  rewire φ (arr β x r) = {!   !}
  -- rewire φ (ret α {refl}) {refl} = ret (α ∘ φ) {p = sym (reindexFunctorial α φ _)}
  -- rewire φ (arr β f t {p} {q}) {r} = {!   !} -- arr (φ ∘ β) f {!  t !} {p = trustMe} {q = trans q (sym (reindexFunctorial β φ _))}

  -- _*_ {y = y} {u = u} {U = U} {Y = Y}
  --   φ (arr  {y = y₁} {Y = Y₁} β f t) 
  --   -- rewrite sym (cong (λ i -> Arrow i Y) ({! reindex-whiskering  !} φ U Y₁))
  --   = arr {X++Y = {!  !}} (φ ∘ β) f {{{!   !}}} {!  (φ ⊕ (id y₁)) * t !}
  --   -- arr (φ ∘ β) f ((φ ⊕ (id y₁)) * t)

  -- Rewiring functorial
  -- rewiring-composition : ∀ {x y u v}
  --   {X : Vec (type Σ) x}
  --   {Y : Vec (type Σ) y}
  --   (φ : Function u x)
  --   (ψ : Function v u)
  --   (t : Arrow (reindex ψ (reindex φ X)) Y)
  --   -> (φ ∘ ψ) * t ≡ φ * (ψ * t)
  -- rewiring-composition φ ψ (ret α) = {! !}
  -- rewiring-composition φ ψ (arr β x t) = {!   !}
  
open Theory public

-- data ⊤ : Set where
--   tt : ⊤

-- Σex : Signature
-- Σex = record { type = ⊤ ; gen = λ X Y → ⊤ }

-- ex : Arrow Σex (tt ∷ tt ∷ []) (tt ∷ tt ∷ tt ∷ [])
-- ex = let x = zero in let y = suc zero in 
--   ret (y ∷ x ∷ y ∷ []) 