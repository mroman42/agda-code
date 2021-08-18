
module Conaturals where

-- Initial algebra
data Nat : Set where
  zero : Nat
  suc : Nat → Nat

rec : {X : Set} → (X → X) → X → (Nat → X)
rec rs rz zero     = rz
rec rs rz (suc n) = rs (rec rs rz n)


-- Final coalgebra (?)
data Maybe (A : Set) : Set where
  Nothing : Maybe A
  Just : A → Maybe A

record coNat : Set where
  coinductive
  field
    pred : Maybe coNat
open coNat public    

coZero : coNat
pred coZero = Nothing

coInf : coNat
pred coInf = Just coInf

coRec : {X : Set} → (X → Maybe X) → (X → coNat)
pred (coRec p n) with p n
pred (coRec p n) | Nothing = Nothing
pred (coRec p n) | Just x  = Just (coRec p n)



-- Operations
succ : coNat → coNat
pred (succ n) = Just n

infixl 20 _+_
_+_ : coNat → coNat → coNat
pred (a + b) with pred a
pred (a + b) | Nothing = pred b
pred (a + b) | Just a' = Just (a' + b)

infixl 30 _*_
{-# NON_TERMINATING #-} -- Mmm, why
_*_ : coNat → coNat → coNat
pred (a * b) with pred a
pred (a * b) | Nothing = Nothing
pred (a * b) | Just a' with pred b
pred (a * b) | Just a' | Nothing = Nothing
pred (a * b) | Just a' | Just b' = Just (a' * b' + a' + b')






-- infixl 30 _*_
-- {-# NON_TERMINATING #-}
-- _*_ : coNat → coNat → coNat
-- pred (a * b) with pred a | pred b
-- pred (a * b) | Nothing | _       = Nothing
-- pred (a * b) | Just a' | Nothing = Nothing
-- pred (a * b) | Just a' | Just b' = Just (a' * b' + a' + b')


-- EQUALITY VERSION 1
-- record ⊤ : Set where
--   constructor ∗
-- data ⊥ : Set where

-- {-# NON_TERMINATING #-}
-- EqProof : (a b : Maybe coNat) → Set
-- EqProof Nothing  Nothing  = ⊤
-- EqProof Nothing  (Just x) = ⊥
-- EqProof (Just x) Nothing  = ⊥
-- EqProof (Just x) (Just y) = EqProof (pred x) (pred y)

-- infixl 4 _≈_
-- record _≈_ (a b : Maybe coNat) : Set where
--   coinductive
--   field
--     pred≈ : EqProof a b







-- data _∪_ (A B : Set) : Set where
--   inl : A → A ∪ B
--   inr : B → A ∪ B

-- dec-eq : (a b : coNat) → (a ≈ b) ∪ (a ≈ b → ⊥)
-- dec-eq a b with pred a | pred b
-- dec-eq a b | Nothing | Nothing = inl {!!}
-- dec-eq a b | Nothing | Just x = {!!}
-- dec-eq a b | Just x | w = {!!}

-- example : succ coZero + succ (succ coZero) ≈ succ (succ (succ coZero))
-- example = {!!}
