{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Bool where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Data.Bool.Properties
import qualified MAlonzo.Code.Relation.Binary.Bundles

name4 = "Data.Bool.decSetoid"
d4 :: MAlonzo.Code.Relation.Binary.Bundles.T84
d4 = coe MAlonzo.Code.Data.Bool.Properties.d1350
