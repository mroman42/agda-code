module Convex 

record Cat where
  obj : Set
  hom : obj -> obj -> Set
  

record Monoidal where
  obj : Set  
  
