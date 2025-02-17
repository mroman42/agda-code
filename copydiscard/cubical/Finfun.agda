{-# OPTIONS --type-in-type #-}
{-# OPTIONS --cubical #-}
{-# OPTIONS --allow-unsolved-metas #-}

open import Cubical.Foundations.Prelude
open import Cubical.Data.Bool hiding (_⊕_)
open import Cubical.Data.Vec
open import Cubical.Data.Nat
open import Cubical.Data.FinData

postulate
  trustMe : ∀ {a} {A : Set a} {x y : A} → x ≡ y

_!!_ : ∀ {A B} -> A -> A ≡ B -> B
a !! p = transport p a


opaque
  looksup : ∀ {n} {A : Set} → Vec A n → Fin n → A
  looksup v f = lookup f v

map-functoriality : ∀ {A B C n} (f : A -> B) (g : B -> C) (l : Vec A n) -> map g (map f l) ≡ map (λ i -> g (f i)) l
map-functoriality f g [] = refl
map-functoriality f g (x ∷ l) = cong (λ i → g (f x) ∷ i) (map-functoriality f g l)

-- map-extensionality : ∀ {A B n} {f g : A → B} {x : Vec A n} -> ((i : A) -> f i ≡ g i) -> map f x ≡ map g x
-- map-extensionality {x = []} htp = refl
-- map-extensionality {f = f} {g = g} {x = i ∷ x} htp = {!   !} -- cong (λ j → g i ∷ j) (map-extensionality htp)


-- Functions.
Function : ℕ → ℕ → Set
Function n m = Vec (Fin m) n


-- Category of finite functions.
id : {n : ℕ} → Function n n
id {zero} = []
id {suc n} = zero ∷ map suc id

_⊳_ : ∀ {x y z} -> Function x y -> Function y z -> Function x z
f ⊳ g = map (looksup g) f

⊳-assoc : ∀{x y z w} (f : Function x y) (g : Function y z) (h : Function z w)
  -> (f ⊳ g) ⊳ h ≡ f ⊳ (g ⊳ h)
⊳-assoc f g h = trustMe

⊳-lunit : ∀ {x y} {f : Function x y}
  -> id ⊳ f ≡ f 
⊳-lunit = trustMe

⊳-runit : ∀ {x y} {f : Function x y}
  -> f ⊳ id ≡ f 
⊳-runit = trustMe


α≅ : ∀ {x} {y} {z} -> Function (x + (y + z)) ((x + y) + z)
α≅ {x} {y} {z} = id {x + y + z} !! cong (λ i -> Function i (x + y + z)) (sym (+-assoc x y z))

ρ≅ : ∀ {x} -> Function x (x + zero)
ρ≅ {x} = id {x} !! cong (Function x) (sym (+-zero x))



-- Symmetry
σ : (x : ℕ) -> (y : ℕ) -> Function (x + y) (y + x)
σ zero y = ρ≅
σ (suc x) y = {!   !}

-- Injections
ρinj : ∀ {m n} → Fin m → Fin (n + m)
ρinj {m} {n} i = {!   !}

ιinj : ∀ {m n} → Fin m → Fin (m + n)
ιinj {m} {n} i = {!   !}

ι : ∀{x} y -> Function x (x + y)
ι {x} y = map ιinj id

ρ : ∀{x} y -> Function x (y + x)
ρ {x} y = map ρinj id

pairing : ∀ {x₁ x₂ y} -> Function x₁ y -> Function x₂ y -> Function (x₁ + x₂) y
pairing f g = f ++ g

_⊕_ : ∀{x₁ x₂ y₁ y₂} -> Function x₁ y₁ -> Function x₂ y₂ -> Function (x₁ + x₂) (y₁ + y₂)
_⊕_ {x₁} {x₂} {y₁} {y₂} f g = (f ⊳ ι y₂) ++ (g ⊳ ρ y₁)

⊕-idid : (x y : ℕ) -> id {x} ⊕ id {y} ≡ id {x + y}
⊕-idid = {!  !}  

_∘_ : ∀ {x y z} -> Function y z -> Function x y -> Function x z
x ∘ y = y ⊳ x

⊕-id-∘ : ∀ {u x y z} (α : Function x y) (β : Function y z) 
  -> ((id {u} ⊕ α) ⊳ (id {u} ⊕ β)) ≡ (id {u} ⊕ (α ⊳ β))
⊕-id-∘ α β = {!   !}


-- ++-assoc : ∀ x y z w (f : Function x w) (g : Function y w) (h : Function z w)
--     -> ((f ++ g) ++ h)  ≡[ +-assoc x y z ]  f ++ (g ++ h)
-- ++-assoc zero y z w [] g h          = refl
-- ++-assoc (suc x) y z w (f₁ ∷ f) g h = cong-cons f₁ (+-assoc x y z) (++-assoc x y z w f g h)

-- ++-assoc : ∀ {A : Set} {m n k} (xs : Vec A m) (ys : Vec A n) (zs : Vec A k) →
--            PathP (λ i → Vec A (+-assoc m n k (~ i))) ((xs ++ ys) ++ zs) (xs ++ ys ++ zs)
-- ++-assoc {m = zero} [] ys zs = refl
-- ++-assoc {m = suc m} (x ∷ xs) ys zs i = x ∷ ++-assoc' xs ys zs i



-- ⊳-runit : 
-- map (lookup (map (lookup h) g)) f ≡⟨⟩ 
-- map (lookup (map (lookup γ) β)) α ≡⟨ map-extensionality (λ i -> lookup-map i (lookup γ) β) ⟩ 
-- map (λ i -> lookup γ (lookup β i)) α ≡⟨ sym (map-functoriality α) ⟩ 
-- map (lookup γ) (map (lookup β) α) ≡⟨⟩ 
 
