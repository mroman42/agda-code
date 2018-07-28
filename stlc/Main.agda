module Main where

open import Stlc
open import Agda.Builtin.String
open import Agda.Builtin.List
open import Agda.Builtin.Char
open import Agda.Builtin.Bool

examplestring : String
examplestring = "asdf qwer\nWer"

map : {A B : Set} → (A → B) → List A → List B
map f [] = []
map f (x ∷ l) = f x ∷ map f l

append : {A : Set} → List A → List A → List A
append []      v = v
append (x ∷ u) v = x ∷ append u v

_++_ = append

[_] : {A : Set} → A → List A
[ x ] = x ∷ []

reverse : {A : Set} → List A → List A
reverse []      = []
reverse (x ∷ l) = (reverse l) ++ [ x ]

split : {A : Set} → (A → Bool) → List A → List (List A)
split {A} p l = split-acc l []
  where
    split-acc : List A → List A → List (List A)
    split-acc [] v = reverse v ∷ []
    split-acc (x ∷ u) v with p x
    split-acc (x ∷ u) v | true  = reverse v ∷ split-acc u []    
    split-acc (x ∷ u) v | false = split-acc u (x ∷ v)

lines : String -> List String
lines str = map primStringFromList (split (primCharEquality '\n') (primStringToList str))


-- Monadic Parsing
record Pair (A B : Set) : Set where
  constructor _,_
  field
    fst : A
    snd : B

record Parser (A : Set) : Set where
  constructor Pars
  field
    runParser : String → List (Pair String A)

data Maybe (A : Set) : Set where
  Nothing : Maybe A
  Just : A → Maybe A

parse : {A : Set} → Parser A → String → Maybe A
parse p s with Parser.runParser p s
parse p s | []    = Nothing
parse p s | x ∷ w = Just (Pair.snd x)

anyChar : Parser Char
anyChar = Pars setChar
  where
    setChar : String → List (Pair String Char)
    setChar s with primStringToList s
    setChar s | [] = []
    setChar s | x ∷ u = [ primStringFromList u , x ]

char : Char → Parser Char
char c = Pars setChar
  where
    setChar : String → List (Pair String Char)
    setChar s with primStringToList s
    setChar s | [] = []
    setChar s | x ∷ w with (primCharEquality x c)
    setChar s | x ∷ w | false = []
    setChar s | x ∷ w | true = [ primStringFromList w , x ]

fmap : {A B : Set} → (A → B) → Parser A → Parser B
fmap f p = Pars (λ s → map (λ {(t , a) → (t , f a)}) (Parser.runParser p s))

pure : {A : Set} → A → Parser A
pure a = Pars λ s → [ s , a ]

fail : {A : Set} → Parser A
fail = Pars λ s → []

concat : {A : Set} → List (List A) → List A
concat []       = []
concat (l ∷ u) = l ++ concat u

_>>=_ : {A B : Set} → Parser A → (A → Parser B) → Parser B
p >>= f = Pars λ s → concat (map (λ {(t , a) → Parser.runParser (f a) t}) (Parser.runParser p s))

_>>_ : {A B : Set} → Parser A → Parser B → Parser B
p >> q = p >>= λ _ → q

between : {A B C : Set} → Parser B → Parser C → Parser A → Parser A
between o₁ o₂ p =
  o₁ >>
  (p >>= λ a →
  o₂ >> pure a)

parens : {A : Set} → Parser A → Parser A
parens p = between (char '(') (char ')') p

_<|>_ : {A : Set} → Parser A → Parser A → Parser A
_<|>_ {A} p q = Pars option
  where
    option : String → List (Pair String A)
    option s with Parser.runParser p s
    option s | [] = Parser.runParser q s
    option s | x ∷ w = x ∷ w

choice : {A : Set} → List (Parser A) → Parser A
choice [] = fail
choice (p ∷ parsers) = p <|> choice parsers

record TypedExpr (Γ : Cxt) : Set where
  field
    A : Type
    expr : Γ ⊢ A

{-# NON_TERMINATING #-}
expression : (Γ : Cxt) → Parser (TypedExpr Γ)
expression Γ = choice (
  parens (expression Γ) ∷
  
  []
  )
  where
    pi1parser : Parser (TypedExpr Γ)
    pi1parser = {!!}



infixl 10 _+++_
_+++_ = primStringAppend

show : ∀{Γ A} → (Γ ⊢ A) → String
show (var x) = "v"
show (pair e d) = "<" +++ show e +++ "," +++ show d +++ ">"
show (pi1 e) = "π₁ " +++ show e
show (pi2 e) = "π₂ " +++ show e
show (lambda e) = "λ v." +++ show e
show (app e e₁) = "(" +++ show e +++ " " +++ show e₁ +++ ")"
show unit = "⋆"
