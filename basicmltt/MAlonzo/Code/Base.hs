{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Base where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified MAlonzo.RTE
import qualified Data.Text

name2 = "Base.\8868"
d2 = ()
data T2 = C4
name6 = "Base.\8869"
d6 = ()
data T6
name8 = "Base.\172"
d8 = erased
name18 = "Base._\8801_"
d18 a0 a1 a2 a3 = ()
data T18 = C26
name32 = "Base.refl-in"
d32 = erased
name40 = "Base.\931"
d40 a0 a1 = ()
data T40 a0 a1 = C54 a0 a1
name50 = "Base.\931.fst"
d50 v0
  = case coe v0 of
      C54 v1 v2 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name52 = "Base.\931.snd"
d52 v0
  = case coe v0 of
      C54 v1 v2 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name62 = "Base.\931-elim"
d62 v0 v1 v2 v3 v4 = du62 v3 v4
du62 v0 v1 = coe v1 v0
name74 = "Base._\215_"
d74 = erased
name86 = "Base._\8846_"
d86 a0 a1 = ()
data T86 a0 = C92 a0 | C94 a0
name108 = "Base.funext"
d108
  = error "MAlonzo Runtime Error: postulate evaluated: Base.funext"
name112 = "Base.exfalso"
d112 = MAlonzo.RTE.mazUnreachableError