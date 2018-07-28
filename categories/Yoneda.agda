{-# OPTIONS --type-in-type #-}
module Yoneda where

open import Categories
open import Functor
open import Morphisms
open import Hom

yoneda-embedding : {D : Category} → (K : Functor D Sets) → (r : obj {{D}}) →
  _≅_ {Sets} (NaturalTransformation (homfunctor r) K) (fobj {{K}} r)
yoneda-embedding {D} K r = record
  { f = f'
  ; g = g'
  ; linv = {!!}
  ; rinv = {!!}
  }
  where
    module K = Functor.Functor K
    module D = Category D
    
    f' : NaturalTransformation (homfunctor r) K → K.fobj r
    f' record { η = α ; naturality = nat } = α {r} D.id

    g' : K.fobj r → NaturalTransformation (homfunctor r) K
    g' a = record
      { η = λ {A} → λ f → K.fmap f a
      ; naturality = {!!}
      }
