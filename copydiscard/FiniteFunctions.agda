{-# OPTIONS --type-in-type #-}
{-# OPTIONS --rewriting #-}

-- A finite function n → m is a Vec n (Finset m).
-- We will prove finite functions form an op-copy-discard category first.

open import Agda.Builtin.Equality
open import Agda.Builtin.Equality.Rewrite


open import Data.Fin renaming (_+_ to _+f_) hiding (pred) renaming (cast to castf)
open import Data.Vec
open import Data.Nat
open import Data.Vec.Properties
open import Data.Empty
open import Data.Nat.Properties using (+-identityʳ)
open import Relation.Binary.PropositionalEquality.Core using (_≡_; refl; trans; cong; sym)
open import Data.List renaming (map to lmap ; lookup to llookup ; _++_ to _++l_)
open import Tactic.Cong
open import Relation.Binary.PropositionalEquality.Properties using (module ≡-Reasoning)

transport : ∀ {A} -> (P : A → Set) -> {x y : A} -> (x ≡ y) -> P x -> P y
transport _ refl u = u

trns : ∀ {A B} -> (A ≡ B) -> A -> B
trns refl x = x

Function : ℕ → ℕ → Set
Function n m = Vec (Fin m) n

id : (n : ℕ) → Function n n
id zero = [] 
id (suc n) = zero ∷ (map suc (id n))

-- Composition of finite functions.
reindex : ∀ {A n m} -> Function n m -> Vec A m -> Vec A n
reindex f x = map (lookup x) f

composition : ∀ {x y z} → Function x y -> Function y z -> Function x z
composition = reindex

_·_ : ∀ {x y z} → Function x y -> Function y z -> Function x z
f · g = composition f g

_∘_ : ∀ {x y z} → Function y z -> Function x y -> Function x z
g ∘ f = composition f g

map-extensionality : ∀ {A B n} {f g : A → B} {x : Vec A n} -> ((i : A) -> f i ≡ g i) -> map f x ≡ map g x
map-extensionality {x = []} htp = refl
map-extensionality {f = f} {g = g} {x = i ∷ x} htp rewrite htp i = cong (λ j → g i ∷ j) (map-extensionality htp)

map-functoriality : ∀ {A B C n} {f : A -> B} {g : B -> C} -> (l : Vec A n) -> map g (map f l) ≡ map (λ i -> g (f i)) l
map-functoriality [] = refl
map-functoriality {f = f} {g = g} (x ∷ l) = cong (λ i → g (f x) ∷ i) (map-functoriality l)

reindexAssociative : ∀{x y z w} (α : Function x y) (β : Function y z) (γ : Vec w z)
  -> map (lookup γ) (map (lookup β) α) ≡ map (lookup (map (lookup γ) β)) α
reindexAssociative α β γ = sym (
    begin
    reindex α (reindex β γ) ≡⟨⟩ 
    map (lookup (map (lookup γ) β)) α ≡⟨⟩ 
    map (lookup (map (lookup γ) β)) α ≡⟨ map-extensionality (λ i -> lookup-map i (lookup γ) β) ⟩ 
    map (λ i -> lookup γ (lookup β i)) α ≡⟨ sym (map-functoriality α) ⟩ 
    map (lookup γ) (map (lookup β) α) ≡⟨⟩ 
    reindex (reindex α β) γ
    ∎
  )
  where open ≡-Reasoning


reindexFunctorial : ∀{A x y z} 
  (α : Function x y) 
  (β : Function y z) 
  (Z : Vec A z)
  -> reindex (β ∘ α) Z ≡ reindex α (reindex β Z)
reindexFunctorial α β Z = reindexAssociative α β Z



composition-associative : ∀{x y z w}
    (f : Function x y) -> (g : Function y z) -> (h : Function z w)
    -> (h ∘ (g ∘ f)) ≡ ((h ∘ g) ∘ f)
composition-associative f g h = reindexFunctorial f g h

-- suc-id : ∀{x} -> zero ∷ map suc (id x) ≡ id (suc x) 
-- suc-id = refl

lookup-suc-map : ∀{x y z} {f₁ : Fin y} (l : Vec (Fin x) z) (f : Vec (Fin y) x)
  -> map (lookup (f₁ ∷ f)) (map suc l) ≡ map (lookup f) l
lookup-suc-map {z = zero} [] f = refl
lookup-suc-map {z = suc z} (x ∷ l) f = cong (lookup f x ∷_) (lookup-suc-map l f)


composition-left-unital : ∀ {x y}
    -> {f : Function x y}
    -> f ∘ (id x) ≡ f 
composition-left-unital {zero} {y} {[]} = refl
composition-left-unital {suc x} {y} {f₁ ∷ f} = cong (f₁ ∷_) (
  begin
    map (lookup (f₁ ∷ f)) (map suc (id x)) ≡⟨ lookup-suc-map (id x) f ⟩
    map (lookup f) (id x)                  ≡⟨ composition-left-unital ⟩
    f
  ∎)
  where open ≡-Reasoning

lookup-me : (x : ℕ) -> (i : Fin x) -> lookup (id x) i ≡ i
lookup-me (suc x) zero = refl
lookup-me (suc x) (suc i) = 
  begin
    lookup (map suc (id x)) i   ≡⟨ lookup-map i suc (id x) ⟩
    suc (lookup (id x) i)       ≡⟨ cong! (lookup-me x i) ⟩
    suc i 
  ∎
  where open ≡-Reasoning

composition-right-unital : ∀ {x y}
  -> {f : Function x y}
  -> (id y) ∘ f ≡ f 
composition-right-unital {x} {y} {[]} = refl
composition-right-unital {x} {y} {f₁ ∷ f} =
  begin 
     (id y) ∘ (f₁ ∷ f)   ≡⟨ cong (λ i -> i ∷ ((id y) ∘ f)) (lookup-me y f₁) ⟩ 
     f₁ ∷ ((id y) ∘ f)   ≡⟨ cong! composition-right-unital ⟩ 
     f₁ ∷ f
  ∎
  where open ≡-Reasoning
    

postulate
  pluszero : ∀ {x} -> x ≡ x + zero

ιinj : ∀ {m n} → Fin m → Fin (m + n)
ιinj {m} {n} i = (_↑ˡ_) i n

ρinj : ∀ {m n} → Fin m → Fin (n + m)
ρinj {m} {n} i = (_↑ʳ_) n i


-- Inclusion functions, iotas.
ι : ∀{x y} -> Function x (x + y)
ι {x} = map ιinj (id x)

ρ : ∀{x y} -> Function x (y + x)
ρ {x} = map ρinj (id x)

-- _⋊_ : ∀{x y} -> Function x y -> (k : ℕ) -> Function (x + k) (y + k)
-- f ⋊ zero = transport {!   !} {!  !} {!   !}
-- f ⋊ suc k = {!   !}

coproduct : ∀{x y z} -> Function x z -> Function y z -> Function (x + y) z
coproduct f g = f ++ g

postulate
  +-assoc : ∀ x y z -> x + y + z ≡ x + (y + z)

-- (++-assoc)
coproduct-associative : ∀ {x y z w} 
  -> .(eq : (x + y) + z ≡ x + (y + z)) 
  -> (f : Function x w) 
  -> (g : Function y w) 
  -> (h : Function z w)
  -> cast eq ((f ++ g) ++ h) ≡ f ++ (g ++ h)
coproduct-associative eq [] g h = cast-is-id eq (g ++ h)
coproduct-associative eq (x ∷ f) g h = cong (x ∷_) (coproduct-associative (cong pred eq) f g h)

private
  variable
    x₁ x₂ x₃ y₁ y₂ y₃ : ℕ

tensor : Function x₁ y₁ -> Function x₂ y₂ -> Function (x₁ + x₂) (y₁ + y₂)
tensor f g = (ι ∘ f) ++ (ρ ∘ g)

_⊕_ = tensor

castfv : ∀{A m n} .(eq : m ≡ n) → Vec (Fin m) A → Vec (Fin n) A
castfv eq [] = []
castfv eq (x ∷ v) = castf eq x ∷ castfv eq v

postulate
  reindex-whiskering : ∀{A x y u} (φ : Function u x) (X : Vec A x) (Y : Vec A y)
    -> reindex (φ ⊕ id y) (X ++ Y) ≡ reindex φ X ++ Y



-- tensor-assoc :
--   .(eqx : (x₁ + x₂) + x₃ ≡ x₁ + (x₂ + x₃)) 
--   .(eqy : (y₁ + y₂) + y₃ ≡ y₁ + (y₂ + y₃)) 
--   (f₁ : Function x₁ y₁)
--   (f₂ : Function x₂ y₂)
--   (f₃ : Function x₃ y₃)
--   -> cast eqx (castfv eqy ((f₁ ⊕ f₂) ⊕ f₃)) ≡ f₁ ⊕ (f₂ ⊕ f₃)
-- tensor-assoc eqx eqy f₁ f₂ f₃ = 
--   begin
--      cast eqx (castfv eqy ((f₁ ⊕ f₂) ⊕ f₃)) ≡⟨ {!   !} ⟩
--      (f₁ ⊕ (f₂ ⊕ f₃))
--   ∎
--   where open ≡-Reasoning
   