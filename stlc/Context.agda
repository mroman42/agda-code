module Context (Type : Set) where

data Cxt : Set where
  ∗ : Cxt
  _,_ : Cxt → Type → Cxt
infixl 8 _,_


infixl 7 _∪_
_∪_ : Cxt → Cxt → Cxt
Γ ∪ ∗ = Γ
Γ ∪ Δ , x = (Γ ∪ Δ) , x

infix 3 _∈_
data _∈_ (A : Type) : Cxt → Set where
  lz : ∀ {Γ} → A ∈ Γ , A
  ls : ∀ {B Γ} → A ∈ Γ → A ∈ Γ , B

mono : ∀ {Γ Ω A} → A ∈ Γ → A ∈ Γ ∪ Ω
mono {Ω = ∗}          u = u
mono {Ω = Ω , x}     lz = ls (mono lz)
mono {Ω = Ω , x} (ls u) = ls (mono (ls u))

_⊆_ : Cxt → Cxt → Set
Γ ⊆ Ω = ({A : Type} → A ∈ Γ → A ∈ Ω)

comm : ∀ {Γ Ω} → (Γ ∪ Ω) ⊆ (Ω ∪ Γ)
comm {∗} {∗} ()
comm {Γ , B} {∗} lz = lz
comm {Γ , B} {∗} (ls a) = ls (comm {Γ} a)
comm {∗} {Ω , B} lz = lz
comm {∗} {Ω , B} (ls a) = ls (comm {∗} a)
comm {Γ , B} {Ω , C} lz = ls (comm {Γ} lz)
comm {Γ , B} {Ω , C} (ls a) with comm {Γ , B} a
comm {Γ , B} {Ω , C} (ls a) | lz = lz
comm {Γ , B} {Ω , C} (ls a) | ls b = ls (comm {Γ} (ls (comm {Ω} b)))

subvar : ∀{Γ Ω A}
  →       Γ ⊆ Ω
  → (Γ , A) ⊆ (Ω , A)
subvar α lz = lz
subvar α (ls a) = ls (α a)

subunion : ∀{Γ Ω} → Γ ⊆ (Γ ∪ Ω)
subunion {∗} ()
subunion {Γ , A} {∗} a = a
subunion {Γ , A} {Ω , x} a = ls (mono {Γ , A} a)

twist : ∀{Γ A B} → (Γ , A , B) ⊆ (Γ , B , A)
twist lz = ls lz
twist (ls lz) = lz
twist (ls (ls p)) = ls (ls p)
