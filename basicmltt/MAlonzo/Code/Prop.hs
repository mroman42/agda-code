{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Prop where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Base

name2 = "Prop.isProp"
d2 = erased
name14 = "Prop.prod-isProp"
d14 = erased
name48 = "Prop.pi-isProp"
d48 = erased
name60 = "Prop.not-isProp"
d60 = erased
name70 = "Prop.Truncation.!\8741_\8741"
d70 a0 = ()
newtype T70 a0 = C74 a0
name78 = "Prop.Truncation.\8741_\8741"
d78 = erased
name84 = "Prop.Truncation.\8739_\8739"
d84 v0 v1 = du84 v1
du84 v0 = coe C74 v0
name90 = "Prop.Truncation.trunc"
d90
  = error
      "MAlonzo Runtime Error: postulate evaluated: Prop.Truncation.trunc"
name96 = "Prop.Truncation.trunc-rec"
d96 v0 v1 v2 v3 v4 = du96 v3 v4
du96 v0 v1
  = case coe v1 of
      C74 v2 -> coe v0 v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name108 = "Prop.Exists.!Ex"
d108 a0 a1 = ()
data T108 a0 a1 = C122 a0 a1
name118 = "Prop.Exists.!Ex.!fst"
d118 v0
  = case coe v0 of
      C122 v1 v2 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name120 = "Prop.Exists.!Ex.!snd"
d120 v0
  = case coe v0 of
      C122 v1 v2 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name128 = "Prop.Exists.Ex"
d128 = erased
name142 = "Prop.Exists._,,_"
d142 v0 v1 v2 v3 = du142 v2 v3
du142 v0 v1 = coe C122 v0 v1
name152 = "Prop.Exists.Ex-isProp"
d152
  = error
      "MAlonzo Runtime Error: postulate evaluated: Prop.Exists.Ex-isProp"
name160 = "Prop.Exists.Ex-elim"
d160 v0 v1 v2 v3 v4 v5 = du160 v3 v5
du160 v0 v1
  = coe v1 (coe MAlonzo.Code.Base.C54 (coe d118 v0) (coe d120 v0))
name174 = "Prop.Or._!\8744_"
d174 a0 a1 = ()
data T174 a0 = C180 a0 | C182 a0
name188 = "Prop.Or._\8744_"
d188 = erased
name198 = "Prop.Or.rinl"
d198 v0 v1 v2 = du198 v2
du198 v0 = coe C180 v0
name206 = "Prop.Or.rinr"
d206 v0 v1 v2 = du206 v2
du206 v0 = coe C182 v0
name214 = "Prop.Or.\8744-isProp"
d214
  = error
      "MAlonzo Runtime Error: postulate evaluated: Prop.Or.\8744-isProp"
name222 = "Prop.Or.\8744-elim"
d222 v0 v1 v2 v3 v4 v5 = du222 v3 v5
du222 v0 v1
  = case coe v0 of
      C180 v2 -> coe v1 (coe MAlonzo.Code.Base.C92 v2)
      C182 v2 -> coe v1 (coe MAlonzo.Code.Base.C94 v2)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name238 = "Prop.uip"
d238 = erased
name577 = "Prop..absurdlambda"
d577 = erased