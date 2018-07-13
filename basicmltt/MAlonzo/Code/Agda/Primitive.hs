{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Agda.Primitive where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified MAlonzo.RTE
import qualified Data.Text

name4 = "Agda.Primitive.Level"
type T4 = ()
d4
  = error
      "MAlonzo Runtime Error: postulate evaluated: Agda.Primitive.Level"
name6 = "Agda.Primitive.lzero"
d6 = ()
name10 = "Agda.Primitive.lsuc"
d10 = (\ _ -> ())
name16 = "Agda.Primitive._\8852_"
d16 = (\ _ _ -> ())