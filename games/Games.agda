{-# OPTIONS --type-in-type #-}

open import Prelude.Bool
open import Prelude.Nat
open import Prelude.Unit
open import Prelude.Product renaming (Σ to ∑)

open import Isos

module Games where

------------------------------
-- Games and their category --
------------------------------
record Game (X S Y R : Set) : Set where
  field
    Σ : Set
    play : Σ -> X -> Y
    coplay : Σ -> X -> R -> S
    best : X -> (Y -> R) -> Σ -> Σ -> Bool
open Game

sequential : {X S Y R Z Q : Set} -> Game X S Y R -> Game Y R Z Q -> Game X S Z Q
sequential {X} {S} {Y} {R} {Z} {Q} G H = record
  { Σ = Σ G × Σ H
  ; play = λ { (σ , τ) x -> play H τ (play G σ x) }
  ; coplay = λ { (σ , τ) x q -> coplay G σ x (coplay H τ (play G σ x) q) }
  ; best = sbest
  }
  where
    sbest : X -> (Z -> Q) -> Σ G × Σ H -> Σ G × Σ H -> Bool
    sbest x f (σ , τ) (σ' , τ') = (best G x f' σ σ') && (best H (play G σ x) f τ τ')
      where
        f' : Y -> R
        f' y = coplay H τ y (f (play H τ y))

parallel : {X₁ S₁ Y₁ R₁ X₂ S₂ Y₂ R₂ : Set}
  -> Game X₁ S₁ Y₁ R₁
  -> Game X₂ S₂ Y₂ R₂
  -> Game (X₁ × X₂) (S₁ × S₂) (Y₁ × Y₂) (R₁ × R₂)
parallel {X₁} {S₁} {Y₁} {R₁} {X₂} {S₂} {Y₂} {R₂} G₁ G₂ = record
  { Σ = Σ G₁ × Σ G₂ ; play = pplay ; coplay = pcoplay ; best = pbest }
  where
    pplay : Σ G₁ × Σ G₂ -> X₁ × X₂ -> Y₁ × Y₂
    pplay (σ₁ , σ₂) (x₁ , x₂) = (play G₁ σ₁ x₁ , play G₂ σ₂ x₂)

    pcoplay : Σ G₁ × Σ G₂ -> X₁ × X₂ -> R₁ × R₂ -> S₁ × S₂
    pcoplay (σ₁ , σ₂) (x₁ , x₂) (r₁ , r₂) = (coplay G₁ σ₁ x₁ r₁ , coplay G₂ σ₂ x₂ r₂)

    pbest : X₁ × X₂ -> (Y₁ × Y₂ -> R₁ × R₂) -> Σ G₁ × Σ G₂ -> Σ G₁ × Σ G₂ -> Bool
    pbest (x₁ , x₂) f (σ₁ , σ₂) (σ₁' , σ₂') =
        best G₁ x₁ f₁ σ₁ σ₁' && best G₂ x₂ f₂ σ₂ σ₂'
      where
        f₁ : Y₁ -> R₁
        f₁ y₁ = fst (f (y₁ , play G₂ σ₂ x₂))

        f₂ : Y₂ -> R₂
        f₂ y₂ = snd (f ((play G₁ σ₁ x₁) , y₂))
      

---------------
-- Coherence --
---------------
coherence : {A B C D X Y Z W : Set}
  -> {{_ : A ≅ X}}
  -> {{_ : B ≅ Y}}
  -> {{_ : C ≅ Z}}
  -> {{_ : D ≅ W}}
  -> Game A B C D -> Game X Y Z W
coherence record
  { Σ = Σ
  ; play = play
  ; coplay = coplay
  ; best = best }
  = record
  { Σ = Σ
  ; play = λ s x -> iso (play s (inviso x)) 
  ; coplay = λ s x w -> iso (coplay s (inviso x) (inviso w))
  ; best = λ x f s s' -> best (inviso x) (λ c -> inviso (f (iso c))) s s'
  }

------------------------
-- Prisoners' dilemma --
------------------------
cup : {X : Set} -> Game X X Unit Unit
cup = record
  { Σ = Unit
  ; play = λ _ _ -> unit
  ; coplay = λ _ z _ -> z
  ; best = λ _ _ _ _ -> true
  }

player1 : Game Unit Unit Bool Nat
player1 = record
  { Σ = Bool
  ; play = λ x unit -> x
  ; coplay = λ _ _ _ -> unit
  ; best = bestresponse
  }
  where
    bestresponse : Unit -> (Bool -> Nat) -> Bool -> Bool -> Bool
    bestresponse unit f a b = f a ≤ f b
      where
        _≤_ : Nat -> Nat -> Bool
        zero ≤ m = true
        suc n ≤ zero = false
        suc n ≤ suc m = n ≤ m

player2 : Game Unit Unit Bool Nat
player2 = player1

players : Game Unit Unit (Bool × Bool) (Nat × Nat)
players = coherence (parallel player1 player2)

dilemma : Game (Bool × Bool) Unit (Nat × Nat) Unit
dilemma = record
  { Σ = Unit
  ; play = λ unit -> table
  ; coplay = λ _ _ _ -> unit
  ; best = λ _ _ _ _ -> true
  }
  where
    table : (Bool × Bool) -> (Nat × Nat)
    table (true  , true)  = 1 , 1
    table (true  , false) = 3 , 0
    table (false , false) = 2 , 2
    table (false , true)  = 0 , 3

wires : Game Unit (Nat × Nat) Unit (Nat × Nat)
wires = record
  { Σ = Unit
  ; play = λ _ _ → unit
  ; coplay = λ u u' -> λ z → z
  ; best = λ _ _ _ _ → true
  }

dilemmaWithWires : Game (Bool × Bool) (Nat × Nat) (Nat × Nat) (Nat × Nat)
dilemmaWithWires = coherence (parallel dilemma wires)

PrisonersDilemma : Game Unit Unit Unit Unit
PrisonersDilemma = sequential (sequential players dilemmaWithWires) cup

-- Computation
test : Bool
test = best PrisonersDilemma unit (λ _ → unit)
  (((true  , true) , unit , unit) , unit)
  (((false , false) , unit , unit) , unit)
