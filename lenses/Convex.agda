{-# OPTIONS --type-in-type #-}

module Convex where

  record Category : Set where
    field
      obj : Set
      _∘_
  
