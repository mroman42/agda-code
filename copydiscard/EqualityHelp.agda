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
open import Relation.Binary.PropositionalEquality.Properties using (module ≡-Reasoning)


-- Dependent equality between vectors.

_≡[_]_ : ∀{X m n} → Vec X m → m ≡ n → Vec X n → Set
xs ≡[ refl ] ys   =   xs ≡ ys
infix 2 _≡[_]_

cong-cons : ∀{X m n} (x : X) {xs : Vec X m} {ys : Vec X n} (p : m ≡ n)
  → xs ≡[ p ] ys → x ∷ xs  ≡[ cong suc p ]  x ∷ ys
cong-cons _ refl refl = refl

-- Dependent equality between fin-sets.

_≡⟦_⟧_ : ∀{m n} → Fin m → m ≡ n → Fin n → Set
xs ≡⟦ refl ⟧ ys   =   xs ≡ ys
infix 2 _≡⟦_⟧_

cong-suc : ∀{m n} {i : Fin m} {j : Fin n} (p : m ≡ n)
          → i ≡⟦ p ⟧ j → suc i ≡⟦ cong suc p ⟧ suc j
cong-suc refl refl = refl

_≡[_]⟦_⟧_ : ∀{m n x y} → Vec (Fin x) m → m ≡ n → x ≡ y -> Vec (Fin y) n → Set
xs ≡[ refl ]⟦ refl ⟧ ys   =   xs ≡ ys
infix 2 _≡[_]⟦_⟧_

cong-cons-suc : ∀{m n x y} (i : Fin x) (j : Fin y) {xs : Vec (Fin x) m} {ys : Vec (Fin y) n} (p : m ≡ n) (q : x ≡ y)
  -> i ≡⟦ q ⟧ j -> xs ≡[ p ]⟦ q ⟧ ys → i ∷ xs  ≡[ cong suc p ]⟦ q ⟧  j ∷ ys
cong-cons-suc i j refl refl refl refl = refl
