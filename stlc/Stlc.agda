module Stlc where

-- Definition
data Type : Set where
  ⊤ : Type
  _×_ : Type → Type → Type
  _⊃_  : Type → Type → Type
open import Context (Type)


infix 4 _⊢_
data _⊢_ (Γ : Cxt) : Type → Set where
  var : ∀ {A}
    → A ∈ Γ
    ----------
    → Γ ⊢ A
    
  pair : ∀ {A B}
    → Γ ⊢ A
    → Γ ⊢ B
    ------------
    → Γ ⊢ A × B

  pi1 : ∀ {A B}
    → Γ ⊢ A × B
    -------------
    → Γ ⊢ A

  pi2 : ∀ {A B}
    → Γ ⊢ A × B
    -------------
    → Γ ⊢ B

  lambda : ∀ {A B}
    → Γ , A ⊢ B
    ----------------
    → Γ ⊢ A ⊃ B

  app : ∀ {A B}
    → Γ ⊢ A ⊃ B
    → Γ ⊢ A
    ----------
    → Γ ⊢ B

  unit :

    ----------------
      Γ ⊢ ⊤



example : ∀{A} → ∗ ⊢ A ⊃ A
example = lambda (var lz)

   

-- Weakening
weakg : ∀ {Γ Ω B}
  → Γ ⊆ Ω
  → Γ ⊢ B
  → Ω ⊢ B
weakg α (var x) = var (α x)
weakg α (pair a b) = pair (weakg α a) (weakg α b)
weakg α (pi1 a) = pi1 (weakg α a)
weakg α (pi2 a) = pi2 (weakg α a)
weakg α (lambda a) = lambda (weakg (subvar α) a)
weakg α (app a a₁) = app (weakg α a) (weakg α a₁)
weakg α unit = unit

weak : ∀ {Γ Ω B} → Γ ⊢ B → Γ ∪ Ω ⊢ B
weak = weakg subunion


-- Renaming
renam : ∀ {Γ A B C} → Γ , A , B ⊢ C → Γ , B , A ⊢ C
renam = weakg twist


-- Substitution
{-# NON_TERMINATING #-}
subs : ∀ {Γ A B} → Γ ⊢ A → Γ , A ⊢ B → Γ ⊢ B
subs x (lambda y) = lambda (subs (weak x) (renam y))
subs x (var lz) = x
subs x (var (ls y)) = var y
subs x (pair y z) = pair (subs x y) (subs x z)
subs x (pi1 y) = pi1 (subs x y)
subs x (pi2 y) = pi2 (subs x y)
subs x (app y z) = app (subs x y) (subs x z)
subs x unit = unit


-- Evaluation
eval : ∀ {Γ A} → Γ ⊢ A → Γ ⊢ A
eval (var x) = var x
eval unit = unit
eval (pair x y) = pair (eval x) (eval y)
eval (pi1 x) with eval x
eval (pi1 x) | pair y z = y
eval (pi1 x) | var n = pi1 (var n)
eval (pi1 x) | pi1 y = pi1 (pi1 y)
eval (pi1 x) | pi2 y = pi1 (pi2 y)
eval (pi1 x) | app y z = pi1 (app y z)
eval (pi2 x) with eval x
eval (pi2 x) | pair y z = z
eval (pi2 x) | var n = pi2 (var n)
eval (pi2 x) | pi1 y = pi2 (pi1 y)
eval (pi2 x) | pi2 y = pi2 (pi2 y)
eval (pi2 x) | app y z = pi2 (app y z)
eval (lambda m) = lambda (eval m)
eval (app f x) with (eval f) | (eval x)
eval (app f x) | lambda y | z = subs z y
eval (app f x) | var n | z = app (var n) z
eval (app f x) | pi1 y | z = app (pi1 y) z
eval (app f x) | pi2 y | z = app (pi2 y) z
eval (app f x) | app y z | w = app (app y z) w

example2 : ∀{A B} → ∗ ⊢ A ⊃ (B ⊃ A)
example2 = pi1 (pair (lambda (lambda (var (ls lz)))) unit)
