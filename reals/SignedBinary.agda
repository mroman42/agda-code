module SignedBinary where

open import Agda.Builtin.Float
open import Agda.Builtin.String
open import Agda.Builtin.Int
open import Agda.Builtin.Bool
open import Agda.Builtin.Nat hiding (_+_)

data Digit : Set where
  I : Digit
  O : Digit
  U : Digit

record Real : Set where
  coinductive
  field
    hd : Digit
    tl : Real
open Real public

-- Bisimilarity
infix 4 _≡_
data _≡_ {a} {A : Set a} (x : A) : A → Set a where
  instance refl : x ≡ x
{-# BUILTIN EQUALITY _≡_ #-}

record _≈_ (a b : Real) : Set where
  coinductive
  field
    hd≈ : hd a ≡ hd b
    tl≈ : tl a ≈ tl b


-- Examples
r0 : Real
hd r0 = O
tl r0 = r0

r1 : Real
hd r1 = I
tl r1 = r1

r066 : Real
hd r066 = I
hd (tl r066) = O
tl (tl r066) = r066

-- Operations
module Average where
  -- http://www.dcs.ed.ac.uk/home/mhe/plume/node55.html#sbAv
  -- average(a₀:a₁:x, b₀:b₁:y, c) = do
  --    d' <- a₀ + b₀ + c
  --    if d' even:
  --      return sign(d'):average(x,y,0)
  --    if d' odd:
  --      

  average'' : Real → Real → Digit → Digit → Digit → Real
  average'' x' y' a₀ b₀ c = {!!}

  {-# NON_TERMINATING #-}
  average' : Real → Real → Digit → Real
  average' x y c =
    if evend
    then record { hd = signd' ; tl = average' x' y' O }
    else {!!}
    where
      if_then_else : {A : Set} → Bool → A → A → A
      if_then_else true a b = a
      if_then_else false a b = b

      x' = tl x
      y' = tl y

      evend = true

      signd' = O

  average : Real → Real → Real
  average x y = {!!}
open Average public

_⊕_ : Real → Real → Real
a ⊕ b = average a b


-- Computation with arbitrary precision
compute : Nat → Real → Float
compute 0       r = primNatToFloat 0
compute (suc n) r =
  (primFloatDiv
    (primFloatPlus [ hd r ]ᵈ  (compute n (tl r)))
    (primNatToFloat 2)
  )
  where
    [_]ᵈ : Digit → Float
    [ I ]ᵈ = primNatToFloat 1
    [ O ]ᵈ = primNatToFloat 0
    [ U ]ᵈ = primFloatNegate (primNatToFloat 1)

show : Real → String
show r = primShowFloat (compute 1000 r)
