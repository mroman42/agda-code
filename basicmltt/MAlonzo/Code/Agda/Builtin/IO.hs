{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Agda.Builtin.IO where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified MAlonzo.RTE
import qualified Data.Text

type AgdaIO a b = IO b
name8 = "Agda.Builtin.IO.IO"
type T8 a0 a1 = AgdaIO a0 a1
d8
  = error
      "MAlonzo Runtime Error: postulate evaluated: Agda.Builtin.IO.IO"