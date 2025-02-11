open import Relation.Binary.PropositionalEquality.Properties using (module ≡-Reasoning)
open import Relation.Binary.PropositionalEquality hiding ([_])
open import Tactic.Cong

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


inverse-multiplication : ∀ {A} {{grp : Group A}} (x y : A) 
 -> x * (y * ((y -) * (x -))) ≡ e
inverse-multiplication x y = 
  begin 
    x * (y * ((y -) * (x -))) ≡⟨ cong (x *_)                  assoc ⟩
    x * ((y * (y -)) * (x -)) ≡⟨ cong (x *_) (cong (_* (x -)) invrl) ⟩
    x * (e * (x -))           ≡⟨ cong (x *_)                  unitr ⟩
    x * (x -)                 ≡⟨                              invrl ⟩
    e
  ∎
  where open ≡-Reasoning  