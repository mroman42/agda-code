{-# OPTIONS --cubical #-}
open import Cubical.Foundations.Prelude
open import Cubical.Data.Bool

-- Freeness étude 1: groups.
--
-- Free structures can be constructed in a 'boring' way, declaring the
-- generators and quotienting by the axioms of the structure. Sometimes, they
-- can be also constructed in a way that helps computation: proofs that were
-- troublesome before become transparent on these structures.
--
-- This is the example of groups and reduced words. The free group can be
-- constructed as the set of 'reduced' words: words such that each element, x,
-- never appears next to its inverse, (inv x).
--
-- We take the fact that the inverse of the multiplication is the reversed
-- multiplication of the inverses.
--
-- 1. The boring construction of the free group, quotienting with cubical Agda,
--    allows a proof in four steps (inverse-multiplication).
-- 2. Reduced words allow a direct proof (inverse-multiplication-2).
--
-- We postulate the missing theorem, it will be part of an upcoming library.


infixr 5 _*ₛ_

data FreeGroup (A : Type) : Type where
  eₛ : FreeGroup A
  [_] : A -> FreeGroup A
  _*ₛ_ : FreeGroup A -> FreeGroup A -> FreeGroup A
  invₛ : FreeGroup A -> FreeGroup A 
  assocₛ : ∀ x y z -> (x *ₛ (y *ₛ z)) ≡ ((x *ₛ y) *ₛ z)
  unitlₛ : ∀ x -> x *ₛ eₛ ≡ x
  unitrₛ : ∀ x -> eₛ *ₛ x ≡ x
  invrlₛ : ∀ x -> x *ₛ (invₛ x) ≡ eₛ
  invrrₛ : ∀ x -> (invₛ x) *ₛ x ≡ eₛ
  
record Group (G : Type) : Type where
  field
    e : G
    _*_ : G -> G -> G
    inv : G -> G
    
    assoc : ∀ x y z -> (x * (y * z)) ≡ ((x * y) * z)
    unitl : ∀ x -> x * e ≡ x
    unitr : ∀ x -> e * x ≡ x
    invrl : ∀ x -> x * (inv x) ≡ e
    invrr : ∀ x -> (inv x) * x ≡ e
open Group {{...}} public
  
initial : ∀ {A G : Type} {{grp : Group G}} -> (A -> G) -> FreeGroup A -> G
initial α eₛ = e 
initial α [ x ] = α x
initial α (t *ₛ s) = initial α t * initial α s
initial α (invₛ t) = inv (initial α t)
initial α (assocₛ s r t i) = assoc (initial α s) (initial α r) (initial α t) i
initial α (unitlₛ t i) = unitl (initial α t) i
initial α (unitrₛ t i) = unitr (initial α t) i
initial α (invrlₛ t i) = invrl (initial α t) i
initial α (invrrₛ t i) = invrr (initial α t) i


inverse-multiplication : ∀ {A} {{grp : Group A}} (x y : A) 
 -> x * (y * ((inv y) * (inv x))) ≡ e
inverse-multiplication x y = 
    x * (y * ((inv y) * (inv x))) ≡⟨ cong (x *_) (assoc y (inv y) (inv x)) ⟩
    x * ((y * (inv y)) * (inv x)) ≡⟨ cong (x *_) (cong (_* (inv x)) (invrl y)) ⟩
    x * (e * (inv x))             ≡⟨ cong (x *_) (unitr (inv x)) ⟩
    x * (inv x)                   ≡⟨ invrl x ⟩
    e ∎



-- Words
infixr 5 _·_
infixr 5 _-·_
data Word (A : Set) : Set where
  ▨  : Word A
  _·_ : (x : A) -> Word A  -> Word A
  _-·_ : (x : A) -> Word A  -> Word A

invert : {A : Set} -> Word A -> Word A
invert ▨ = ▨
invert (x · w) = x -· invert w
invert (x -· w) = x · invert w

snoc : ∀ {A} -> Word A -> A -> Word A
snoc ▨ a = a · ▨
snoc (x  · w) a = x  · snoc w a
snoc (x -· w) a = x -· snoc w a

snoc⁻ : ∀ {A} -> Word A -> A -> Word A
snoc⁻ ▨ a = a -· ▨
snoc⁻ (x  · w) a = x  · snoc⁻ w a
snoc⁻ (x -· w) a = x -· snoc⁻ w a

reverse : ∀ {A} -> Word A -> Word A
reverse ▨ = ▨  
reverse (x  · w) = snoc  (reverse w) x
reverse (x -· w) = snoc⁻ (reverse w) x

record Eq (A : Set) : Set where
  field
    _==_ : (x y : A) -> Bool
open Eq {{...}} public

_++c_ : ∀ {A} {{eqA : Eq A}} -> Word A -> Word A -> Word A
▨ ++c w₂ = w₂
(x · w₁) ++c w₂ = x · (w₁ ++c w₂)
(x -· w₁) ++c w₂ = x -· (w₁ ++c w₂)

_++r_ : ∀ {A} {{eqA : Eq A}} -> Word A -> Word A -> Word A
▨ ++r w₂ = w₂ 
(x · w₁) ++r ▨ = reverse (x · w₁)
(x · w₁) ++r (y · w₂) = reverse (x · w₁) ++c (y · w₂)
(x · w₁) ++r (y -· w₂) with x == y 
... | true  = w₁ ++r w₂
... | false = reverse (x · w₁) ++c (y -· w₂) 
(x -· w₁) ++r ▨ = reverse (x -· w₁)
(x -· w₁) ++r (y · w₂) with x == y 
... | true = w₁ ++r w₂
... | false = reverse (x -· w₁) ++c (y · w₂)
(x -· w₁) ++r (y -· w₂) = reverse (x -· w₁) ++c (y -· w₂)

infixr 5 _++_
_++_ : ∀ {A} {{eqA : Eq A}} -> Word A -> Word A -> Word A
w₁ ++ w₂ = reverse w₁ ++r w₂


fromWord : ∀ {A : Type} -> Word A -> FreeGroup A
fromWord ▨ = eₛ
fromWord (x · w) = [ x ] *ₛ fromWord w
fromWord (x -· w) = invₛ [ x ] *ₛ fromWord w

postulate
  assoc-word : ∀ {A : Type} {{eqA : Eq A}} (w w₁ w₂ : Word A) -> w ++ (w₁ ++ w₂) ≡ (w ++ w₁) ++ w₂
  unitl-word : ∀ {A : Type} {{eqA : Eq A}} (w : Word A) -> w ++ ▨ ≡ w 
  unitr-word : ∀ {A : Type} {{eqA : Eq A}} (w : Word A) -> ▨ ++ w ≡ w 
  invrl-word : ∀ {A : Type} {{eqA : Eq A}} (w : Word A) -> w ++ invert w ≡ ▨
  invrr-word : ∀ {A : Type} {{eqA : Eq A}} (w : Word A) -> invert w ++ w ≡ ▨

toWord : ∀ {A : Type} {{eqA : Eq A}} -> FreeGroup A -> Word A
toWord eₛ = ▨ 
toWord [ x ] = x · ▨
toWord (t *ₛ s) = toWord t ++ toWord s
toWord (invₛ t) = invert (toWord t)
toWord (assocₛ t t₁ t₂ i) = assoc-word (toWord t) (toWord t₁) (toWord t₂) i
toWord (unitlₛ t i) = unitl-word (toWord t) i
toWord (unitrₛ t i) = unitr-word (toWord t) i
toWord (invrlₛ t i) = invrl-word (toWord t) i
toWord (invrrₛ t i) = invrr-word (toWord t) i 

postulate
  freeness : ∀ {A : Type} {{eqA : Eq A}} -> (t : FreeGroup A) -> t ≡ fromWord (toWord t) 

data Signature : Type where
  X : Signature
  Y : Signature  

_==S_ : Signature -> Signature -> Bool
X ==S X = true
X ==S Y = false
Y ==S X = false
Y ==S Y = true

instance
  eqSig : Eq Signature
  eqSig = record { _==_ = _==S_ }  

free : {A : Type} {{eqA : Eq A}} {G : Type} {{grp : Group G}} -> 
  (α : A -> G) -> (t : FreeGroup A) -> initial α t ≡ initial α (fromWord (toWord t))
free α t = cong (initial α) (freeness t)

_⊗_ : {A : Type} -> FreeGroup A -> FreeGroup A -> FreeGroup A
_⊗_ = _*ₛ_
Xₜ = [ X ]
Yₜ = [ Y ]

Inv : {A : Type} -> FreeGroup A -> FreeGroup A
Inv = invₛ

inverse-multiplication-2 : ∀ {G} {{grp : Group G}} (x y : G) 
  -> x * (y * (inv y * inv x)) ≡ e
inverse-multiplication-2 {G} x y = 
  x * (y * (inv y * inv x)) 
    ≡⟨ free (λ { X → x ; Y → y }) (Xₜ ⊗ (Yₜ ⊗ (Inv Yₜ ⊗ Inv Xₜ))) ⟩
  e ∎
