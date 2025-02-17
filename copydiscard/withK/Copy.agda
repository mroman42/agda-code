{-# OPTIONS --type-in-type #-}
{-# OPTIONS --allow-unsolved-metas #-}

open import Data.Fin renaming (_+_ to _+f_) hiding (pred) renaming (cast to castf)
open import Data.Vec
open import Data.Nat
open import Data.Vec.Properties hiding (++-assoc)
open import Data.Empty
open import Data.Nat.Properties using (+-identityʳ ; +-assoc)
open import Relation.Binary.PropositionalEquality.Core using (_≡_; refl; trans; cong; sym)
open import Data.List renaming (map to lmap ; lookup to llookup ; _++_ to _++l_)
open import Tactic.Cong
open import Relation.Binary.PropositionalEquality.Properties using (module ≡-Reasoning)

open import FinFun

-- A finite function n → m is a Vec n (Finset m).
-- We will prove finite functions form an op-copy-discard category first.
-- Being well-typed is a property and I can compute that later.

_∘_ : ∀ {x y z} -> Function y z -> Function x y -> Function x z
x ∘ y = y ⊳ x


------------ TYPE THEORY
record Signature : Set where
  field
    gen : ℕ -> ℕ -> Set
open Signature public 

module Theory (Σ : Signature) where

  data Arrow : ℕ → ℕ → Set where
    ret[_] : ∀ {x y : ℕ}
      -> (α : Function y x) 
      -> Arrow x y

    _[_];_ : ∀{k x y z}
        -> (gen Σ) k y
        -> (β : Function k x)
        -> Arrow (x + y) z
        -> Arrow x z

  _∗_ : ∀ {x y u} 
    -> (φ : Function x u)
    -> Arrow x y
    -> Arrow u y
  φ ∗ (ret[ α ])   = ret[ φ ∘ α ]
  φ ∗ (f [ β ]; t) = f [ φ ∘ β ]; ((φ ⊕ id) ∗ t)

  _⨾_ : ∀ {x y z}
    -> Arrow x y
    -> Arrow y z
    -> Arrow x z
  ret[ α ] ⨾ t = α ∗ t
  (f [ β ]; s) ⨾ t = f [ β ]; (s ⨾ t)

  ∗-action : ∀ {u v x y}
    -> (φ : Function x u)
    -> (ψ : Function u v)
    -> (t : Arrow x y)
    -> ψ ∗ (φ ∗ t) ≡ (ψ ∘ φ) ∗ t
  ∗-action φ ψ ret[ α ] = cong ret[_] (⊳-assoc α φ ψ)
  ∗-action φ ψ (x [ β ]; t) = trustMe

  ∗-lid : ∀ {x y}
    -> (t : Arrow x y)
    -> id ∗ t ≡ t
  ∗-lid ret[ α ] = cong ret[_] ⊳-runit
  ∗-lid {x} (f [ β ]; t) = 
    begin
    (f [ id ∘ β ]; ((id {x} ⊕ id) ∗ t)) ≡⟨ cong (f [_]; ((id {x} ⊕ id) ∗ t)) ⊳-runit ⟩ 
    (f [ β ]; ((id {x} ⊕ id) ∗ t))      ≡⟨ cong (λ a → (f [ β ]; (a ∗ t))) (⊕-idid x _) ⟩ 
    (f [ β ]; (id ∗ t))                 ≡⟨ cong (f [ β ];_) (∗-lid t) ⟩ 
    (f [ β ]; t)
    ∎
    where open ≡-Reasoning


  ∗-⨾  : ∀ {x y z u}
    -> (φ : Function x u)
    -> (s : Arrow x y)
    -> (t : Arrow y z)
    -> φ ∗ (s ⨾ t) ≡ (φ ∗ s) ⨾ t
  ∗-⨾ φ ret[ α ] t     = ∗-action α φ t
  ∗-⨾ φ (x [ β ]; s) t = cong (x [ φ ∘ β ];_) (∗-⨾ (φ ⊕ id) s t)

  ⨾-assoc : ∀{x y z w}
    -> (s : Arrow x y)
    -> (t : Arrow y z)
    -> (r : Arrow z w)
    -> s ⨾ (t ⨾ r) ≡ (s ⨾ t) ⨾ r
  ⨾-assoc ret[ α ] t r = ∗-⨾ α t r
  ⨾-assoc (x [ β ]; s) t r = cong (x [ β ];_) (⨾-assoc s t r)

  ⨾-lunit : ∀{x y}
    -> (s : Arrow x y)
    -> s ⨾ ret[ id ] ≡ s
  ⨾-lunit ret[ α ]     = cong ret[_] ⊳-lunit
  ⨾-lunit (x [ β ]; s) = cong (x [ β ];_) (⨾-lunit s)

  ⨾-runit : ∀{x y}
    -> (s : Arrow x y)
    -> ret[ id ] ⨾ s ≡ s
  ⨾-runit ret[ α ] = cong ret[_] ⊳-runit
  ⨾-runit {x} (f [ β ]; s) = 
    begin
    (f [ id ∘ β ]; ((id {x} ⊕ id) ∗ s)) ≡⟨ cong (λ i → f [ id ∘ β ]; (i ∗ s)) (⊕-idid x _) ⟩ 
    (f [ id ∘ β ]; (id ∗ s))            ≡⟨ cong (f [ id ∘ β ];_) (∗-lid s) ⟩ 
    (f [ id ∘ β ]; s)                   ≡⟨ cong (f [_]; s) ⊳-runit ⟩ 
    (f [ β ]; s) 
    ∎
    where open ≡-Reasoning

  assoc-path : ∀{x y z u} -> Arrow (z + (x + y)) (z + u) ≡ Arrow (z + x + y) (z + u)
  assoc-path {x} {y} {z} {u} = cong (λ i → Arrow i (z + u)) (sym (+-assoc z x y))

  whisk : {x y : ℕ}
    -> (z : ℕ)
    -> (t : Arrow x y)
    -> Arrow (z + x) (z + y)
  whisk z ret[ α ]     = ret[ id ⊕ α  ]
  whisk {x} {y} z (f [ β ]; t) rewrite assoc-path {x} {_} {z} {y} =  f [ ρ z ∘ β ]; {! whisk z t  !}
    

  -- ⋊-∗ : {u x y : ℕ}
  --  -> (k : ℕ)
  --  -> (γ : Function x u)
  --  -> (s : Arrow x y)
  --  -> (id {k} ⊕ γ) ∗ (k ⋊ s) ≡ (k ⋊ (γ ∗ s))
  -- ⋊-∗ k γ ret[ α ] = cong ret[_] trustMe
  -- ⋊-∗ k γ (f [ β ]; s) = {!   !}
open Theory public
   