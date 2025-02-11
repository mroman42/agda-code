{-# OPTIONS --type-in-type #-}
{-# OPTIONS --cubical #-}
{-# OPTIONS --allow-unsolved-metas #-}

open import Cubical.Foundations.Prelude
open import Cubical.Data.Bool hiding (_⊕_)
open import Cubical.Data.Vec
open import Cubical.Data.Nat
open import Cubical.Data.FinData
open import UntypedFiniteFunctions

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
  φ ∗ (ret[ α ]) = ret[ φ ∘ α ]
  φ ∗ (f [ β ]; t) =  f [ φ ∘ β ]; ((φ ⊕ id) ∗ t)

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
  ∗-lid (x [ β ]; t) = {!   !}


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
  ⨾-lunit ret[ α ] = cong ret[_] ⊳-lunit
  ⨾-lunit (x [ β ]; s) = cong (x [ β ];_) (⨾-lunit s)

  ⨾-runit : ∀{x y}
    -> (s : Arrow x y)
    -> ret[ id ] ⨾ s ≡ s
  ⨾-runit ret[ α ] = cong ret[_] ⊳-runit
  ⨾-runit {x} (f [ β ]; s) = 
    (f [ id ∘ β ]; ((id {x} ⊕ id) ∗ s)) ≡⟨ cong (λ i → f [ id ∘ β ]; (i ∗ s)) (⊕-idid x _) ⟩ 
    (f [ id ∘ β ]; (id ∗ s)) ≡⟨ cong (f [ id ∘ β ];_) (∗-lid s) ⟩ 
    (f [ id ∘ β ]; s) ≡⟨ cong (f [_]; s) ⊳-runit ⟩ 
   (f [ β ]; s) ∎
open Theory public
 