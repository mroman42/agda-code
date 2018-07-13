{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Booleans where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Base

name2 = "Booleans.Bool"
d2 = ()
data T2 = C4 | C6
name10 = "Booleans._??"
d10 v0
  = case coe v0 of
      C4 -> coe MAlonzo.Code.Base.C94 erased
      C6 -> coe MAlonzo.Code.Base.C92 erased
      _ -> coe MAlonzo.RTE.mazUnreachableError
name12 = "Booleans.and"
d12 v0 v1
  = case coe v0 of
      C4 -> coe C4
      C6 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name20 = "Booleans.and-true"
d20 = erased
name24 = "Booleans.and-false"
d24 = erased
name28 = "Booleans.and-both"
d28 = erased
name30 = "Booleans.not"
d30 v0
  = case coe v0 of
      C4 -> coe C6
      C6 -> coe C4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name36 = "Booleans.not-inj"
d36 = erased
name56 = "Booleans.not-double"
d56 = erased
name58 = "Booleans.xor"
d58 v0 v1
  = case coe v0 of
      C4 -> coe v1
      C6 -> coe d30 v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name68 = "Booleans.xor-not-l"
d68 = erased
name82 = "Booleans.xor-not-r"
d82 = erased
name94 = "Booleans.xor-assoc"
d94 = erased
name104 = "Booleans.xoraa"
d104 = erased
name106 = "Booleans.or"
d106 v0 v1
  = case coe v0 of
      C4 -> coe v1
      C6 -> coe C6
      _ -> coe MAlonzo.RTE.mazUnreachableError
name114 = "Booleans.or-rtrue"
d114 = erased
name118 = "Booleans.or-rfalse"
d118 = erased
name120 = "Booleans.true\8802false"
d120 = erased