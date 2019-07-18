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
record Game (Σ X S Y R : Set) : Set where
  field
    play : Σ -> X -> Y
    coplay : Σ -> X -> R -> S
    best : X -> (Y -> R) -> Σ -> Σ -> Bool
open Game

sequential : {Σ₁ Σ₂ X S Y R Z Q : Set} -> Game Σ₁ X S Y R -> Game Σ₂ Y R Z Q -> Game (Σ₁ × Σ₂) X S Z Q
sequential {Σ₁} {Σ₂} {X} {S} {Y} {R} {Z} {Q} G H = record
  { play = λ { (σ , τ) x -> play H τ (play G σ x) }
  ; coplay = λ { (σ , τ) x q -> coplay G σ x (coplay H τ (play G σ x) q) }
  ; best = sbest
  }
  where
    sbest : X -> (Z -> Q) -> Σ₁ × Σ₂ -> Σ₁ × Σ₂ -> Bool
    sbest x f (σ , τ) (σ' , τ') = (best G x f' σ σ') && (best H (play G σ x) f τ τ')
      where
        f' : Y -> R
        f' y = coplay H τ y (f (play H τ y))

parallel : {Σ₁ Σ₂ X₁ S₁ Y₁ R₁ X₂ S₂ Y₂ R₂ : Set}
  -> Game Σ₁ X₁ S₁ Y₁ R₁
  -> Game Σ₂ X₂ S₂ Y₂ R₂
  -> Game (Σ₁ × Σ₂) (X₁ × X₂) (S₁ × S₂) (Y₁ × Y₂) (R₁ × R₂)
parallel {Σ₁} {Σ₂} {X₁} {S₁} {Y₁} {R₁} {X₂} {S₂} {Y₂} {R₂} G₁ G₂ = record
  { play = pplay ; coplay = pcoplay ; best = pbest }
  where
    pplay : Σ₁ × Σ₂ -> X₁ × X₂ -> Y₁ × Y₂
    pplay (σ₁ , σ₂) (x₁ , x₂) = (play G₁ σ₁ x₁ , play G₂ σ₂ x₂)

    pcoplay : Σ₁ × Σ₂ -> X₁ × X₂ -> R₁ × R₂ -> S₁ × S₂
    pcoplay (σ₁ , σ₂) (x₁ , x₂) (r₁ , r₂) = (coplay G₁ σ₁ x₁ r₁ , coplay G₂ σ₂ x₂ r₂)

    pbest : X₁ × X₂ -> (Y₁ × Y₂ -> R₁ × R₂) -> Σ₁ × Σ₂ -> Σ₁ × Σ₂ -> Bool
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
coherence : {Σ₁ Σ₂ A B C D X Y Z W : Set}
  -> {{_ : Σ₁ ≅ Σ₂}}
  -> {{_ : A ≅ X}}
  -> {{_ : B ≅ Y}}
  -> {{_ : C ≅ Z}}
  -> {{_ : D ≅ W}}
  -> Game Σ₁ A B C D -> Game Σ₂ X Y Z W
coherence record
  { play = play
  ; coplay = coplay
  ; best = best }
  = record
  { play = λ s x -> iso (play (inviso s) (inviso x)) 
  ; coplay = λ s x w -> iso (coplay (inviso s) (inviso x) (inviso w))
  ; best = λ x f s s' -> best (inviso x) (λ c -> inviso (f (iso c))) (inviso s) (inviso s')
  }

------------------------
-- Prisoners' dilemma --
------------------------
cup : {X : Set} -> Game Unit X X Unit Unit
cup = record
  { play = λ _ _ -> unit
  ; coplay = λ _ z _ -> z
  ; best = λ _ _ _ _ -> true
  }

player1 : Game Bool Unit Unit Bool Nat
player1 = record
  { play = λ x unit -> x
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

player2 : Game Bool Unit Unit Bool Nat
player2 = player1

players : Game (Bool × Bool) Unit Unit (Bool × Bool) (Nat × Nat)
players = coherence (parallel player1 player2)

dilemma : Game Unit (Bool × Bool) Unit (Nat × Nat) Unit
dilemma = record
  { play = λ unit -> table
  ; coplay = λ _ _ _ -> unit
  ; best = λ _ _ _ _ -> true
  }
  where
    table : (Bool × Bool) -> (Nat × Nat)
    table (true  , true)  = 1 , 1
    table (true  , false) = 3 , 0
    table (false , false) = 2 , 2
    table (false , true)  = 0 , 3

wires : Game Unit Unit (Nat × Nat) Unit (Nat × Nat)
wires = record
  { play = λ _ _ → unit
  ; coplay = λ u u' -> λ z → z
  ; best = λ _ _ _ _ → true
  }

dilemmaWithWires : Game Unit (Bool × Bool) (Nat × Nat) (Nat × Nat) (Nat × Nat)
dilemmaWithWires = coherence (parallel dilemma wires)

PrisonersDilemma : Game (Bool × Bool) Unit Unit Unit Unit
PrisonersDilemma = coherence (sequential (sequential players dilemmaWithWires) cup)


-- Computation
test : Bool
test = best PrisonersDilemma unit (λ _ -> unit)
  (false , false)
  (true , true)

