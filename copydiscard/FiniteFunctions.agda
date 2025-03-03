{-# OPTIONS --type-in-type #-}

-- A finite function n → m is a Vec n (Finset m).
-- We will prove finite functions form an op-copy-discard category first.

open import Agda.Builtin.Equality


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
open import EqualityHelp


-- Auxiliary functions.
transport : ∀ {A} -> (P : A → Set) -> {x y : A} -> (x ≡ y) -> P x -> P y
transport _ refl u = u

trns : ∀ {A B} -> (A ≡ B) -> A -> B
trns refl x = x

numbers : (n : ℕ) → Vec (Fin n) n
numbers zero = [] 
numbers (suc n) = zero ∷ (map suc (numbers n))

map-extensionality : ∀ {A B n} {f g : A → B} {x : Vec A n} -> ((i : A) -> f i ≡ g i) -> map f x ≡ map g x
map-extensionality {x = []} htp = refl
map-extensionality {f = f} {g = g} {x = i ∷ x} htp rewrite htp i = cong (λ j → g i ∷ j) (map-extensionality htp)

map-functoriality : ∀ {A B C n} {f : A -> B} {g : B -> C} -> (l : Vec A n) -> map g (map f l) ≡ map (λ i -> g (f i)) l
map-functoriality [] = refl
map-functoriality {f = f} {g = g} (x ∷ l) = cong (λ i → g (f x) ∷ i) (map-functoriality l)

map-identity : ∀ {A n} -> (l : Vec A n) -> map (λ i -> i) l ≡ l
map-identity {A} {zero} [] = refl
map-identity {A} {suc n} (x ∷ l) = cong (x ∷_) (map-identity l)

lookup-suc-map : ∀{x y z} {f₁ : Fin y} (l : Vec (Fin x) z) (f : Vec (Fin y) x)
  -> map (lookup (f₁ ∷ f)) (map suc l) ≡ map (lookup f) l
lookup-suc-map {z = zero} [] f = refl
lookup-suc-map {z = suc z} (x ∷ l) f = cong (lookup f x ∷_) (lookup-suc-map l f)

lookup-me : (x : ℕ) -> (i : Fin x) -> lookup (numbers x) i ≡ i
lookup-me (suc x) zero = refl
lookup-me (suc x) (suc i) = 
  begin
    lookup (map suc (numbers x)) i   ≡⟨ lookup-map i suc (numbers x) ⟩
    suc (lookup (numbers x) i)       ≡⟨ cong! (lookup-me x i) ⟩
    suc i 
  ∎
  where open ≡-Reasoning



-- Functions, definition.
Function : ℕ → ℕ → Set
Function n m = Vec (Fin m) n

-- Category of finite functions.
id : {n : ℕ} → Function n n
id {n} = numbers n

_⊳_ : ∀ {A n m} -> Function n m -> Vec A m -> Vec A n
f ⊳ x = map (lookup x) f

composition : ∀ {x y z} → Function x y -> Function y z -> Function x z
composition = _⊳_

_·_ : ∀ {x y z} → Function x y -> Function y z -> Function x z
f · g = composition f g

_∘_ : ∀ {x y z} → Function y z -> Function x y -> Function x z
g ∘ f = composition f g

reindexAssociative : ∀{x y z w} (α : Function x y) (β : Function y z) (γ : Vec w z)
  -> (α ⊳ β) ⊳ γ ≡ α ⊳ (β ⊳ γ)
reindexAssociative α β γ = sym (
    begin
    α ⊳ (β ⊳ γ) ≡⟨⟩ 
    map (lookup (map (lookup γ) β)) α ≡⟨⟩ 
    map (lookup (map (lookup γ) β)) α ≡⟨ map-extensionality (λ i -> lookup-map i (lookup γ) β) ⟩ 
    map (λ i -> lookup γ (lookup β i)) α ≡⟨ sym (map-functoriality α) ⟩ 
    map (lookup γ) (map (lookup β) α) ≡⟨⟩ 
    (α ⊳ β) ⊳ γ
    ∎
  )
  where open ≡-Reasoning

reindexFunctorial : ∀{A x y z} 
  (α : Function x y) 
  (β : Function y z) 
  (Z : Vec A z)
  -> (β ∘ α) ⊳ Z ≡ α ⊳ (β ⊳ Z)
reindexFunctorial α β Z = reindexAssociative α β Z

composition-associative : ∀{x y z w}
    (f : Function x y) -> (g : Function y z) -> (h : Function z w)
    -> (h ∘ (g ∘ f)) ≡ ((h ∘ g) ∘ f)
composition-associative f g h = reindexFunctorial f g h

composition-left-unital : ∀ {x y}
    -> {f : Function x y}
    -> f ∘ (id {x}) ≡ f 
composition-left-unital {zero} {y} {[]} = refl
composition-left-unital {suc x} {y} {f₁ ∷ f} = cong (f₁ ∷_) (
  begin
    map (lookup (f₁ ∷ f)) (map suc (id {x})) ≡⟨ lookup-suc-map (id {x}) f ⟩
    map (lookup f) (id {x})                  ≡⟨ composition-left-unital ⟩
    f
  ∎)
  where open ≡-Reasoning

composition-right-unital : ∀ {x y}
  -> {f : Function x y}
  -> (id {y}) ∘ f ≡ f 
composition-right-unital {x} {y} {[]} = refl
composition-right-unital {x} {y} {f₁ ∷ f} =
  begin 
     (id {y}) ∘ (f₁ ∷ f)   ≡⟨ cong (λ i -> i ∷ ((id {y}) ∘ f)) (lookup-me y f₁) ⟩ 
     f₁ ∷ ((id {y}) ∘ f)   ≡⟨ cong! composition-right-unital ⟩ 
     f₁ ∷ f
  ∎
  where open ≡-Reasoning


-- Inclusion functions.
ιinj : ∀ {m n} → Fin m → Fin (m + n)
ιinj {m} {n} i = i ↑ˡ n

ρinj : ∀ {m} n → Fin m → Fin (n + m)
ρinj {m} n i = n ↑ʳ i

pinj-zero : ∀ {m} i → ρinj {m} zero i ≡ i
pinj-zero i = refl

ι : ∀{x} y -> Function x (x + y)
ι {x} y = map ιinj (id {x})

-- ι-zero : ∀ x -> ι {x} zero ≡[ refl ]⟦ +-identityʳ x ⟧ id x
-- ι-zero zero = refl -- refl
-- ι-zero (suc x) = {!   !} -- cong-cons-suc {!   !} {!   !} refl (cong suc (+-identityʳ x)) {! ι-zero  !} {!   !} -- cong (zero ∷_) (map-identity (map suc (id x)))

ρ : ∀{x} y -> Function x (y + x)
ρ {x} y = map (ρinj y) (id {x})

ρ-zero : ∀ x -> ρ {x} zero ≡ id {x}
ρ-zero zero = refl
ρ-zero (suc x) = cong (zero ∷_) (map-identity (map suc (id {x})))


-- _⋊_ : ∀{x y} -> Function x y -> (k : ℕ) -> Function (x + k) (y + k)
-- f ⋊ zero = transport {!   !} {!  !} {!   !}
-- f ⋊ suc k = {!   !}

coproduct = _++_

++-unital : ∀ {A} x
  -> (X : Vec A x)
  -> (X ++ []) ≡[ +-identityʳ x ] X
++-unital zero [] = refl
++-unital (suc x) (X₁ ∷ X) = cong-cons X₁ (+-identityʳ x) (++-unital x X)

++-assoc : ∀ x y z w (f : Function x w) (g : Function y w) (h : Function z w)
   -> ((f ++ g) ++ h)  ≡[ +-assoc x y z ]  f ++ (g ++ h)
++-assoc zero y z w [] g h          = refl
++-assoc (suc x) y z w (f₁ ∷ f) g h = cong-cons f₁ (+-assoc x y z) (++-assoc x y z w f g h)

_⊕_ : ∀{x₁ x₂ y₁ y₂} -> Function x₁ y₁ -> Function x₂ y₂ -> Function (x₁ + x₂) (y₁ + y₂)
_⊕_ {x₁} {x₂} {y₁} {y₂} f g = (ι y₂ ∘ f) ++ (ρ y₁ ∘ g)


tensor = _⊕_

-- NEXT

⊕-unit-l : ∀ x y
  (f : Function x y)
  -> [] ⊕ f ≡ f
⊕-unit-l x y f = begin 
    ([] ⊕ f)                   ≡⟨⟩ 
    (ι y ∘ []) ++ (ρ zero ∘ f) ≡⟨ cong (_∘ f) (ρ-zero y) ⟩ 
    (ι y ∘ []) ++ (id {y} ∘ f)   ≡⟨ composition-right-unital ⟩ 
    f
  ∎ where open ≡-Reasoning



-- ⊕-assoc : ∀ x₁ x₂ x₃ y₁ y₂ y₃
--   (f₁ : Function x₁ y₁)
--   (f₂ : Function x₂ y₂)
--   (f₃ : Function x₃ y₃)
--   -> ((f₁ ⊕ f₂) ⊕ f₃) ≡[ +-assoc x₁ x₂ x₃ ]⟦ +-assoc y₁ y₂ y₃ ⟧ f₁ ⊕ (f₂ ⊕ f₃)
-- ⊕-assoc x₁ x₂ x₃ zero y₂ y₃ [] f₂ f₃ = 
--   begin
--     (([] ⊕ f₂) ⊕ f₃) ≡⟨ {!   !} ⟩ 
--     (f₂ ⊕ f₃) ≡⟨ {!   !} ⟩ 
--     ([] ⊕ (f₂ ⊕ f₃))
--   ∎
--   where open ≡-Reasoning
-- ⊕-assoc x₁ x₂ x₃ (suc y₁) y₂ y₃ f₁ f₂ f₃ = {!   !}


-- otp-correct : ∀ {{ℂ : SymMonCat}} {X : Obj} {{hopfX : HopfIntegral X}} ->
--   (x ∷ X  ⊢ uniform -> k ⨾ return [ k ⊕ (k ⊕ x) , k ⊕ x ])  ≡
--   (x ∷ X  ⊢ uniform -> n ⨾ return [ x , n ])
-- otp-correct = begin
--   (x ∷ X  ⊢ uniform -> k ⨾ return [ k ⊕ (k ⊕ x) , k ⊕ x ])  
--     ≡⟨ nilpotent ⟩
--   (x ∷ X  ⊢ uniform -> k ⨾ return [ x , k ⊕ x ])  
--     ≡⟨ hopfIntegral ⟩
--   (x ∷ X  ⊢ uniform -> n ⨾ return [ x , n ])  
  