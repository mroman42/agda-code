module Equality where

infix 4 _≡_
data _≡_ {a} {A : Set a} (x : A) : A → Set a where
  instance refl : x ≡ x
{-# BUILTIN EQUALITY _≡_ #-}

-- Composition of equalities. This can be read as transitivity.
_·_ : {A : Set} {a b c : A} → a ≡ b → b ≡ c → a ≡ c
refl · q = q

-- Inverse of an equality. This can be read as symmetry.
inv : {A : Set} {a b : A} → a ≡ b → b ≡ a
inv refl = refl

-- Equalities are also preserved by functions.
ap : {A B : Set} (f : A → B) {a b : A} → a ≡ b → f a ≡ f b
ap f refl = refl



infixr 2 _≡⟨_⟩_
_≡⟨_⟩_ : {A : Set} (x : A) {y z : A} → x ≡ y → y ≡ z → x ≡ z
_ ≡⟨ refl ⟩ p2 = p2

infix  3 _∎
_∎ : {A : Set} (x : A) → x ≡ x
x ∎ = refl

infix  1 begin_
begin_ : {A : Set} {x y : A} → x ≡ y → x ≡ y
begin_ p = p
