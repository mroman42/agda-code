{-# OPTIONS --cubical #-}

open import Relation.Binary.PropositionalEquality.Properties using (module ≡-Reasoning)
open import Relation.Binary.PropositionalEquality hiding ([_])
open import Data.Sum
open import Data.Bool

open import Agda.Builtin.Equality
-- open import Agda.Builtin.Equality.Rewrite


infixr 5 _·_
infixr 5 _-·_
data Word (A : Set) : Set where
  ∎  : Word A
  _·_ : (x : A) -> Word A  -> Word A
  _-·_ : (x : A) -> Word A  -> Word A

invert : {A : Set} -> Word A -> Word A
invert ∎ = ∎
invert (x · w) = x -· invert w
invert (x -· w) = x · invert w

data Valid {A : Set} : (Word A) -> Set where
  valid∎ : Valid ∎
  valid+∎ : ∀ x -> Valid (x  · ∎)
  valid-∎ : ∀ x -> Valid (x -· ∎)
  valid++∎ : ∀ x y w -> Valid (y  · w) -> Valid (x · y · w)
  valid--∎ : ∀ x y w -> Valid (y -· w) -> Valid (x -· y -· ∎)
  valid+-∎ : ∀ x y w -> {x ≢ y} -> Valid (y -· w) -> Valid (x · y -· w)
  valid-+∎ : ∀ x y w -> {x ≢ y} -> Valid (y  · w) -> Valid (x -· y · w)

snoc : ∀ {A} -> Word A -> A -> Word A
snoc ∎ a = a · ∎
snoc (x  · w) a = x  · snoc w a
snoc (x -· w) a = x -· snoc w a

snoc⁻ : ∀ {A} -> Word A -> A -> Word A
snoc⁻ ∎ a = a -· ∎
snoc⁻ (x  · w) a = x  · snoc⁻ w a
snoc⁻ (x -· w) a = x -· snoc⁻ w a

reverse : ∀ {A} -> Word A -> Word A
reverse ∎ = ∎  
reverse (x  · w) = snoc  (reverse w) x
reverse (x -· w) = snoc⁻ (reverse w) x

reverse-snoc : ∀ {A} (w : Word A) x -> reverse (snoc w x) ≡ x · (reverse w)
reverse-snoc ∎ x = refl
reverse-snoc (y · w) x = cong (λ i → snoc i y) (reverse-snoc w x)
reverse-snoc (y -· w) x = cong (λ i -> snoc⁻ i y) (reverse-snoc w x)

reverse-reverse : ∀ {A} (w : Word A) -> w ≡ reverse (reverse w)
reverse-reverse ∎ = refl
reverse-reverse (x · w) = 
  begin
    x · w                        ≡⟨ cong (λ i → x · i) (reverse-reverse w) ⟩ 
    x · (reverse (reverse w))    ≡⟨ reverse-snoc (reverse w) x ⟨
    reverse (snoc (reverse w) x) 
  qed
  where open ≡-Reasoning renaming (_∎ to _qed)
reverse-reverse (x -· w) = {!   !}

reverse-snoc-valid : ∀ {A} w (x : A) -> Valid (x · w) -> Valid (snoc (reverse w) x)
reverse-snoc-valid ∎ x v = valid+∎ x
reverse-snoc-valid (x₁ · w) x v = {!    !}
reverse-snoc-valid (x₁ -· w) x v = {!   !}


-- reverse-valid : ∀ {A} w -> Valid {A} w -> Valid {A} (reverse w)
-- reverse-valid ∎ v = {!   !}
-- reverse-valid (x · ∎) _ = valid+∎ x
-- reverse-valid (x · y · w) (valid++∎ .x .y .w v) = {!   !}
-- reverse-valid (x · y -· w) v = {!   !}
-- reverse-valid (x -· w) v = {!   !}

record Eq (A : Set) : Set where
  field
    _==_ : (x y : A) -> Bool
open Eq {{...}} public

_++c_ : ∀ {A} {{eqA : Eq A}} -> Word A -> Word A -> Word A
∎ ++c w₂ = w₂
(x · w₁) ++c w₂ = x · (w₁ ++c w₂)
(x -· w₁) ++c w₂ = x -· (w₁ ++c w₂)

_++r_ : ∀ {A} {{eqA : Eq A}} -> Word A -> Word A -> Word A
∎ ++r w₂ = w₂ 
(x · w₁) ++r ∎ = reverse (x · w₁)
(x · w₁) ++r (y · w₂) = reverse (x · w₁) ++c (y · w₂)
(x · w₁) ++r (y -· w₂) with x == y 
... | true  = w₁ ++r w₂
... | false = reverse (x · w₁) ++c (y -· w₂) 
(x -· w₁) ++r ∎ = reverse (x -· w₁)
(x -· w₁) ++r (y · w₂) with x == y 
... | true = w₁ ++r w₂
... | false = reverse (x -· w₁) ++c (y · w₂)
(x -· w₁) ++r (y -· w₂) = reverse (x -· w₁) ++c (y -· w₂)

infixr 5 _++_
_++_ : ∀ {A} {{eqA : Eq A}} -> Word A -> Word A -> Word A
w₁ ++ w₂ = reverse w₁ ++r w₂

infixr 5 _⊕_
_⊕_ = _++_

[_] : ∀ {A} -> A -> Word A
[ x ] = x · ∎

[-_] : ∀ {A} -> A -> Word A
[- x ] = x -· ∎


data Signature : Set where
  a : Signature
  b : Signature

_==s_ : Signature -> Signature -> Bool
a ==s a = true
a ==s b = false
b ==s a = false
b ==s b = true

instance 
  signatureEq : Eq Signature
  signatureEq = record { _==_ = _==s_  }

infixr 5 _*_ 
record Group (A : Set) : Set where
  field
    e : A
    _*_ : A -> A -> A
    _- : A -> A
    
    assoc : ∀ {x y z} -> (x * (y * z)) ≡ ((x * y) * z)
    unitl : ∀ x -> x * e ≡ x
    unitr : ∀ {x} -> e * x ≡ x
    invrl : ∀ {x} -> x * (x -) ≡ e
    invrr : ∀ {x} -> (x -) * x ≡ e
open Group {{...}} public



F : ∀ {A G} {{grp : Group G}} -> (A -> G) -> Word A -> G
F α ∎ = e
F α (u · ∎) = α u
F α (u · x · w) = α u * F α (x · w)
F α (u · x -· w) = α u * F α (x -· w)
F α (v -· ∎) = α v -
F α (v -· x · w) = (α v -) * F α (x · w)
F α (v -· x -· w) = (α v -) * F α (x -· w)

postulate
  Fmult : ∀ {A G} {{eqa : Eq A}} {{grp : Group G}} -> (α : A -> G) -> (w₁ w₂ : Word A) -> F α (w₁ ⊕ w₂) ≡ F α w₁ * F α w₂
-- {-# REWRITE Fmult #-}

inverse-multip : [ a ] ⊕ [ b ] ⊕ [- b ] ⊕ [- a ] ≡ ∎
inverse-multip = refl  

-- inverse-multiplication : ∀ {G} {{grp : Group G}} (x y : G) 
--  -> x * (y * ((y -) * (x -))) ≡ e
-- inverse-multiplication {G} x y = 
--   begin 
--     x * (y * ((y -) * (x -)))                                     ≡⟨ refl ⟩
--     ((F β [ a ]) * ((F β [ b ]) * ((F β [- b ]) * (F β [- a ])))) ≡⟨ refl ⟩
--     ((F β [ a ]) * ((F β [ b F β ([- b ] ⊕ [- a ]))))       ≡⟨ {!   !} ⟩
--     F β ([ a ] ⊕ [ b ] ⊕ [- b ] ⊕ [- a ]) ≡⟨ {!   !} ⟩
--     x * ((y * (y -)) * (x -)) ≡⟨ cong (x *_) (cong (_* (x -)) invrl) ⟩
--     x * (e * (x -))           ≡⟨ cong (x *_)                  unitr ⟩
--     x * (x -)                 ≡⟨                              invrl ⟩
--     e
--   qed
--   where 
--     open ≡-Reasoning renaming (_∎ to _qed)
--     β : Signature -> G
--     β a = x
--     β b = y