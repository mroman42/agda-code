{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Algebra.Bundles where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Structures

name8 = "Algebra.Bundles.RawMagma"
d8 a0 a1 = ()
newtype T8 = C47 (AgdaAny -> AgdaAny -> AgdaAny)
name20 = "Algebra.Bundles.RawMagma.Carrier"
d20 :: T8 -> ()
d20 = erased
name22 = "Algebra.Bundles.RawMagma._≈_"
d22 :: T8 -> AgdaAny -> AgdaAny -> ()
d22 = erased
name24 = "Algebra.Bundles.RawMagma._∙_"
d24 :: T8 -> AgdaAny -> AgdaAny -> AgdaAny
d24 v0
  = case coe v0 of
      C47 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name30 = "Algebra.Bundles.Magma"
d30 a0 a1 = ()
data T30
  = C255 (AgdaAny -> AgdaAny -> AgdaAny)
         MAlonzo.Code.Algebra.Structures.T80
name44 = "Algebra.Bundles.Magma.Carrier"
d44 :: T30 -> ()
d44 = erased
name46 = "Algebra.Bundles.Magma._≈_"
d46 :: T30 -> AgdaAny -> AgdaAny -> ()
d46 = erased
name48 = "Algebra.Bundles.Magma._∙_"
d48 :: T30 -> AgdaAny -> AgdaAny -> AgdaAny
d48 v0
  = case coe v0 of
      C255 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name50 = "Algebra.Bundles.Magma.isMagma"
d50 :: T30 -> MAlonzo.Code.Algebra.Structures.T80
d50 v0
  = case coe v0 of
      C255 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name54 = "Algebra.Bundles.Magma._.isEquivalence"
d54 :: T30 -> MAlonzo.Code.Relation.Binary.Structures.T26
d54 v0 = coe MAlonzo.Code.Algebra.Structures.d88 (coe d50 (coe v0))
name56 = "Algebra.Bundles.Magma._.isPartialEquivalence"
d56 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T30 -> MAlonzo.Code.Relation.Binary.Structures.T16
d56 v0 v1 v2 = du56 v2
du56 :: T30 -> MAlonzo.Code.Relation.Binary.Structures.T16
du56 v0
  = let v1 = d50 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Algebra.Structures.d88 (coe v1))
name58 = "Algebra.Bundles.Magma._.refl"
d58 :: T30 -> AgdaAny -> AgdaAny
d58 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe MAlonzo.Code.Algebra.Structures.d88 (coe d50 (coe v0)))
name60 = "Algebra.Bundles.Magma._.reflexive"
d60 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T30 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d60 v0 v1 v2 = du60 v2
du60 ::
  T30 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du60 v0
  = let v1 = d50 (coe v0) in
    \ v2 v3 v4 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Algebra.Structures.d88 (coe v1)) v2
name62 = "Algebra.Bundles.Magma._.setoid"
d62 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T30 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d62 v0 v1 v2 = du62 v2
du62 :: T30 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du62 v0
  = coe MAlonzo.Code.Algebra.Structures.du104 (coe d50 (coe v0))
name64 = "Algebra.Bundles.Magma._.sym"
d64 :: T30 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d64 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe MAlonzo.Code.Algebra.Structures.d88 (coe d50 (coe v0)))
name66 = "Algebra.Bundles.Magma._.trans"
d66 ::
  T30 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d66 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe MAlonzo.Code.Algebra.Structures.d88 (coe d50 (coe v0)))
name68 = "Algebra.Bundles.Magma._.∙-cong"
d68 ::
  T30 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d68 v0 = coe MAlonzo.Code.Algebra.Structures.d90 (coe d50 (coe v0))
name70 = "Algebra.Bundles.Magma._.∙-congʳ"
d70 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T30 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d70 v0 v1 v2 = du70 v2
du70 :: T30 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du70 v0
  = coe MAlonzo.Code.Algebra.Structures.du110 (coe d50 (coe v0))
name72 = "Algebra.Bundles.Magma._.∙-congˡ"
d72 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T30 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d72 v0 v1 v2 = du72 v2
du72 :: T30 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du72 v0
  = coe MAlonzo.Code.Algebra.Structures.du106 (coe d50 (coe v0))
name74 = "Algebra.Bundles.Magma.rawMagma"
d74 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T30 -> T8
d74 v0 v1 v2 = du74 v2
du74 :: T30 -> T8
du74 v0 = coe C47 (d48 (coe v0))
name80 = "Algebra.Bundles.Semigroup"
d80 a0 a1 = ()
data T80
  = C877 (AgdaAny -> AgdaAny -> AgdaAny)
         MAlonzo.Code.Algebra.Structures.T116
name94 = "Algebra.Bundles.Semigroup.Carrier"
d94 :: T80 -> ()
d94 = erased
name96 = "Algebra.Bundles.Semigroup._≈_"
d96 :: T80 -> AgdaAny -> AgdaAny -> ()
d96 = erased
name98 = "Algebra.Bundles.Semigroup._∙_"
d98 :: T80 -> AgdaAny -> AgdaAny -> AgdaAny
d98 v0
  = case coe v0 of
      C877 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name100 = "Algebra.Bundles.Semigroup.isSemigroup"
d100 :: T80 -> MAlonzo.Code.Algebra.Structures.T116
d100 v0
  = case coe v0 of
      C877 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name104 = "Algebra.Bundles.Semigroup._.assoc"
d104 :: T80 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d104 v0
  = coe MAlonzo.Code.Algebra.Structures.d126 (coe d100 (coe v0))
name106 = "Algebra.Bundles.Semigroup._.isEquivalence"
d106 :: T80 -> MAlonzo.Code.Relation.Binary.Structures.T26
d106 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d88
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe d100 (coe v0)))
name108 = "Algebra.Bundles.Semigroup._.isMagma"
d108 :: T80 -> MAlonzo.Code.Algebra.Structures.T80
d108 v0
  = coe MAlonzo.Code.Algebra.Structures.d124 (coe d100 (coe v0))
name110 = "Algebra.Bundles.Semigroup._.isPartialEquivalence"
d110 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T80 -> MAlonzo.Code.Relation.Binary.Structures.T16
d110 v0 v1 v2 = du110 v2
du110 :: T80 -> MAlonzo.Code.Relation.Binary.Structures.T16
du110 v0
  = let v1 = d100 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d124 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Algebra.Structures.d88 (coe v2))
name112 = "Algebra.Bundles.Semigroup._.refl"
d112 :: T80 -> AgdaAny -> AgdaAny
d112 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe MAlonzo.Code.Algebra.Structures.d124 (coe d100 (coe v0))))
name114 = "Algebra.Bundles.Semigroup._.reflexive"
d114 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T80 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d114 v0 v1 v2 = du114 v2
du114 ::
  T80 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du114 v0
  = let v1 = d100 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d124 (coe v1) in
    \ v3 v4 v5 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Algebra.Structures.d88 (coe v2)) v3
name116 = "Algebra.Bundles.Semigroup._.setoid"
d116 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T80 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d116 v0 v1 v2 = du116 v2
du116 :: T80 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du116 v0
  = let v1 = d100 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du104
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v1))
name118 = "Algebra.Bundles.Semigroup._.sym"
d118 :: T80 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d118 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe MAlonzo.Code.Algebra.Structures.d124 (coe d100 (coe v0))))
name120 = "Algebra.Bundles.Semigroup._.trans"
d120 ::
  T80 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d120 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe MAlonzo.Code.Algebra.Structures.d124 (coe d100 (coe v0))))
name122 = "Algebra.Bundles.Semigroup._.∙-cong"
d122 ::
  T80 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d122 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe d100 (coe v0)))
name124 = "Algebra.Bundles.Semigroup._.∙-congʳ"
d124 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T80 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d124 v0 v1 v2 = du124 v2
du124 :: T80 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du124 v0
  = let v1 = d100 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v1))
name126 = "Algebra.Bundles.Semigroup._.∙-congˡ"
d126 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T80 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d126 v0 v1 v2 = du126 v2
du126 :: T80 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du126 v0
  = let v1 = d100 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v1))
name128 = "Algebra.Bundles.Semigroup.magma"
d128 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T80 -> T30
d128 v0 v1 v2 = du128 v2
du128 :: T80 -> T30
du128 v0
  = coe
      C255 (d98 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d124 (coe d100 (coe v0)))
name132 = "Algebra.Bundles.Semigroup._.rawMagma"
d132 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T80 -> T8
d132 v0 v1 v2 = du132 v2
du132 :: T80 -> T8
du132 v0 = coe du74 (coe du128 (coe v0))
name138 = "Algebra.Bundles.Band"
d138 a0 a1 = ()
data T138
  = C1567 (AgdaAny -> AgdaAny -> AgdaAny)
          MAlonzo.Code.Algebra.Structures.T152
name152 = "Algebra.Bundles.Band.Carrier"
d152 :: T138 -> ()
d152 = erased
name154 = "Algebra.Bundles.Band._≈_"
d154 :: T138 -> AgdaAny -> AgdaAny -> ()
d154 = erased
name156 = "Algebra.Bundles.Band._∙_"
d156 :: T138 -> AgdaAny -> AgdaAny -> AgdaAny
d156 v0
  = case coe v0 of
      C1567 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name158 = "Algebra.Bundles.Band.isBand"
d158 :: T138 -> MAlonzo.Code.Algebra.Structures.T152
d158 v0
  = case coe v0 of
      C1567 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name162 = "Algebra.Bundles.Band._.assoc"
d162 :: T138 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d162 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe MAlonzo.Code.Algebra.Structures.d160 (coe d158 (coe v0)))
name164 = "Algebra.Bundles.Band._.idem"
d164 :: T138 -> AgdaAny -> AgdaAny
d164 v0
  = coe MAlonzo.Code.Algebra.Structures.d162 (coe d158 (coe v0))
name166 = "Algebra.Bundles.Band._.isEquivalence"
d166 :: T138 -> MAlonzo.Code.Relation.Binary.Structures.T26
d166 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d88
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe MAlonzo.Code.Algebra.Structures.d160 (coe d158 (coe v0))))
name168 = "Algebra.Bundles.Band._.isMagma"
d168 :: T138 -> MAlonzo.Code.Algebra.Structures.T80
d168 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe MAlonzo.Code.Algebra.Structures.d160 (coe d158 (coe v0)))
name170 = "Algebra.Bundles.Band._.isPartialEquivalence"
d170 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T138 -> MAlonzo.Code.Relation.Binary.Structures.T16
d170 v0 v1 v2 = du170 v2
du170 :: T138 -> MAlonzo.Code.Relation.Binary.Structures.T16
du170 v0
  = let v1 = d158 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d160 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d124 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Algebra.Structures.d88 (coe v3))
name172 = "Algebra.Bundles.Band._.isSemigroup"
d172 :: T138 -> MAlonzo.Code.Algebra.Structures.T116
d172 v0
  = coe MAlonzo.Code.Algebra.Structures.d160 (coe d158 (coe v0))
name174 = "Algebra.Bundles.Band._.refl"
d174 :: T138 -> AgdaAny -> AgdaAny
d174 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe MAlonzo.Code.Algebra.Structures.d160 (coe d158 (coe v0)))))
name176 = "Algebra.Bundles.Band._.reflexive"
d176 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T138 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d176 v0 v1 v2 = du176 v2
du176 ::
  T138 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du176 v0
  = let v1 = d158 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d160 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d124 (coe v2) in
    \ v4 v5 v6 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Algebra.Structures.d88 (coe v3)) v4
name178 = "Algebra.Bundles.Band._.setoid"
d178 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T138 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d178 v0 v1 v2 = du178 v2
du178 :: T138 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du178 v0
  = let v1 = d158 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d160 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du104
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v2))
name180 = "Algebra.Bundles.Band._.sym"
d180 :: T138 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d180 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe MAlonzo.Code.Algebra.Structures.d160 (coe d158 (coe v0)))))
name182 = "Algebra.Bundles.Band._.trans"
d182 ::
  T138 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d182 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe MAlonzo.Code.Algebra.Structures.d160 (coe d158 (coe v0)))))
name184 = "Algebra.Bundles.Band._.∙-cong"
d184 ::
  T138 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d184 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe MAlonzo.Code.Algebra.Structures.d160 (coe d158 (coe v0))))
name186 = "Algebra.Bundles.Band._.∙-congʳ"
d186 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T138 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d186 v0 v1 v2 = du186 v2
du186 ::
  T138 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du186 v0
  = let v1 = d158 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d160 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v2))
name188 = "Algebra.Bundles.Band._.∙-congˡ"
d188 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T138 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d188 v0 v1 v2 = du188 v2
du188 ::
  T138 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du188 v0
  = let v1 = d158 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d160 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v2))
name190 = "Algebra.Bundles.Band.semigroup"
d190 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T138 -> T80
d190 v0 v1 v2 = du190 v2
du190 :: T138 -> T80
du190 v0
  = coe
      C877 (d156 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d160 (coe d158 (coe v0)))
name194 = "Algebra.Bundles.Band._.magma"
d194 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T138 -> T30
d194 v0 v1 v2 = du194 v2
du194 :: T138 -> T30
du194 v0 = coe du128 (coe du190 (coe v0))
name196 = "Algebra.Bundles.Band._.rawMagma"
d196 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T138 -> T8
d196 v0 v1 v2 = du196 v2
du196 :: T138 -> T8
du196 v0
  = let v1 = coe du190 (coe v0) in coe du74 (coe du128 (coe v1))
name202 = "Algebra.Bundles.CommutativeSemigroup"
d202 a0 a1 = ()
data T202
  = C2287 (AgdaAny -> AgdaAny -> AgdaAny)
          MAlonzo.Code.Algebra.Structures.T192
name216 = "Algebra.Bundles.CommutativeSemigroup.Carrier"
d216 :: T202 -> ()
d216 = erased
name218 = "Algebra.Bundles.CommutativeSemigroup._≈_"
d218 :: T202 -> AgdaAny -> AgdaAny -> ()
d218 = erased
name220 = "Algebra.Bundles.CommutativeSemigroup._∙_"
d220 :: T202 -> AgdaAny -> AgdaAny -> AgdaAny
d220 v0
  = case coe v0 of
      C2287 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name222
  = "Algebra.Bundles.CommutativeSemigroup.isCommutativeSemigroup"
d222 :: T202 -> MAlonzo.Code.Algebra.Structures.T192
d222 v0
  = case coe v0 of
      C2287 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name226 = "Algebra.Bundles.CommutativeSemigroup._.assoc"
d226 :: T202 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d226 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe MAlonzo.Code.Algebra.Structures.d200 (coe d222 (coe v0)))
name228 = "Algebra.Bundles.CommutativeSemigroup._.comm"
d228 :: T202 -> AgdaAny -> AgdaAny -> AgdaAny
d228 v0
  = coe MAlonzo.Code.Algebra.Structures.d202 (coe d222 (coe v0))
name230 = "Algebra.Bundles.CommutativeSemigroup._.isEquivalence"
d230 :: T202 -> MAlonzo.Code.Relation.Binary.Structures.T26
d230 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d88
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe MAlonzo.Code.Algebra.Structures.d200 (coe d222 (coe v0))))
name232 = "Algebra.Bundles.CommutativeSemigroup._.isMagma"
d232 :: T202 -> MAlonzo.Code.Algebra.Structures.T80
d232 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe MAlonzo.Code.Algebra.Structures.d200 (coe d222 (coe v0)))
name234
  = "Algebra.Bundles.CommutativeSemigroup._.isPartialEquivalence"
d234 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T202 -> MAlonzo.Code.Relation.Binary.Structures.T16
d234 v0 v1 v2 = du234 v2
du234 :: T202 -> MAlonzo.Code.Relation.Binary.Structures.T16
du234 v0
  = let v1 = d222 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d200 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d124 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Algebra.Structures.d88 (coe v3))
name236 = "Algebra.Bundles.CommutativeSemigroup._.isSemigroup"
d236 :: T202 -> MAlonzo.Code.Algebra.Structures.T116
d236 v0
  = coe MAlonzo.Code.Algebra.Structures.d200 (coe d222 (coe v0))
name238 = "Algebra.Bundles.CommutativeSemigroup._.refl"
d238 :: T202 -> AgdaAny -> AgdaAny
d238 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe MAlonzo.Code.Algebra.Structures.d200 (coe d222 (coe v0)))))
name240 = "Algebra.Bundles.CommutativeSemigroup._.reflexive"
d240 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T202 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d240 v0 v1 v2 = du240 v2
du240 ::
  T202 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du240 v0
  = let v1 = d222 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d200 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d124 (coe v2) in
    \ v4 v5 v6 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Algebra.Structures.d88 (coe v3)) v4
name242 = "Algebra.Bundles.CommutativeSemigroup._.setoid"
d242 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T202 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d242 v0 v1 v2 = du242 v2
du242 :: T202 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du242 v0
  = let v1 = d222 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d200 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du104
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v2))
name244 = "Algebra.Bundles.CommutativeSemigroup._.sym"
d244 :: T202 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d244 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe MAlonzo.Code.Algebra.Structures.d200 (coe d222 (coe v0)))))
name246 = "Algebra.Bundles.CommutativeSemigroup._.trans"
d246 ::
  T202 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d246 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe MAlonzo.Code.Algebra.Structures.d200 (coe d222 (coe v0)))))
name248 = "Algebra.Bundles.CommutativeSemigroup._.∙-cong"
d248 ::
  T202 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d248 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe MAlonzo.Code.Algebra.Structures.d200 (coe d222 (coe v0))))
name250 = "Algebra.Bundles.CommutativeSemigroup._.∙-congʳ"
d250 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T202 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d250 v0 v1 v2 = du250 v2
du250 ::
  T202 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du250 v0
  = let v1 = d222 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d200 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v2))
name252 = "Algebra.Bundles.CommutativeSemigroup._.∙-congˡ"
d252 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T202 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d252 v0 v1 v2 = du252 v2
du252 ::
  T202 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du252 v0
  = let v1 = d222 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d200 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v2))
name254 = "Algebra.Bundles.CommutativeSemigroup.semigroup"
d254 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T202 -> T80
d254 v0 v1 v2 = du254 v2
du254 :: T202 -> T80
du254 v0
  = coe
      C877 (d220 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d200 (coe d222 (coe v0)))
name258 = "Algebra.Bundles.CommutativeSemigroup._.magma"
d258 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T202 -> T30
d258 v0 v1 v2 = du258 v2
du258 :: T202 -> T30
du258 v0 = coe du128 (coe du254 (coe v0))
name260 = "Algebra.Bundles.CommutativeSemigroup._.rawMagma"
d260 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T202 -> T8
d260 v0 v1 v2 = du260 v2
du260 :: T202 -> T8
du260 v0
  = let v1 = coe du254 (coe v0) in coe du74 (coe du128 (coe v1))
name266 = "Algebra.Bundles.Semilattice"
d266 a0 a1 = ()
data T266
  = C3011 (AgdaAny -> AgdaAny -> AgdaAny)
          MAlonzo.Code.Algebra.Structures.T232
name280 = "Algebra.Bundles.Semilattice.Carrier"
d280 :: T266 -> ()
d280 = erased
name282 = "Algebra.Bundles.Semilattice._≈_"
d282 :: T266 -> AgdaAny -> AgdaAny -> ()
d282 = erased
name284 = "Algebra.Bundles.Semilattice._∧_"
d284 :: T266 -> AgdaAny -> AgdaAny -> AgdaAny
d284 v0
  = case coe v0 of
      C3011 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name286 = "Algebra.Bundles.Semilattice.isSemilattice"
d286 :: T266 -> MAlonzo.Code.Algebra.Structures.T232
d286 v0
  = case coe v0 of
      C3011 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name290 = "Algebra.Bundles.Semilattice._.assoc"
d290 :: T266 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d290 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe
         MAlonzo.Code.Algebra.Structures.d160
         (coe MAlonzo.Code.Algebra.Structures.d240 (coe d286 (coe v0))))
name292 = "Algebra.Bundles.Semilattice._.comm"
d292 :: T266 -> AgdaAny -> AgdaAny -> AgdaAny
d292 v0
  = coe MAlonzo.Code.Algebra.Structures.d242 (coe d286 (coe v0))
name294 = "Algebra.Bundles.Semilattice._.idem"
d294 :: T266 -> AgdaAny -> AgdaAny
d294 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d162
      (coe MAlonzo.Code.Algebra.Structures.d240 (coe d286 (coe v0)))
name296 = "Algebra.Bundles.Semilattice._.isBand"
d296 :: T266 -> MAlonzo.Code.Algebra.Structures.T152
d296 v0
  = coe MAlonzo.Code.Algebra.Structures.d240 (coe d286 (coe v0))
name298 = "Algebra.Bundles.Semilattice._.isEquivalence"
d298 :: T266 -> MAlonzo.Code.Relation.Binary.Structures.T26
d298 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d88
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d160
            (coe MAlonzo.Code.Algebra.Structures.d240 (coe d286 (coe v0)))))
name300 = "Algebra.Bundles.Semilattice._.isMagma"
d300 :: T266 -> MAlonzo.Code.Algebra.Structures.T80
d300 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe
         MAlonzo.Code.Algebra.Structures.d160
         (coe MAlonzo.Code.Algebra.Structures.d240 (coe d286 (coe v0))))
name302 = "Algebra.Bundles.Semilattice._.isPartialEquivalence"
d302 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T266 -> MAlonzo.Code.Relation.Binary.Structures.T16
d302 v0 v1 v2 = du302 v2
du302 :: T266 -> MAlonzo.Code.Relation.Binary.Structures.T16
du302 v0
  = let v1 = d286 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d240 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d160 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d124 (coe v3) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Algebra.Structures.d88 (coe v4))
name304 = "Algebra.Bundles.Semilattice._.isSemigroup"
d304 :: T266 -> MAlonzo.Code.Algebra.Structures.T116
d304 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d160
      (coe MAlonzo.Code.Algebra.Structures.d240 (coe d286 (coe v0)))
name306 = "Algebra.Bundles.Semilattice._.refl"
d306 :: T266 -> AgdaAny -> AgdaAny
d306 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d160
               (coe MAlonzo.Code.Algebra.Structures.d240 (coe d286 (coe v0))))))
name308 = "Algebra.Bundles.Semilattice._.reflexive"
d308 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T266 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d308 v0 v1 v2 = du308 v2
du308 ::
  T266 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du308 v0
  = let v1 = d286 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d240 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d160 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d124 (coe v3) in
    \ v5 v6 v7 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Algebra.Structures.d88 (coe v4)) v5
name310 = "Algebra.Bundles.Semilattice._.setoid"
d310 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T266 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d310 v0 v1 v2 = du310 v2
du310 :: T266 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du310 v0
  = let v1 = d286 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d240 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d160 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du104
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v3))
name312 = "Algebra.Bundles.Semilattice._.sym"
d312 :: T266 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d312 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d160
               (coe MAlonzo.Code.Algebra.Structures.d240 (coe d286 (coe v0))))))
name314 = "Algebra.Bundles.Semilattice._.trans"
d314 ::
  T266 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d314 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d160
               (coe MAlonzo.Code.Algebra.Structures.d240 (coe d286 (coe v0))))))
name316 = "Algebra.Bundles.Semilattice._.∙-cong"
d316 ::
  T266 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d316 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d160
            (coe MAlonzo.Code.Algebra.Structures.d240 (coe d286 (coe v0)))))
name318 = "Algebra.Bundles.Semilattice._.∙-congʳ"
d318 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T266 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d318 v0 v1 v2 = du318 v2
du318 ::
  T266 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du318 v0
  = let v1 = d286 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d240 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d160 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v3))
name320 = "Algebra.Bundles.Semilattice._.∙-congˡ"
d320 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T266 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d320 v0 v1 v2 = du320 v2
du320 ::
  T266 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du320 v0
  = let v1 = d286 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d240 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d160 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v3))
name322 = "Algebra.Bundles.Semilattice.band"
d322 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T266 -> T138
d322 v0 v1 v2 = du322 v2
du322 :: T266 -> T138
du322 v0
  = coe
      C1567 (d284 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d240 (coe d286 (coe v0)))
name326 = "Algebra.Bundles.Semilattice._.magma"
d326 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T266 -> T30
d326 v0 v1 v2 = du326 v2
du326 :: T266 -> T30
du326 v0
  = let v1 = coe du322 (coe v0) in coe du128 (coe du190 (coe v1))
name328 = "Algebra.Bundles.Semilattice._.rawMagma"
d328 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T266 -> T8
d328 v0 v1 v2 = du328 v2
du328 :: T266 -> T8
du328 v0
  = let v1 = coe du322 (coe v0) in
    let v2 = coe du190 (coe v1) in coe du74 (coe du128 (coe v2))
name330 = "Algebra.Bundles.Semilattice._.semigroup"
d330 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T266 -> T80
d330 v0 v1 v2 = du330 v2
du330 :: T266 -> T80
du330 v0 = coe du190 (coe du322 (coe v0))
name336 = "Algebra.Bundles.SelectiveMagma"
d336 a0 a1 = ()
data T336
  = C3765 (AgdaAny -> AgdaAny -> AgdaAny)
          MAlonzo.Code.Algebra.Structures.T276
name350 = "Algebra.Bundles.SelectiveMagma.Carrier"
d350 :: T336 -> ()
d350 = erased
name352 = "Algebra.Bundles.SelectiveMagma._≈_"
d352 :: T336 -> AgdaAny -> AgdaAny -> ()
d352 = erased
name354 = "Algebra.Bundles.SelectiveMagma._∙_"
d354 :: T336 -> AgdaAny -> AgdaAny -> AgdaAny
d354 v0
  = case coe v0 of
      C3765 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name356 = "Algebra.Bundles.SelectiveMagma.isSelectiveMagma"
d356 :: T336 -> MAlonzo.Code.Algebra.Structures.T276
d356 v0
  = case coe v0 of
      C3765 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name360 = "Algebra.Bundles.SelectiveMagma._.isEquivalence"
d360 :: T336 -> MAlonzo.Code.Relation.Binary.Structures.T26
d360 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d88
      (coe MAlonzo.Code.Algebra.Structures.d284 (coe d356 (coe v0)))
name362 = "Algebra.Bundles.SelectiveMagma._.isMagma"
d362 :: T336 -> MAlonzo.Code.Algebra.Structures.T80
d362 v0
  = coe MAlonzo.Code.Algebra.Structures.d284 (coe d356 (coe v0))
name364 = "Algebra.Bundles.SelectiveMagma._.isPartialEquivalence"
d364 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T336 -> MAlonzo.Code.Relation.Binary.Structures.T16
d364 v0 v1 v2 = du364 v2
du364 :: T336 -> MAlonzo.Code.Relation.Binary.Structures.T16
du364 v0
  = let v1 = d356 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d284 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Algebra.Structures.d88 (coe v2))
name366 = "Algebra.Bundles.SelectiveMagma._.refl"
d366 :: T336 -> AgdaAny -> AgdaAny
d366 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe MAlonzo.Code.Algebra.Structures.d284 (coe d356 (coe v0))))
name368 = "Algebra.Bundles.SelectiveMagma._.reflexive"
d368 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T336 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d368 v0 v1 v2 = du368 v2
du368 ::
  T336 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du368 v0
  = let v1 = d356 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d284 (coe v1) in
    \ v3 v4 v5 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Algebra.Structures.d88 (coe v2)) v3
name370 = "Algebra.Bundles.SelectiveMagma._.sel"
d370 ::
  T336 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30
d370 v0
  = coe MAlonzo.Code.Algebra.Structures.d286 (coe d356 (coe v0))
name372 = "Algebra.Bundles.SelectiveMagma._.setoid"
d372 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T336 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d372 v0 v1 v2 = du372 v2
du372 :: T336 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du372 v0
  = let v1 = d356 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du104
      (coe MAlonzo.Code.Algebra.Structures.d284 (coe v1))
name374 = "Algebra.Bundles.SelectiveMagma._.sym"
d374 :: T336 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d374 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe MAlonzo.Code.Algebra.Structures.d284 (coe d356 (coe v0))))
name376 = "Algebra.Bundles.SelectiveMagma._.trans"
d376 ::
  T336 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d376 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe MAlonzo.Code.Algebra.Structures.d284 (coe d356 (coe v0))))
name378 = "Algebra.Bundles.SelectiveMagma._.∙-cong"
d378 ::
  T336 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d378 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe MAlonzo.Code.Algebra.Structures.d284 (coe d356 (coe v0)))
name380 = "Algebra.Bundles.SelectiveMagma._.∙-congʳ"
d380 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T336 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d380 v0 v1 v2 = du380 v2
du380 ::
  T336 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du380 v0
  = let v1 = d356 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d284 (coe v1))
name382 = "Algebra.Bundles.SelectiveMagma._.∙-congˡ"
d382 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T336 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d382 v0 v1 v2 = du382 v2
du382 ::
  T336 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du382 v0
  = let v1 = d356 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d284 (coe v1))
name384 = "Algebra.Bundles.SelectiveMagma.magma"
d384 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T336 -> T30
d384 v0 v1 v2 = du384 v2
du384 :: T336 -> T30
du384 v0
  = coe
      C255 (d354 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d284 (coe d356 (coe v0)))
name388 = "Algebra.Bundles.SelectiveMagma._.rawMagma"
d388 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T336 -> T8
d388 v0 v1 v2 = du388 v2
du388 :: T336 -> T8
du388 v0 = coe du74 (coe du384 (coe v0))
name394 = "Algebra.Bundles.RawMonoid"
d394 a0 a1 = ()
data T394 = C4379 (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
name408 = "Algebra.Bundles.RawMonoid.Carrier"
d408 :: T394 -> ()
d408 = erased
name410 = "Algebra.Bundles.RawMonoid._≈_"
d410 :: T394 -> AgdaAny -> AgdaAny -> ()
d410 = erased
name412 = "Algebra.Bundles.RawMonoid._∙_"
d412 :: T394 -> AgdaAny -> AgdaAny -> AgdaAny
d412 v0
  = case coe v0 of
      C4379 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name414 = "Algebra.Bundles.RawMonoid.ε"
d414 :: T394 -> AgdaAny
d414 v0
  = case coe v0 of
      C4379 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name416 = "Algebra.Bundles.RawMonoid.rawMagma"
d416 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T394 -> T8
d416 v0 v1 v2 = du416 v2
du416 :: T394 -> T8
du416 v0 = coe C47 (d412 (coe v0))
name422 = "Algebra.Bundles.Monoid"
d422 a0 a1 = ()
data T422
  = C4689 (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
          MAlonzo.Code.Algebra.Structures.T314
name438 = "Algebra.Bundles.Monoid.Carrier"
d438 :: T422 -> ()
d438 = erased
name440 = "Algebra.Bundles.Monoid._≈_"
d440 :: T422 -> AgdaAny -> AgdaAny -> ()
d440 = erased
name442 = "Algebra.Bundles.Monoid._∙_"
d442 :: T422 -> AgdaAny -> AgdaAny -> AgdaAny
d442 v0
  = case coe v0 of
      C4689 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name444 = "Algebra.Bundles.Monoid.ε"
d444 :: T422 -> AgdaAny
d444 v0
  = case coe v0 of
      C4689 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name446 = "Algebra.Bundles.Monoid.isMonoid"
d446 :: T422 -> MAlonzo.Code.Algebra.Structures.T314
d446 v0
  = case coe v0 of
      C4689 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name450 = "Algebra.Bundles.Monoid._.assoc"
d450 :: T422 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d450 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe MAlonzo.Code.Algebra.Structures.d324 (coe d446 (coe v0)))
name452 = "Algebra.Bundles.Monoid._.identity"
d452 :: T422 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d452 v0
  = coe MAlonzo.Code.Algebra.Structures.d326 (coe d446 (coe v0))
name454 = "Algebra.Bundles.Monoid._.identityʳ"
d454 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T422 -> AgdaAny -> AgdaAny
d454 v0 v1 v2 = du454 v2
du454 :: T422 -> AgdaAny -> AgdaAny
du454 v0
  = let v1 = d446 (coe v0) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v1))
name456 = "Algebra.Bundles.Monoid._.identityˡ"
d456 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T422 -> AgdaAny -> AgdaAny
d456 v0 v1 v2 = du456 v2
du456 :: T422 -> AgdaAny -> AgdaAny
du456 v0
  = let v1 = d446 (coe v0) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v1))
name458 = "Algebra.Bundles.Monoid._.isEquivalence"
d458 :: T422 -> MAlonzo.Code.Relation.Binary.Structures.T26
d458 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d88
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe MAlonzo.Code.Algebra.Structures.d324 (coe d446 (coe v0))))
name460 = "Algebra.Bundles.Monoid._.isMagma"
d460 :: T422 -> MAlonzo.Code.Algebra.Structures.T80
d460 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe MAlonzo.Code.Algebra.Structures.d324 (coe d446 (coe v0)))
name462 = "Algebra.Bundles.Monoid._.isPartialEquivalence"
d462 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T422 -> MAlonzo.Code.Relation.Binary.Structures.T16
d462 v0 v1 v2 = du462 v2
du462 :: T422 -> MAlonzo.Code.Relation.Binary.Structures.T16
du462 v0
  = let v1 = d446 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d324 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d124 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Algebra.Structures.d88 (coe v3))
name464 = "Algebra.Bundles.Monoid._.isSemigroup"
d464 :: T422 -> MAlonzo.Code.Algebra.Structures.T116
d464 v0
  = coe MAlonzo.Code.Algebra.Structures.d324 (coe d446 (coe v0))
name466 = "Algebra.Bundles.Monoid._.refl"
d466 :: T422 -> AgdaAny -> AgdaAny
d466 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe MAlonzo.Code.Algebra.Structures.d324 (coe d446 (coe v0)))))
name468 = "Algebra.Bundles.Monoid._.reflexive"
d468 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T422 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d468 v0 v1 v2 = du468 v2
du468 ::
  T422 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du468 v0
  = let v1 = d446 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d324 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d124 (coe v2) in
    \ v4 v5 v6 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Algebra.Structures.d88 (coe v3)) v4
name470 = "Algebra.Bundles.Monoid._.setoid"
d470 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T422 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d470 v0 v1 v2 = du470 v2
du470 :: T422 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du470 v0
  = let v1 = d446 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d324 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du104
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v2))
name472 = "Algebra.Bundles.Monoid._.sym"
d472 :: T422 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d472 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe MAlonzo.Code.Algebra.Structures.d324 (coe d446 (coe v0)))))
name474 = "Algebra.Bundles.Monoid._.trans"
d474 ::
  T422 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d474 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe MAlonzo.Code.Algebra.Structures.d324 (coe d446 (coe v0)))))
name476 = "Algebra.Bundles.Monoid._.∙-cong"
d476 ::
  T422 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d476 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe MAlonzo.Code.Algebra.Structures.d324 (coe d446 (coe v0))))
name478 = "Algebra.Bundles.Monoid._.∙-congʳ"
d478 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T422 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d478 v0 v1 v2 = du478 v2
du478 ::
  T422 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du478 v0
  = let v1 = d446 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d324 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v2))
name480 = "Algebra.Bundles.Monoid._.∙-congˡ"
d480 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T422 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d480 v0 v1 v2 = du480 v2
du480 ::
  T422 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du480 v0
  = let v1 = d446 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d324 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v2))
name482 = "Algebra.Bundles.Monoid.semigroup"
d482 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T422 -> T80
d482 v0 v1 v2 = du482 v2
du482 :: T422 -> T80
du482 v0
  = coe
      C877 (d442 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d324 (coe d446 (coe v0)))
name484 = "Algebra.Bundles.Monoid.rawMonoid"
d484 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T422 -> T394
d484 v0 v1 v2 = du484 v2
du484 :: T422 -> T394
du484 v0 = coe C4379 (d442 (coe v0)) (d444 (coe v0))
name488 = "Algebra.Bundles.Monoid._.magma"
d488 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T422 -> T30
d488 v0 v1 v2 = du488 v2
du488 :: T422 -> T30
du488 v0 = coe du128 (coe du482 (coe v0))
name490 = "Algebra.Bundles.Monoid._.rawMagma"
d490 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T422 -> T8
d490 v0 v1 v2 = du490 v2
du490 :: T422 -> T8
du490 v0
  = let v1 = coe du482 (coe v0) in coe du74 (coe du128 (coe v1))
name496 = "Algebra.Bundles.CommutativeMonoid"
d496 a0 a1 = ()
data T496
  = C5649 (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
          MAlonzo.Code.Algebra.Structures.T362
name512 = "Algebra.Bundles.CommutativeMonoid.Carrier"
d512 :: T496 -> ()
d512 = erased
name514 = "Algebra.Bundles.CommutativeMonoid._≈_"
d514 :: T496 -> AgdaAny -> AgdaAny -> ()
d514 = erased
name516 = "Algebra.Bundles.CommutativeMonoid._∙_"
d516 :: T496 -> AgdaAny -> AgdaAny -> AgdaAny
d516 v0
  = case coe v0 of
      C5649 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name518 = "Algebra.Bundles.CommutativeMonoid.ε"
d518 :: T496 -> AgdaAny
d518 v0
  = case coe v0 of
      C5649 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name520 = "Algebra.Bundles.CommutativeMonoid.isCommutativeMonoid"
d520 :: T496 -> MAlonzo.Code.Algebra.Structures.T362
d520 v0
  = case coe v0 of
      C5649 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name524 = "Algebra.Bundles.CommutativeMonoid._.assoc"
d524 :: T496 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d524 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe MAlonzo.Code.Algebra.Structures.d372 (coe d520 (coe v0))))
name526 = "Algebra.Bundles.CommutativeMonoid._.comm"
d526 :: T496 -> AgdaAny -> AgdaAny -> AgdaAny
d526 v0
  = coe MAlonzo.Code.Algebra.Structures.d374 (coe d520 (coe v0))
name528 = "Algebra.Bundles.CommutativeMonoid._.identity"
d528 :: T496 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d528 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d326
      (coe MAlonzo.Code.Algebra.Structures.d372 (coe d520 (coe v0)))
name530 = "Algebra.Bundles.CommutativeMonoid._.identityʳ"
d530 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T496 -> AgdaAny -> AgdaAny
d530 v0 v1 v2 = du530 v2
du530 :: T496 -> AgdaAny -> AgdaAny
du530 v0
  = let v1 = d520 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d372 (coe v1) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v2))
name532 = "Algebra.Bundles.CommutativeMonoid._.identityˡ"
d532 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T496 -> AgdaAny -> AgdaAny
d532 v0 v1 v2 = du532 v2
du532 :: T496 -> AgdaAny -> AgdaAny
du532 v0
  = let v1 = d520 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d372 (coe v1) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v2))
name534
  = "Algebra.Bundles.CommutativeMonoid._.isCommutativeSemigroup"
d534 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T496 -> MAlonzo.Code.Algebra.Structures.T192
d534 v0 v1 v2 = du534 v2
du534 :: T496 -> MAlonzo.Code.Algebra.Structures.T192
du534 v0
  = coe MAlonzo.Code.Algebra.Structures.du410 (coe d520 (coe v0))
name536 = "Algebra.Bundles.CommutativeMonoid._.isEquivalence"
d536 :: T496 -> MAlonzo.Code.Relation.Binary.Structures.T26
d536 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d88
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe MAlonzo.Code.Algebra.Structures.d372 (coe d520 (coe v0)))))
name538 = "Algebra.Bundles.CommutativeMonoid._.isMagma"
d538 :: T496 -> MAlonzo.Code.Algebra.Structures.T80
d538 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe MAlonzo.Code.Algebra.Structures.d372 (coe d520 (coe v0))))
name540 = "Algebra.Bundles.CommutativeMonoid._.isMonoid"
d540 :: T496 -> MAlonzo.Code.Algebra.Structures.T314
d540 v0
  = coe MAlonzo.Code.Algebra.Structures.d372 (coe d520 (coe v0))
name542
  = "Algebra.Bundles.CommutativeMonoid._.isPartialEquivalence"
d542 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T496 -> MAlonzo.Code.Relation.Binary.Structures.T16
d542 v0 v1 v2 = du542 v2
du542 :: T496 -> MAlonzo.Code.Relation.Binary.Structures.T16
du542 v0
  = let v1 = d520 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d372 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d324 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d124 (coe v3) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Algebra.Structures.d88 (coe v4))
name544 = "Algebra.Bundles.CommutativeMonoid._.isSemigroup"
d544 :: T496 -> MAlonzo.Code.Algebra.Structures.T116
d544 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d324
      (coe MAlonzo.Code.Algebra.Structures.d372 (coe d520 (coe v0)))
name546 = "Algebra.Bundles.CommutativeMonoid._.refl"
d546 :: T496 -> AgdaAny -> AgdaAny
d546 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe MAlonzo.Code.Algebra.Structures.d372 (coe d520 (coe v0))))))
name548 = "Algebra.Bundles.CommutativeMonoid._.reflexive"
d548 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T496 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d548 v0 v1 v2 = du548 v2
du548 ::
  T496 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du548 v0
  = let v1 = d520 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d372 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d324 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d124 (coe v3) in
    \ v5 v6 v7 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Algebra.Structures.d88 (coe v4)) v5
name550 = "Algebra.Bundles.CommutativeMonoid._.setoid"
d550 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T496 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d550 v0 v1 v2 = du550 v2
du550 :: T496 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du550 v0
  = let v1 = d520 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d372 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d324 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du104
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v3))
name552 = "Algebra.Bundles.CommutativeMonoid._.sym"
d552 :: T496 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d552 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe MAlonzo.Code.Algebra.Structures.d372 (coe d520 (coe v0))))))
name554 = "Algebra.Bundles.CommutativeMonoid._.trans"
d554 ::
  T496 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d554 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe MAlonzo.Code.Algebra.Structures.d372 (coe d520 (coe v0))))))
name556 = "Algebra.Bundles.CommutativeMonoid._.∙-cong"
d556 ::
  T496 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d556 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe MAlonzo.Code.Algebra.Structures.d372 (coe d520 (coe v0)))))
name558 = "Algebra.Bundles.CommutativeMonoid._.∙-congʳ"
d558 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T496 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d558 v0 v1 v2 = du558 v2
du558 ::
  T496 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du558 v0
  = let v1 = d520 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d372 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d324 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v3))
name560 = "Algebra.Bundles.CommutativeMonoid._.∙-congˡ"
d560 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T496 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d560 v0 v1 v2 = du560 v2
du560 ::
  T496 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du560 v0
  = let v1 = d520 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d372 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d324 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v3))
name562 = "Algebra.Bundles.CommutativeMonoid.monoid"
d562 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T496 -> T422
d562 v0 v1 v2 = du562 v2
du562 :: T496 -> T422
du562 v0
  = coe
      C4689 (d516 (coe v0)) (d518 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d372 (coe d520 (coe v0)))
name564 = "Algebra.Bundles.CommutativeMonoid.commutativeSemigroup"
d564 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T496 -> T202
d564 v0 v1 v2 = du564 v2
du564 :: T496 -> T202
du564 v0
  = coe
      C2287 (d516 (coe v0))
      (coe MAlonzo.Code.Algebra.Structures.du410 (coe d520 (coe v0)))
name568 = "Algebra.Bundles.CommutativeMonoid._.magma"
d568 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T496 -> T30
d568 v0 v1 v2 = du568 v2
du568 :: T496 -> T30
du568 v0
  = let v1 = coe du562 (coe v0) in coe du128 (coe du482 (coe v1))
name570 = "Algebra.Bundles.CommutativeMonoid._.rawMagma"
d570 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T496 -> T8
d570 v0 v1 v2 = du570 v2
du570 :: T496 -> T8
du570 v0
  = let v1 = coe du562 (coe v0) in
    let v2 = coe du482 (coe v1) in coe du74 (coe du128 (coe v2))
name572 = "Algebra.Bundles.CommutativeMonoid._.rawMonoid"
d572 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T496 -> T394
d572 v0 v1 v2 = du572 v2
du572 :: T496 -> T394
du572 v0 = coe du484 (coe du562 (coe v0))
name574 = "Algebra.Bundles.CommutativeMonoid._.semigroup"
d574 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T496 -> T80
d574 v0 v1 v2 = du574 v2
du574 :: T496 -> T80
du574 v0 = coe du482 (coe du562 (coe v0))
name580 = "Algebra.Bundles.IdempotentCommutativeMonoid"
d580 a0 a1 = ()
data T580
  = C6733 (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
          MAlonzo.Code.Algebra.Structures.T416
name596 = "Algebra.Bundles.IdempotentCommutativeMonoid.Carrier"
d596 :: T580 -> ()
d596 = erased
name598 = "Algebra.Bundles.IdempotentCommutativeMonoid._≈_"
d598 :: T580 -> AgdaAny -> AgdaAny -> ()
d598 = erased
name600 = "Algebra.Bundles.IdempotentCommutativeMonoid._∙_"
d600 :: T580 -> AgdaAny -> AgdaAny -> AgdaAny
d600 v0
  = case coe v0 of
      C6733 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name602 = "Algebra.Bundles.IdempotentCommutativeMonoid.ε"
d602 :: T580 -> AgdaAny
d602 v0
  = case coe v0 of
      C6733 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name604
  = "Algebra.Bundles.IdempotentCommutativeMonoid.isIdempotentCommutativeMonoid"
d604 :: T580 -> MAlonzo.Code.Algebra.Structures.T416
d604 v0
  = case coe v0 of
      C6733 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name608 = "Algebra.Bundles.IdempotentCommutativeMonoid._.assoc"
d608 :: T580 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d608 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d372
            (coe MAlonzo.Code.Algebra.Structures.d426 (coe d604 (coe v0)))))
name610 = "Algebra.Bundles.IdempotentCommutativeMonoid._.comm"
d610 :: T580 -> AgdaAny -> AgdaAny -> AgdaAny
d610 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d374
      (coe MAlonzo.Code.Algebra.Structures.d426 (coe d604 (coe v0)))
name612 = "Algebra.Bundles.IdempotentCommutativeMonoid._.idem"
d612 :: T580 -> AgdaAny -> AgdaAny
d612 v0
  = coe MAlonzo.Code.Algebra.Structures.d428 (coe d604 (coe v0))
name614 = "Algebra.Bundles.IdempotentCommutativeMonoid._.identity"
d614 :: T580 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d614 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d326
      (coe
         MAlonzo.Code.Algebra.Structures.d372
         (coe MAlonzo.Code.Algebra.Structures.d426 (coe d604 (coe v0))))
name616 = "Algebra.Bundles.IdempotentCommutativeMonoid._.identityʳ"
d616 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T580 -> AgdaAny -> AgdaAny
d616 v0 v1 v2 = du616 v2
du616 :: T580 -> AgdaAny -> AgdaAny
du616 v0
  = let v1 = d604 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d426 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d372 (coe v2) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v3))
name618 = "Algebra.Bundles.IdempotentCommutativeMonoid._.identityˡ"
d618 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T580 -> AgdaAny -> AgdaAny
d618 v0 v1 v2 = du618 v2
du618 :: T580 -> AgdaAny -> AgdaAny
du618 v0
  = let v1 = d604 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d426 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d372 (coe v2) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v3))
name620
  = "Algebra.Bundles.IdempotentCommutativeMonoid._.isCommutativeMonoid"
d620 :: T580 -> MAlonzo.Code.Algebra.Structures.T362
d620 v0
  = coe MAlonzo.Code.Algebra.Structures.d426 (coe d604 (coe v0))
name622
  = "Algebra.Bundles.IdempotentCommutativeMonoid._.isCommutativeSemigroup"
d622 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T580 -> MAlonzo.Code.Algebra.Structures.T192
d622 v0 v1 v2 = du622 v2
du622 :: T580 -> MAlonzo.Code.Algebra.Structures.T192
du622 v0
  = let v1 = d604 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du410
      (coe MAlonzo.Code.Algebra.Structures.d426 (coe v1))
name624
  = "Algebra.Bundles.IdempotentCommutativeMonoid._.isEquivalence"
d624 :: T580 -> MAlonzo.Code.Relation.Binary.Structures.T26
d624 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d88
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d372
               (coe MAlonzo.Code.Algebra.Structures.d426 (coe d604 (coe v0))))))
name626 = "Algebra.Bundles.IdempotentCommutativeMonoid._.isMagma"
d626 :: T580 -> MAlonzo.Code.Algebra.Structures.T80
d626 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d372
            (coe MAlonzo.Code.Algebra.Structures.d426 (coe d604 (coe v0)))))
name628 = "Algebra.Bundles.IdempotentCommutativeMonoid._.isMonoid"
d628 :: T580 -> MAlonzo.Code.Algebra.Structures.T314
d628 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d372
      (coe MAlonzo.Code.Algebra.Structures.d426 (coe d604 (coe v0)))
name630
  = "Algebra.Bundles.IdempotentCommutativeMonoid._.isPartialEquivalence"
d630 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T580 -> MAlonzo.Code.Relation.Binary.Structures.T16
d630 v0 v1 v2 = du630 v2
du630 :: T580 -> MAlonzo.Code.Relation.Binary.Structures.T16
du630 v0
  = let v1 = d604 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d426 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d372 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d124 (coe v4) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Algebra.Structures.d88 (coe v5))
name632
  = "Algebra.Bundles.IdempotentCommutativeMonoid._.isSemigroup"
d632 :: T580 -> MAlonzo.Code.Algebra.Structures.T116
d632 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d324
      (coe
         MAlonzo.Code.Algebra.Structures.d372
         (coe MAlonzo.Code.Algebra.Structures.d426 (coe d604 (coe v0))))
name634 = "Algebra.Bundles.IdempotentCommutativeMonoid._.refl"
d634 :: T580 -> AgdaAny -> AgdaAny
d634 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe MAlonzo.Code.Algebra.Structures.d426 (coe d604 (coe v0)))))))
name636 = "Algebra.Bundles.IdempotentCommutativeMonoid._.reflexive"
d636 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T580 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d636 v0 v1 v2 = du636 v2
du636 ::
  T580 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du636 v0
  = let v1 = d604 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d426 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d372 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d124 (coe v4) in
    \ v6 v7 v8 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Algebra.Structures.d88 (coe v5)) v6
name638 = "Algebra.Bundles.IdempotentCommutativeMonoid._.setoid"
d638 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T580 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d638 v0 v1 v2 = du638 v2
du638 :: T580 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du638 v0
  = let v1 = d604 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d426 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d372 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du104
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v4))
name640 = "Algebra.Bundles.IdempotentCommutativeMonoid._.sym"
d640 :: T580 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d640 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe MAlonzo.Code.Algebra.Structures.d426 (coe d604 (coe v0)))))))
name642 = "Algebra.Bundles.IdempotentCommutativeMonoid._.trans"
d642 ::
  T580 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d642 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe MAlonzo.Code.Algebra.Structures.d426 (coe d604 (coe v0)))))))
name644 = "Algebra.Bundles.IdempotentCommutativeMonoid._.∙-cong"
d644 ::
  T580 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d644 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d372
               (coe MAlonzo.Code.Algebra.Structures.d426 (coe d604 (coe v0))))))
name646 = "Algebra.Bundles.IdempotentCommutativeMonoid._.∙-congʳ"
d646 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T580 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d646 v0 v1 v2 = du646 v2
du646 ::
  T580 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du646 v0
  = let v1 = d604 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d426 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d372 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v4))
name648 = "Algebra.Bundles.IdempotentCommutativeMonoid._.∙-congˡ"
d648 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T580 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d648 v0 v1 v2 = du648 v2
du648 ::
  T580 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du648 v0
  = let v1 = d604 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d426 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d372 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v4))
name650
  = "Algebra.Bundles.IdempotentCommutativeMonoid.commutativeMonoid"
d650 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T580 -> T496
d650 v0 v1 v2 = du650 v2
du650 :: T580 -> T496
du650 v0
  = coe
      C5649 (d600 (coe v0)) (d602 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d426 (coe d604 (coe v0)))
name654 = "Algebra.Bundles.IdempotentCommutativeMonoid._.magma"
d654 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T580 -> T30
d654 v0 v1 v2 = du654 v2
du654 :: T580 -> T30
du654 v0
  = let v1 = coe du650 (coe v0) in
    let v2 = coe du562 (coe v1) in coe du128 (coe du482 (coe v2))
name656 = "Algebra.Bundles.IdempotentCommutativeMonoid._.monoid"
d656 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T580 -> T422
d656 v0 v1 v2 = du656 v2
du656 :: T580 -> T422
du656 v0 = coe du562 (coe du650 (coe v0))
name658 = "Algebra.Bundles.IdempotentCommutativeMonoid._.rawMagma"
d658 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T580 -> T8
d658 v0 v1 v2 = du658 v2
du658 :: T580 -> T8
du658 v0
  = let v1 = coe du650 (coe v0) in
    let v2 = coe du562 (coe v1) in
    let v3 = coe du482 (coe v2) in coe du74 (coe du128 (coe v3))
name660 = "Algebra.Bundles.IdempotentCommutativeMonoid._.rawMonoid"
d660 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T580 -> T394
d660 v0 v1 v2 = du660 v2
du660 :: T580 -> T394
du660 v0
  = let v1 = coe du650 (coe v0) in coe du484 (coe du562 (coe v1))
name662 = "Algebra.Bundles.IdempotentCommutativeMonoid._.semigroup"
d662 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T580 -> T80
d662 v0 v1 v2 = du662 v2
du662 :: T580 -> T80
du662 v0
  = let v1 = coe du650 (coe v0) in coe du482 (coe du562 (coe v1))
name664 = "Algebra.Bundles.BoundedLattice"
d664 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> ()
d664 = erased
name674 = "Algebra.Bundles.BoundedLattice._∙_"
d674 :: T580 -> AgdaAny -> AgdaAny -> AgdaAny
d674 v0 = coe d600 (coe v0)
name676 = "Algebra.Bundles.BoundedLattice._≈_"
d676 :: T580 -> AgdaAny -> AgdaAny -> ()
d676 = erased
name678 = "Algebra.Bundles.BoundedLattice.Carrier"
d678 :: T580 -> ()
d678 = erased
name680 = "Algebra.Bundles.BoundedLattice.assoc"
d680 :: T580 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d680 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d372
            (coe MAlonzo.Code.Algebra.Structures.d426 (coe d604 (coe v0)))))
name682 = "Algebra.Bundles.BoundedLattice.comm"
d682 :: T580 -> AgdaAny -> AgdaAny -> AgdaAny
d682 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d374
      (coe MAlonzo.Code.Algebra.Structures.d426 (coe d604 (coe v0)))
name684 = "Algebra.Bundles.BoundedLattice.commutativeMonoid"
d684 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T580 -> T496
d684 v0 v1 v2 = du684 v2
du684 :: T580 -> T496
du684 v0 = coe du650 (coe v0)
name686 = "Algebra.Bundles.BoundedLattice.idem"
d686 :: T580 -> AgdaAny -> AgdaAny
d686 v0
  = coe MAlonzo.Code.Algebra.Structures.d428 (coe d604 (coe v0))
name688 = "Algebra.Bundles.BoundedLattice.identity"
d688 :: T580 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d688 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d326
      (coe
         MAlonzo.Code.Algebra.Structures.d372
         (coe MAlonzo.Code.Algebra.Structures.d426 (coe d604 (coe v0))))
name690 = "Algebra.Bundles.BoundedLattice.identityʳ"
d690 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T580 -> AgdaAny -> AgdaAny
d690 v0 v1 v2 = du690 v2
du690 :: T580 -> AgdaAny -> AgdaAny
du690 v0
  = let v1 = d604 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d426 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d372 (coe v2) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v3))
name692 = "Algebra.Bundles.BoundedLattice.identityˡ"
d692 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T580 -> AgdaAny -> AgdaAny
d692 v0 v1 v2 = du692 v2
du692 :: T580 -> AgdaAny -> AgdaAny
du692 v0
  = let v1 = d604 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d426 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d372 (coe v2) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v3))
name694 = "Algebra.Bundles.BoundedLattice.isCommutativeMonoid"
d694 :: T580 -> MAlonzo.Code.Algebra.Structures.T362
d694 v0
  = coe MAlonzo.Code.Algebra.Structures.d426 (coe d604 (coe v0))
name696 = "Algebra.Bundles.BoundedLattice.isCommutativeSemigroup"
d696 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T580 -> MAlonzo.Code.Algebra.Structures.T192
d696 v0 v1 v2 = du696 v2
du696 :: T580 -> MAlonzo.Code.Algebra.Structures.T192
du696 v0
  = let v1 = d604 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du410
      (coe MAlonzo.Code.Algebra.Structures.d426 (coe v1))
name698 = "Algebra.Bundles.BoundedLattice.isEquivalence"
d698 :: T580 -> MAlonzo.Code.Relation.Binary.Structures.T26
d698 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d88
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d372
               (coe MAlonzo.Code.Algebra.Structures.d426 (coe d604 (coe v0))))))
name700
  = "Algebra.Bundles.BoundedLattice.isIdempotentCommutativeMonoid"
d700 :: T580 -> MAlonzo.Code.Algebra.Structures.T416
d700 v0 = coe d604 (coe v0)
name702 = "Algebra.Bundles.BoundedLattice.isMagma"
d702 :: T580 -> MAlonzo.Code.Algebra.Structures.T80
d702 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d372
            (coe MAlonzo.Code.Algebra.Structures.d426 (coe d604 (coe v0)))))
name704 = "Algebra.Bundles.BoundedLattice.isMonoid"
d704 :: T580 -> MAlonzo.Code.Algebra.Structures.T314
d704 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d372
      (coe MAlonzo.Code.Algebra.Structures.d426 (coe d604 (coe v0)))
name706 = "Algebra.Bundles.BoundedLattice.isPartialEquivalence"
d706 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T580 -> MAlonzo.Code.Relation.Binary.Structures.T16
d706 v0 v1 v2 = du706 v2
du706 :: T580 -> MAlonzo.Code.Relation.Binary.Structures.T16
du706 v0
  = let v1 = d604 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d426 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d372 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d124 (coe v4) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Algebra.Structures.d88 (coe v5))
name708 = "Algebra.Bundles.BoundedLattice.isSemigroup"
d708 :: T580 -> MAlonzo.Code.Algebra.Structures.T116
d708 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d324
      (coe
         MAlonzo.Code.Algebra.Structures.d372
         (coe MAlonzo.Code.Algebra.Structures.d426 (coe d604 (coe v0))))
name710 = "Algebra.Bundles.BoundedLattice.magma"
d710 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T580 -> T30
d710 v0 v1 v2 = du710 v2
du710 :: T580 -> T30
du710 v0
  = let v1 = coe du650 (coe v0) in
    let v2 = coe du562 (coe v1) in coe du128 (coe du482 (coe v2))
name712 = "Algebra.Bundles.BoundedLattice.monoid"
d712 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T580 -> T422
d712 v0 v1 v2 = du712 v2
du712 :: T580 -> T422
du712 v0 = coe du562 (coe du650 (coe v0))
name714 = "Algebra.Bundles.BoundedLattice.rawMagma"
d714 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T580 -> T8
d714 v0 v1 v2 = du714 v2
du714 :: T580 -> T8
du714 v0
  = let v1 = coe du650 (coe v0) in
    let v2 = coe du562 (coe v1) in
    let v3 = coe du482 (coe v2) in coe du74 (coe du128 (coe v3))
name716 = "Algebra.Bundles.BoundedLattice.rawMonoid"
d716 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T580 -> T394
d716 v0 v1 v2 = du716 v2
du716 :: T580 -> T394
du716 v0
  = let v1 = coe du650 (coe v0) in coe du484 (coe du562 (coe v1))
name718 = "Algebra.Bundles.BoundedLattice.refl"
d718 :: T580 -> AgdaAny -> AgdaAny
d718 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe MAlonzo.Code.Algebra.Structures.d426 (coe d604 (coe v0)))))))
name720 = "Algebra.Bundles.BoundedLattice.reflexive"
d720 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T580 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d720 v0 v1 v2 = du720 v2
du720 ::
  T580 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du720 v0
  = let v1 = d604 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d426 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d372 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d124 (coe v4) in
    \ v6 v7 v8 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Algebra.Structures.d88 (coe v5)) v6
name722 = "Algebra.Bundles.BoundedLattice.semigroup"
d722 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T580 -> T80
d722 v0 v1 v2 = du722 v2
du722 :: T580 -> T80
du722 v0
  = let v1 = coe du650 (coe v0) in coe du482 (coe du562 (coe v1))
name724 = "Algebra.Bundles.BoundedLattice.setoid"
d724 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T580 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d724 v0 v1 v2 = du724 v2
du724 :: T580 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du724 v0
  = let v1 = d604 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d426 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d372 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du104
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v4))
name726 = "Algebra.Bundles.BoundedLattice.sym"
d726 :: T580 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d726 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe MAlonzo.Code.Algebra.Structures.d426 (coe d604 (coe v0)))))))
name728 = "Algebra.Bundles.BoundedLattice.trans"
d728 ::
  T580 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d728 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe MAlonzo.Code.Algebra.Structures.d426 (coe d604 (coe v0)))))))
name730 = "Algebra.Bundles.BoundedLattice.ε"
d730 :: T580 -> AgdaAny
d730 v0 = coe d602 (coe v0)
name732 = "Algebra.Bundles.BoundedLattice.∙-cong"
d732 ::
  T580 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d732 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d372
               (coe MAlonzo.Code.Algebra.Structures.d426 (coe d604 (coe v0))))))
name734 = "Algebra.Bundles.BoundedLattice.∙-congʳ"
d734 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T580 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d734 v0 v1 v2 = du734 v2
du734 ::
  T580 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du734 v0
  = let v1 = d604 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d426 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d372 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v4))
name736 = "Algebra.Bundles.BoundedLattice.∙-congˡ"
d736 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T580 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d736 v0 v1 v2 = du736 v2
du736 ::
  T580 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du736 v0
  = let v1 = d604 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d426 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d372 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v4))
name742 = "Algebra.Bundles.RawGroup"
d742 a0 a1 = ()
data T742
  = C7753 (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
          (AgdaAny -> AgdaAny)
name758 = "Algebra.Bundles.RawGroup.Carrier"
d758 :: T742 -> ()
d758 = erased
name760 = "Algebra.Bundles.RawGroup._≈_"
d760 :: T742 -> AgdaAny -> AgdaAny -> ()
d760 = erased
name762 = "Algebra.Bundles.RawGroup._∙_"
d762 :: T742 -> AgdaAny -> AgdaAny -> AgdaAny
d762 v0
  = case coe v0 of
      C7753 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name764 = "Algebra.Bundles.RawGroup.ε"
d764 :: T742 -> AgdaAny
d764 v0
  = case coe v0 of
      C7753 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name766 = "Algebra.Bundles.RawGroup._⁻¹"
d766 :: T742 -> AgdaAny -> AgdaAny
d766 v0
  = case coe v0 of
      C7753 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name768 = "Algebra.Bundles.RawGroup.rawMonoid"
d768 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T742 -> T394
d768 v0 v1 v2 = du768 v2
du768 :: T742 -> T394
du768 v0 = coe C4379 (d762 (coe v0)) (d764 (coe v0))
name772 = "Algebra.Bundles.RawGroup._.rawMagma"
d772 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T742 -> T8
d772 v0 v1 v2 = du772 v2
du772 :: T742 -> T8
du772 v0 = coe du416 (coe du768 (coe v0))
name778 = "Algebra.Bundles.Group"
d778 a0 a1 = ()
data T778
  = C8157 (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
          (AgdaAny -> AgdaAny) MAlonzo.Code.Algebra.Structures.T528
name796 = "Algebra.Bundles.Group.Carrier"
d796 :: T778 -> ()
d796 = erased
name798 = "Algebra.Bundles.Group._≈_"
d798 :: T778 -> AgdaAny -> AgdaAny -> ()
d798 = erased
name800 = "Algebra.Bundles.Group._∙_"
d800 :: T778 -> AgdaAny -> AgdaAny -> AgdaAny
d800 v0
  = case coe v0 of
      C8157 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name802 = "Algebra.Bundles.Group.ε"
d802 :: T778 -> AgdaAny
d802 v0
  = case coe v0 of
      C8157 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name804 = "Algebra.Bundles.Group._⁻¹"
d804 :: T778 -> AgdaAny -> AgdaAny
d804 v0
  = case coe v0 of
      C8157 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name806 = "Algebra.Bundles.Group.isGroup"
d806 :: T778 -> MAlonzo.Code.Algebra.Structures.T528
d806 v0
  = case coe v0 of
      C8157 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name810 = "Algebra.Bundles.Group._._-_"
d810 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T778 -> AgdaAny -> AgdaAny -> AgdaAny
d810 v0 v1 v2 = du810 v2
du810 :: T778 -> AgdaAny -> AgdaAny -> AgdaAny
du810 v0
  = let v1 = d800 (coe v0) in
    let v2 = d804 (coe v0) in coe (\ v3 v4 -> coe v1 v3 (coe v2 v4))
name812 = "Algebra.Bundles.Group._.assoc"
d812 :: T778 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d812 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe MAlonzo.Code.Algebra.Structures.d542 (coe d806 (coe v0))))
name814 = "Algebra.Bundles.Group._.identity"
d814 :: T778 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d814 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d326
      (coe MAlonzo.Code.Algebra.Structures.d542 (coe d806 (coe v0)))
name816 = "Algebra.Bundles.Group._.identityʳ"
d816 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T778 -> AgdaAny -> AgdaAny
d816 v0 v1 v2 = du816 v2
du816 :: T778 -> AgdaAny -> AgdaAny
du816 v0
  = let v1 = d806 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d542 (coe v1) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v2))
name818 = "Algebra.Bundles.Group._.identityˡ"
d818 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T778 -> AgdaAny -> AgdaAny
d818 v0 v1 v2 = du818 v2
du818 :: T778 -> AgdaAny -> AgdaAny
du818 v0
  = let v1 = d806 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d542 (coe v1) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v2))
name820 = "Algebra.Bundles.Group._.inverse"
d820 :: T778 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d820 v0
  = coe MAlonzo.Code.Algebra.Structures.d544 (coe d806 (coe v0))
name822 = "Algebra.Bundles.Group._.inverseʳ"
d822 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T778 -> AgdaAny -> AgdaAny
d822 v0 v1 v2 = du822 v2
du822 :: T778 -> AgdaAny -> AgdaAny
du822 v0
  = let v1 = d806 (coe v0) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d544 (coe v1))
name824 = "Algebra.Bundles.Group._.inverseˡ"
d824 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T778 -> AgdaAny -> AgdaAny
d824 v0 v1 v2 = du824 v2
du824 :: T778 -> AgdaAny -> AgdaAny
du824 v0
  = let v1 = d806 (coe v0) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d544 (coe v1))
name826 = "Algebra.Bundles.Group._.isEquivalence"
d826 :: T778 -> MAlonzo.Code.Relation.Binary.Structures.T26
d826 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d88
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe MAlonzo.Code.Algebra.Structures.d542 (coe d806 (coe v0)))))
name828 = "Algebra.Bundles.Group._.isMagma"
d828 :: T778 -> MAlonzo.Code.Algebra.Structures.T80
d828 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe MAlonzo.Code.Algebra.Structures.d542 (coe d806 (coe v0))))
name830 = "Algebra.Bundles.Group._.isMonoid"
d830 :: T778 -> MAlonzo.Code.Algebra.Structures.T314
d830 v0
  = coe MAlonzo.Code.Algebra.Structures.d542 (coe d806 (coe v0))
name832 = "Algebra.Bundles.Group._.isPartialEquivalence"
d832 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T778 -> MAlonzo.Code.Relation.Binary.Structures.T16
d832 v0 v1 v2 = du832 v2
du832 :: T778 -> MAlonzo.Code.Relation.Binary.Structures.T16
du832 v0
  = let v1 = d806 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d542 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d324 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d124 (coe v3) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Algebra.Structures.d88 (coe v4))
name834 = "Algebra.Bundles.Group._.isSemigroup"
d834 :: T778 -> MAlonzo.Code.Algebra.Structures.T116
d834 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d324
      (coe MAlonzo.Code.Algebra.Structures.d542 (coe d806 (coe v0)))
name836 = "Algebra.Bundles.Group._.refl"
d836 :: T778 -> AgdaAny -> AgdaAny
d836 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe MAlonzo.Code.Algebra.Structures.d542 (coe d806 (coe v0))))))
name838 = "Algebra.Bundles.Group._.reflexive"
d838 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T778 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d838 v0 v1 v2 = du838 v2
du838 ::
  T778 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du838 v0
  = let v1 = d806 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d542 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d324 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d124 (coe v3) in
    \ v5 v6 v7 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Algebra.Structures.d88 (coe v4)) v5
name840 = "Algebra.Bundles.Group._.setoid"
d840 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T778 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d840 v0 v1 v2 = du840 v2
du840 :: T778 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du840 v0
  = let v1 = d806 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d542 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d324 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du104
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v3))
name842 = "Algebra.Bundles.Group._.sym"
d842 :: T778 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d842 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe MAlonzo.Code.Algebra.Structures.d542 (coe d806 (coe v0))))))
name844 = "Algebra.Bundles.Group._.trans"
d844 ::
  T778 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d844 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe MAlonzo.Code.Algebra.Structures.d542 (coe d806 (coe v0))))))
name846 = "Algebra.Bundles.Group._.uniqueʳ-⁻¹"
d846 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T778 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d846 v0 v1 v2 = du846 v2
du846 :: T778 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du846 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du602 (coe d800 (coe v0))
      (coe d802 (coe v0)) (coe d804 (coe v0)) (coe d806 (coe v0))
name848 = "Algebra.Bundles.Group._.uniqueˡ-⁻¹"
d848 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T778 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d848 v0 v1 v2 = du848 v2
du848 :: T778 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du848 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du596 (coe d800 (coe v0))
      (coe d802 (coe v0)) (coe d804 (coe v0)) (coe d806 (coe v0))
name850 = "Algebra.Bundles.Group._.⁻¹-cong"
d850 :: T778 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d850 v0
  = coe MAlonzo.Code.Algebra.Structures.d546 (coe d806 (coe v0))
name852 = "Algebra.Bundles.Group._.∙-cong"
d852 ::
  T778 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d852 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe MAlonzo.Code.Algebra.Structures.d542 (coe d806 (coe v0)))))
name854 = "Algebra.Bundles.Group._.∙-congʳ"
d854 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T778 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d854 v0 v1 v2 = du854 v2
du854 ::
  T778 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du854 v0
  = let v1 = d806 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d542 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d324 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v3))
name856 = "Algebra.Bundles.Group._.∙-congˡ"
d856 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T778 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d856 v0 v1 v2 = du856 v2
du856 ::
  T778 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du856 v0
  = let v1 = d806 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d542 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d324 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v3))
name858 = "Algebra.Bundles.Group.rawGroup"
d858 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T778 -> T742
d858 v0 v1 v2 = du858 v2
du858 :: T778 -> T742
du858 v0
  = coe C7753 (d800 (coe v0)) (d802 (coe v0)) (d804 (coe v0))
name860 = "Algebra.Bundles.Group.monoid"
d860 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T778 -> T422
d860 v0 v1 v2 = du860 v2
du860 :: T778 -> T422
du860 v0
  = coe
      C4689 (d800 (coe v0)) (d802 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d542 (coe d806 (coe v0)))
name864 = "Algebra.Bundles.Group._.magma"
d864 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T778 -> T30
d864 v0 v1 v2 = du864 v2
du864 :: T778 -> T30
du864 v0
  = let v1 = coe du860 (coe v0) in coe du128 (coe du482 (coe v1))
name866 = "Algebra.Bundles.Group._.rawMagma"
d866 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T778 -> T8
d866 v0 v1 v2 = du866 v2
du866 :: T778 -> T8
du866 v0
  = let v1 = coe du860 (coe v0) in
    let v2 = coe du482 (coe v1) in coe du74 (coe du128 (coe v2))
name868 = "Algebra.Bundles.Group._.rawMonoid"
d868 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T778 -> T394
d868 v0 v1 v2 = du868 v2
du868 :: T778 -> T394
du868 v0 = coe du484 (coe du860 (coe v0))
name870 = "Algebra.Bundles.Group._.semigroup"
d870 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T778 -> T80
d870 v0 v1 v2 = du870 v2
du870 :: T778 -> T80
du870 v0 = coe du482 (coe du860 (coe v0))
name876 = "Algebra.Bundles.AbelianGroup"
d876 a0 a1 = ()
data T876
  = C9391 (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
          (AgdaAny -> AgdaAny) MAlonzo.Code.Algebra.Structures.T610
name894 = "Algebra.Bundles.AbelianGroup.Carrier"
d894 :: T876 -> ()
d894 = erased
name896 = "Algebra.Bundles.AbelianGroup._≈_"
d896 :: T876 -> AgdaAny -> AgdaAny -> ()
d896 = erased
name898 = "Algebra.Bundles.AbelianGroup._∙_"
d898 :: T876 -> AgdaAny -> AgdaAny -> AgdaAny
d898 v0
  = case coe v0 of
      C9391 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name900 = "Algebra.Bundles.AbelianGroup.ε"
d900 :: T876 -> AgdaAny
d900 v0
  = case coe v0 of
      C9391 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name902 = "Algebra.Bundles.AbelianGroup._⁻¹"
d902 :: T876 -> AgdaAny -> AgdaAny
d902 v0
  = case coe v0 of
      C9391 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name904 = "Algebra.Bundles.AbelianGroup.isAbelianGroup"
d904 :: T876 -> MAlonzo.Code.Algebra.Structures.T610
d904 v0
  = case coe v0 of
      C9391 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name908 = "Algebra.Bundles.AbelianGroup._._-_"
d908 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T876 -> AgdaAny -> AgdaAny -> AgdaAny
d908 v0 v1 v2 = du908 v2
du908 :: T876 -> AgdaAny -> AgdaAny -> AgdaAny
du908 v0
  = let v1 = d898 (coe v0) in
    let v2 = d902 (coe v0) in coe (\ v3 v4 -> coe v1 v3 (coe v2 v4))
name910 = "Algebra.Bundles.AbelianGroup._.assoc"
d910 :: T876 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d910 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d542
            (coe MAlonzo.Code.Algebra.Structures.d622 (coe d904 (coe v0)))))
name912 = "Algebra.Bundles.AbelianGroup._.comm"
d912 :: T876 -> AgdaAny -> AgdaAny -> AgdaAny
d912 v0
  = coe MAlonzo.Code.Algebra.Structures.d624 (coe d904 (coe v0))
name914 = "Algebra.Bundles.AbelianGroup._.identity"
d914 :: T876 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d914 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d326
      (coe
         MAlonzo.Code.Algebra.Structures.d542
         (coe MAlonzo.Code.Algebra.Structures.d622 (coe d904 (coe v0))))
name916 = "Algebra.Bundles.AbelianGroup._.identityʳ"
d916 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T876 -> AgdaAny -> AgdaAny
d916 v0 v1 v2 = du916 v2
du916 :: T876 -> AgdaAny -> AgdaAny
du916 v0
  = let v1 = d904 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d622 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d542 (coe v2) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v3))
name918 = "Algebra.Bundles.AbelianGroup._.identityˡ"
d918 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T876 -> AgdaAny -> AgdaAny
d918 v0 v1 v2 = du918 v2
du918 :: T876 -> AgdaAny -> AgdaAny
du918 v0
  = let v1 = d904 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d622 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d542 (coe v2) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v3))
name920 = "Algebra.Bundles.AbelianGroup._.inverse"
d920 :: T876 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d920 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d544
      (coe MAlonzo.Code.Algebra.Structures.d622 (coe d904 (coe v0)))
name922 = "Algebra.Bundles.AbelianGroup._.inverseʳ"
d922 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T876 -> AgdaAny -> AgdaAny
d922 v0 v1 v2 = du922 v2
du922 :: T876 -> AgdaAny -> AgdaAny
du922 v0
  = let v1 = d904 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d622 (coe v1) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d544 (coe v2))
name924 = "Algebra.Bundles.AbelianGroup._.inverseˡ"
d924 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T876 -> AgdaAny -> AgdaAny
d924 v0 v1 v2 = du924 v2
du924 :: T876 -> AgdaAny -> AgdaAny
du924 v0
  = let v1 = d904 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d622 (coe v1) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d544 (coe v2))
name926 = "Algebra.Bundles.AbelianGroup._.isCommutativeMonoid"
d926 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T876 -> MAlonzo.Code.Algebra.Structures.T362
d926 v0 v1 v2 = du926 v2
du926 :: T876 -> MAlonzo.Code.Algebra.Structures.T362
du926 v0
  = coe MAlonzo.Code.Algebra.Structures.du676 (coe d904 (coe v0))
name928 = "Algebra.Bundles.AbelianGroup._.isCommutativeSemigroup"
d928 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T876 -> MAlonzo.Code.Algebra.Structures.T192
d928 v0 v1 v2 = du928 v2
du928 :: T876 -> MAlonzo.Code.Algebra.Structures.T192
du928 v0
  = let v1 = d904 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du410
      (coe MAlonzo.Code.Algebra.Structures.du676 (coe v1))
name930 = "Algebra.Bundles.AbelianGroup._.isEquivalence"
d930 :: T876 -> MAlonzo.Code.Relation.Binary.Structures.T26
d930 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d88
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d542
               (coe MAlonzo.Code.Algebra.Structures.d622 (coe d904 (coe v0))))))
name932 = "Algebra.Bundles.AbelianGroup._.isGroup"
d932 :: T876 -> MAlonzo.Code.Algebra.Structures.T528
d932 v0
  = coe MAlonzo.Code.Algebra.Structures.d622 (coe d904 (coe v0))
name934 = "Algebra.Bundles.AbelianGroup._.isMagma"
d934 :: T876 -> MAlonzo.Code.Algebra.Structures.T80
d934 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d542
            (coe MAlonzo.Code.Algebra.Structures.d622 (coe d904 (coe v0)))))
name936 = "Algebra.Bundles.AbelianGroup._.isMonoid"
d936 :: T876 -> MAlonzo.Code.Algebra.Structures.T314
d936 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d542
      (coe MAlonzo.Code.Algebra.Structures.d622 (coe d904 (coe v0)))
name938 = "Algebra.Bundles.AbelianGroup._.isPartialEquivalence"
d938 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T876 -> MAlonzo.Code.Relation.Binary.Structures.T16
d938 v0 v1 v2 = du938 v2
du938 :: T876 -> MAlonzo.Code.Relation.Binary.Structures.T16
du938 v0
  = let v1 = d904 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d622 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d542 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d124 (coe v4) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Algebra.Structures.d88 (coe v5))
name940 = "Algebra.Bundles.AbelianGroup._.isSemigroup"
d940 :: T876 -> MAlonzo.Code.Algebra.Structures.T116
d940 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d324
      (coe
         MAlonzo.Code.Algebra.Structures.d542
         (coe MAlonzo.Code.Algebra.Structures.d622 (coe d904 (coe v0))))
name942 = "Algebra.Bundles.AbelianGroup._.refl"
d942 :: T876 -> AgdaAny -> AgdaAny
d942 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d542
                  (coe MAlonzo.Code.Algebra.Structures.d622 (coe d904 (coe v0)))))))
name944 = "Algebra.Bundles.AbelianGroup._.reflexive"
d944 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T876 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d944 v0 v1 v2 = du944 v2
du944 ::
  T876 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du944 v0
  = let v1 = d904 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d622 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d542 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d124 (coe v4) in
    \ v6 v7 v8 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Algebra.Structures.d88 (coe v5)) v6
name946 = "Algebra.Bundles.AbelianGroup._.setoid"
d946 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T876 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d946 v0 v1 v2 = du946 v2
du946 :: T876 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du946 v0
  = let v1 = d904 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d622 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d542 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du104
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v4))
name948 = "Algebra.Bundles.AbelianGroup._.sym"
d948 :: T876 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d948 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d542
                  (coe MAlonzo.Code.Algebra.Structures.d622 (coe d904 (coe v0)))))))
name950 = "Algebra.Bundles.AbelianGroup._.trans"
d950 ::
  T876 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d950 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d542
                  (coe MAlonzo.Code.Algebra.Structures.d622 (coe d904 (coe v0)))))))
name952 = "Algebra.Bundles.AbelianGroup._.uniqueʳ-⁻¹"
d952 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T876 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d952 v0 v1 v2 = du952 v2
du952 :: T876 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du952 v0
  = let v1 = d898 (coe v0) in
    let v2 = d900 (coe v0) in
    let v3 = d902 (coe v0) in
    let v4 = d904 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du602 (coe v1) (coe v2) (coe v3)
      (coe MAlonzo.Code.Algebra.Structures.d622 (coe v4))
name954 = "Algebra.Bundles.AbelianGroup._.uniqueˡ-⁻¹"
d954 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T876 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d954 v0 v1 v2 = du954 v2
du954 :: T876 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du954 v0
  = let v1 = d898 (coe v0) in
    let v2 = d900 (coe v0) in
    let v3 = d902 (coe v0) in
    let v4 = d904 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du596 (coe v1) (coe v2) (coe v3)
      (coe MAlonzo.Code.Algebra.Structures.d622 (coe v4))
name956 = "Algebra.Bundles.AbelianGroup._.⁻¹-cong"
d956 :: T876 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d956 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d546
      (coe MAlonzo.Code.Algebra.Structures.d622 (coe d904 (coe v0)))
name958 = "Algebra.Bundles.AbelianGroup._.∙-cong"
d958 ::
  T876 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d958 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d542
               (coe MAlonzo.Code.Algebra.Structures.d622 (coe d904 (coe v0))))))
name960 = "Algebra.Bundles.AbelianGroup._.∙-congʳ"
d960 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T876 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d960 v0 v1 v2 = du960 v2
du960 ::
  T876 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du960 v0
  = let v1 = d904 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d622 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d542 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v4))
name962 = "Algebra.Bundles.AbelianGroup._.∙-congˡ"
d962 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T876 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d962 v0 v1 v2 = du962 v2
du962 ::
  T876 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du962 v0
  = let v1 = d904 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d622 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d542 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v4))
name964 = "Algebra.Bundles.AbelianGroup.group"
d964 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T876 -> T778
d964 v0 v1 v2 = du964 v2
du964 :: T876 -> T778
du964 v0
  = coe
      C8157 (d898 (coe v0)) (d900 (coe v0)) (d902 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d622 (coe d904 (coe v0)))
name968 = "Algebra.Bundles.AbelianGroup._.magma"
d968 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T876 -> T30
d968 v0 v1 v2 = du968 v2
du968 :: T876 -> T30
du968 v0
  = let v1 = coe du964 (coe v0) in
    let v2 = coe du860 (coe v1) in coe du128 (coe du482 (coe v2))
name970 = "Algebra.Bundles.AbelianGroup._.monoid"
d970 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T876 -> T422
d970 v0 v1 v2 = du970 v2
du970 :: T876 -> T422
du970 v0 = coe du860 (coe du964 (coe v0))
name972 = "Algebra.Bundles.AbelianGroup._.rawGroup"
d972 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T876 -> T742
d972 v0 v1 v2 = du972 v2
du972 :: T876 -> T742
du972 v0 = coe du858 (coe du964 (coe v0))
name974 = "Algebra.Bundles.AbelianGroup._.rawMagma"
d974 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T876 -> T8
d974 v0 v1 v2 = du974 v2
du974 :: T876 -> T8
du974 v0
  = let v1 = coe du964 (coe v0) in
    let v2 = coe du860 (coe v1) in
    let v3 = coe du482 (coe v2) in coe du74 (coe du128 (coe v3))
name976 = "Algebra.Bundles.AbelianGroup._.rawMonoid"
d976 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T876 -> T394
d976 v0 v1 v2 = du976 v2
du976 :: T876 -> T394
du976 v0
  = let v1 = coe du964 (coe v0) in coe du484 (coe du860 (coe v1))
name978 = "Algebra.Bundles.AbelianGroup._.semigroup"
d978 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T876 -> T80
d978 v0 v1 v2 = du978 v2
du978 :: T876 -> T80
du978 v0
  = let v1 = coe du964 (coe v0) in coe du482 (coe du860 (coe v1))
name980 = "Algebra.Bundles.AbelianGroup.commutativeMonoid"
d980 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T876 -> T496
d980 v0 v1 v2 = du980 v2
du980 :: T876 -> T496
du980 v0
  = coe
      C5649 (d898 (coe v0)) (d900 (coe v0))
      (coe MAlonzo.Code.Algebra.Structures.du676 (coe d904 (coe v0)))
name986 = "Algebra.Bundles.Lattice"
d986 a0 a1 = ()
data T986
  = C10761 (AgdaAny -> AgdaAny -> AgdaAny)
           (AgdaAny -> AgdaAny -> AgdaAny)
           MAlonzo.Code.Algebra.Structures.T686
name1002 = "Algebra.Bundles.Lattice.Carrier"
d1002 :: T986 -> ()
d1002 = erased
name1004 = "Algebra.Bundles.Lattice._≈_"
d1004 :: T986 -> AgdaAny -> AgdaAny -> ()
d1004 = erased
name1006 = "Algebra.Bundles.Lattice._∨_"
d1006 :: T986 -> AgdaAny -> AgdaAny -> AgdaAny
d1006 v0
  = case coe v0 of
      C10761 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1008 = "Algebra.Bundles.Lattice._∧_"
d1008 :: T986 -> AgdaAny -> AgdaAny -> AgdaAny
d1008 v0
  = case coe v0 of
      C10761 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1010 = "Algebra.Bundles.Lattice.isLattice"
d1010 :: T986 -> MAlonzo.Code.Algebra.Structures.T686
d1010 v0
  = case coe v0 of
      C10761 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name1014 = "Algebra.Bundles.Lattice._.absorptive"
d1014 :: T986 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1014 v0
  = coe MAlonzo.Code.Algebra.Structures.d722 (coe d1010 (coe v0))
name1016 = "Algebra.Bundles.Lattice._.isEquivalence"
d1016 :: T986 -> MAlonzo.Code.Relation.Binary.Structures.T26
d1016 v0
  = coe MAlonzo.Code.Algebra.Structures.d708 (coe d1010 (coe v0))
name1018 = "Algebra.Bundles.Lattice._.isPartialEquivalence"
d1018 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T986 -> MAlonzo.Code.Relation.Binary.Structures.T16
d1018 v0 v1 v2 = du1018 v2
du1018 :: T986 -> MAlonzo.Code.Relation.Binary.Structures.T16
du1018 v0
  = let v1 = d1010 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Algebra.Structures.d708 (coe v1))
name1020 = "Algebra.Bundles.Lattice._.refl"
d1020 :: T986 -> AgdaAny -> AgdaAny
d1020 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe MAlonzo.Code.Algebra.Structures.d708 (coe d1010 (coe v0)))
name1022 = "Algebra.Bundles.Lattice._.reflexive"
d1022 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T986 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1022 v0 v1 v2 = du1022 v2
du1022 ::
  T986 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1022 v0
  = let v1 = d1010 (coe v0) in
    \ v2 v3 v4 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Algebra.Structures.d708 (coe v1)) v2
name1024 = "Algebra.Bundles.Lattice._.sym"
d1024 :: T986 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1024 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe MAlonzo.Code.Algebra.Structures.d708 (coe d1010 (coe v0)))
name1026 = "Algebra.Bundles.Lattice._.trans"
d1026 ::
  T986 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1026 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe MAlonzo.Code.Algebra.Structures.d708 (coe d1010 (coe v0)))
name1028 = "Algebra.Bundles.Lattice._.∧-absorbs-∨"
d1028 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T986 -> AgdaAny -> AgdaAny -> AgdaAny
d1028 v0 v1 v2 = du1028 v2
du1028 :: T986 -> AgdaAny -> AgdaAny -> AgdaAny
du1028 v0
  = let v1 = d1010 (coe v0) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d722 (coe v1))
name1030 = "Algebra.Bundles.Lattice._.∧-assoc"
d1030 :: T986 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1030 v0
  = coe MAlonzo.Code.Algebra.Structures.d718 (coe d1010 (coe v0))
name1032 = "Algebra.Bundles.Lattice._.∧-comm"
d1032 :: T986 -> AgdaAny -> AgdaAny -> AgdaAny
d1032 v0
  = coe MAlonzo.Code.Algebra.Structures.d716 (coe d1010 (coe v0))
name1034 = "Algebra.Bundles.Lattice._.∧-cong"
d1034 ::
  T986 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1034 v0
  = coe MAlonzo.Code.Algebra.Structures.d720 (coe d1010 (coe v0))
name1036 = "Algebra.Bundles.Lattice._.∧-congʳ"
d1036 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T986 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1036 v0 v1 v2 = du1036 v2
du1036 ::
  T986 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1036 v0
  = coe MAlonzo.Code.Algebra.Structures.du744 (coe d1010 (coe v0))
name1038 = "Algebra.Bundles.Lattice._.∧-congˡ"
d1038 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T986 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1038 v0 v1 v2 = du1038 v2
du1038 ::
  T986 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1038 v0
  = coe MAlonzo.Code.Algebra.Structures.du740 (coe d1010 (coe v0))
name1040 = "Algebra.Bundles.Lattice._.∨-absorbs-∧"
d1040 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T986 -> AgdaAny -> AgdaAny -> AgdaAny
d1040 v0 v1 v2 = du1040 v2
du1040 :: T986 -> AgdaAny -> AgdaAny -> AgdaAny
du1040 v0
  = let v1 = d1010 (coe v0) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d722 (coe v1))
name1042 = "Algebra.Bundles.Lattice._.∨-assoc"
d1042 :: T986 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1042 v0
  = coe MAlonzo.Code.Algebra.Structures.d712 (coe d1010 (coe v0))
name1044 = "Algebra.Bundles.Lattice._.∨-comm"
d1044 :: T986 -> AgdaAny -> AgdaAny -> AgdaAny
d1044 v0
  = coe MAlonzo.Code.Algebra.Structures.d710 (coe d1010 (coe v0))
name1046 = "Algebra.Bundles.Lattice._.∨-cong"
d1046 ::
  T986 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1046 v0
  = coe MAlonzo.Code.Algebra.Structures.d714 (coe d1010 (coe v0))
name1048 = "Algebra.Bundles.Lattice._.∨-congʳ"
d1048 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T986 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1048 v0 v1 v2 = du1048 v2
du1048 ::
  T986 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1048 v0
  = coe MAlonzo.Code.Algebra.Structures.du752 (coe d1010 (coe v0))
name1050 = "Algebra.Bundles.Lattice._.∨-congˡ"
d1050 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T986 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1050 v0 v1 v2 = du1050 v2
du1050 ::
  T986 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1050 v0
  = coe MAlonzo.Code.Algebra.Structures.du748 (coe d1010 (coe v0))
name1052 = "Algebra.Bundles.Lattice.setoid"
d1052 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T986 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d1052 v0 v1 v2 = du1052 v2
du1052 :: T986 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du1052 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C501
      (MAlonzo.Code.Algebra.Structures.d708 (coe d1010 (coe v0)))
name1058 = "Algebra.Bundles.DistributiveLattice"
d1058 a0 a1 = ()
data T1058
  = C11687 (AgdaAny -> AgdaAny -> AgdaAny)
           (AgdaAny -> AgdaAny -> AgdaAny)
           MAlonzo.Code.Algebra.Structures.T760
name1074 = "Algebra.Bundles.DistributiveLattice.Carrier"
d1074 :: T1058 -> ()
d1074 = erased
name1076 = "Algebra.Bundles.DistributiveLattice._≈_"
d1076 :: T1058 -> AgdaAny -> AgdaAny -> ()
d1076 = erased
name1078 = "Algebra.Bundles.DistributiveLattice._∨_"
d1078 :: T1058 -> AgdaAny -> AgdaAny -> AgdaAny
d1078 v0
  = case coe v0 of
      C11687 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1080 = "Algebra.Bundles.DistributiveLattice._∧_"
d1080 :: T1058 -> AgdaAny -> AgdaAny -> AgdaAny
d1080 v0
  = case coe v0 of
      C11687 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1082
  = "Algebra.Bundles.DistributiveLattice.isDistributiveLattice"
d1082 :: T1058 -> MAlonzo.Code.Algebra.Structures.T760
d1082 v0
  = case coe v0 of
      C11687 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name1086 = "Algebra.Bundles.DistributiveLattice._.absorptive"
d1086 :: T1058 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1086 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d722
      (coe MAlonzo.Code.Algebra.Structures.d770 (coe d1082 (coe v0)))
name1088 = "Algebra.Bundles.DistributiveLattice._.isEquivalence"
d1088 :: T1058 -> MAlonzo.Code.Relation.Binary.Structures.T26
d1088 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d708
      (coe MAlonzo.Code.Algebra.Structures.d770 (coe d1082 (coe v0)))
name1090 = "Algebra.Bundles.DistributiveLattice._.isLattice"
d1090 :: T1058 -> MAlonzo.Code.Algebra.Structures.T686
d1090 v0
  = coe MAlonzo.Code.Algebra.Structures.d770 (coe d1082 (coe v0))
name1092
  = "Algebra.Bundles.DistributiveLattice._.isPartialEquivalence"
d1092 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1058 -> MAlonzo.Code.Relation.Binary.Structures.T16
d1092 v0 v1 v2 = du1092 v2
du1092 :: T1058 -> MAlonzo.Code.Relation.Binary.Structures.T16
du1092 v0
  = let v1 = d1082 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d770 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Algebra.Structures.d708 (coe v2))
name1094 = "Algebra.Bundles.DistributiveLattice._.refl"
d1094 :: T1058 -> AgdaAny -> AgdaAny
d1094 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Algebra.Structures.d708
         (coe MAlonzo.Code.Algebra.Structures.d770 (coe d1082 (coe v0))))
name1096 = "Algebra.Bundles.DistributiveLattice._.reflexive"
d1096 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1058 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1096 v0 v1 v2 = du1096 v2
du1096 ::
  T1058 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1096 v0
  = let v1 = d1082 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d770 (coe v1) in
    \ v3 v4 v5 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Algebra.Structures.d708 (coe v2)) v3
name1098 = "Algebra.Bundles.DistributiveLattice._.sym"
d1098 :: T1058 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1098 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Algebra.Structures.d708
         (coe MAlonzo.Code.Algebra.Structures.d770 (coe d1082 (coe v0))))
name1100 = "Algebra.Bundles.DistributiveLattice._.trans"
d1100 ::
  T1058 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1100 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Algebra.Structures.d708
         (coe MAlonzo.Code.Algebra.Structures.d770 (coe d1082 (coe v0))))
name1102 = "Algebra.Bundles.DistributiveLattice._.∧-absorbs-∨"
d1102 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1058 -> AgdaAny -> AgdaAny -> AgdaAny
d1102 v0 v1 v2 = du1102 v2
du1102 :: T1058 -> AgdaAny -> AgdaAny -> AgdaAny
du1102 v0
  = let v1 = d1082 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d770 (coe v1) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d722 (coe v2))
name1104 = "Algebra.Bundles.DistributiveLattice._.∧-assoc"
d1104 :: T1058 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1104 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d718
      (coe MAlonzo.Code.Algebra.Structures.d770 (coe d1082 (coe v0)))
name1106 = "Algebra.Bundles.DistributiveLattice._.∧-comm"
d1106 :: T1058 -> AgdaAny -> AgdaAny -> AgdaAny
d1106 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d716
      (coe MAlonzo.Code.Algebra.Structures.d770 (coe d1082 (coe v0)))
name1108 = "Algebra.Bundles.DistributiveLattice._.∧-cong"
d1108 ::
  T1058 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1108 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d720
      (coe MAlonzo.Code.Algebra.Structures.d770 (coe d1082 (coe v0)))
name1110 = "Algebra.Bundles.DistributiveLattice._.∧-congʳ"
d1110 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1058 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1110 v0 v1 v2 = du1110 v2
du1110 ::
  T1058 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1110 v0
  = let v1 = d1082 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du744
      (coe MAlonzo.Code.Algebra.Structures.d770 (coe v1))
name1112 = "Algebra.Bundles.DistributiveLattice._.∧-congˡ"
d1112 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1058 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1112 v0 v1 v2 = du1112 v2
du1112 ::
  T1058 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1112 v0
  = let v1 = d1082 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du740
      (coe MAlonzo.Code.Algebra.Structures.d770 (coe v1))
name1114 = "Algebra.Bundles.DistributiveLattice._.∨-absorbs-∧"
d1114 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1058 -> AgdaAny -> AgdaAny -> AgdaAny
d1114 v0 v1 v2 = du1114 v2
du1114 :: T1058 -> AgdaAny -> AgdaAny -> AgdaAny
du1114 v0
  = let v1 = d1082 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d770 (coe v1) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d722 (coe v2))
name1116 = "Algebra.Bundles.DistributiveLattice._.∨-assoc"
d1116 :: T1058 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1116 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d712
      (coe MAlonzo.Code.Algebra.Structures.d770 (coe d1082 (coe v0)))
name1118 = "Algebra.Bundles.DistributiveLattice._.∨-comm"
d1118 :: T1058 -> AgdaAny -> AgdaAny -> AgdaAny
d1118 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d710
      (coe MAlonzo.Code.Algebra.Structures.d770 (coe d1082 (coe v0)))
name1120 = "Algebra.Bundles.DistributiveLattice._.∨-cong"
d1120 ::
  T1058 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1120 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d714
      (coe MAlonzo.Code.Algebra.Structures.d770 (coe d1082 (coe v0)))
name1122 = "Algebra.Bundles.DistributiveLattice._.∨-congʳ"
d1122 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1058 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1122 v0 v1 v2 = du1122 v2
du1122 ::
  T1058 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1122 v0
  = let v1 = d1082 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du752
      (coe MAlonzo.Code.Algebra.Structures.d770 (coe v1))
name1124 = "Algebra.Bundles.DistributiveLattice._.∨-congˡ"
d1124 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1058 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1124 v0 v1 v2 = du1124 v2
du1124 ::
  T1058 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1124 v0
  = let v1 = d1082 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du748
      (coe MAlonzo.Code.Algebra.Structures.d770 (coe v1))
name1126 = "Algebra.Bundles.DistributiveLattice._.∨-distribʳ-∧"
d1126 :: T1058 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1126 v0
  = coe MAlonzo.Code.Algebra.Structures.d772 (coe d1082 (coe v0))
name1128 = "Algebra.Bundles.DistributiveLattice._.∨-∧-distribʳ"
d1128 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1058 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1128 v0 v1 v2 = du1128 v2
du1128 :: T1058 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1128 v0
  = coe MAlonzo.Code.Algebra.Structures.du814 (coe d1082 (coe v0))
name1130 = "Algebra.Bundles.DistributiveLattice.lattice"
d1130 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1058 -> T986
d1130 v0 v1 v2 = du1130 v2
du1130 :: T1058 -> T986
du1130 v0
  = coe
      C10761 (d1078 (coe v0)) (d1080 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d770 (coe d1082 (coe v0)))
name1134 = "Algebra.Bundles.DistributiveLattice._.setoid"
d1134 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1058 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d1134 v0 v1 v2 = du1134 v2
du1134 :: T1058 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du1134 v0 = coe du1052 (coe du1130 (coe v0))
name1140 = "Algebra.Bundles.NearSemiring"
d1140 a0 a1 = ()
data T1140
  = C12793 (AgdaAny -> AgdaAny -> AgdaAny)
           (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
           MAlonzo.Code.Algebra.Structures.T822
name1158 = "Algebra.Bundles.NearSemiring.Carrier"
d1158 :: T1140 -> ()
d1158 = erased
name1160 = "Algebra.Bundles.NearSemiring._≈_"
d1160 :: T1140 -> AgdaAny -> AgdaAny -> ()
d1160 = erased
name1162 = "Algebra.Bundles.NearSemiring._+_"
d1162 :: T1140 -> AgdaAny -> AgdaAny -> AgdaAny
d1162 v0
  = case coe v0 of
      C12793 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1164 = "Algebra.Bundles.NearSemiring._*_"
d1164 :: T1140 -> AgdaAny -> AgdaAny -> AgdaAny
d1164 v0
  = case coe v0 of
      C12793 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1166 = "Algebra.Bundles.NearSemiring.0#"
d1166 :: T1140 -> AgdaAny
d1166 v0
  = case coe v0 of
      C12793 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name1168 = "Algebra.Bundles.NearSemiring.isNearSemiring"
d1168 :: T1140 -> MAlonzo.Code.Algebra.Structures.T822
d1168 v0
  = case coe v0 of
      C12793 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name1172 = "Algebra.Bundles.NearSemiring._.assoc"
d1172 :: T1140 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1172 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe MAlonzo.Code.Algebra.Structures.d840 (coe d1168 (coe v0)))
name1174 = "Algebra.Bundles.NearSemiring._.∙-cong"
d1174 ::
  T1140 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1174 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe MAlonzo.Code.Algebra.Structures.d840 (coe d1168 (coe v0))))
name1176 = "Algebra.Bundles.NearSemiring._.∙-congʳ"
d1176 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1140 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1176 v0 v1 v2 = du1176 v2
du1176 ::
  T1140 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1176 v0
  = let v1 = d1168 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d840 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v2))
name1178 = "Algebra.Bundles.NearSemiring._.∙-congˡ"
d1178 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1140 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1178 v0 v1 v2 = du1178 v2
du1178 ::
  T1140 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1178 v0
  = let v1 = d1168 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d840 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v2))
name1180 = "Algebra.Bundles.NearSemiring._.isMagma"
d1180 :: T1140 -> MAlonzo.Code.Algebra.Structures.T80
d1180 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe MAlonzo.Code.Algebra.Structures.d840 (coe d1168 (coe v0)))
name1182 = "Algebra.Bundles.NearSemiring._.*-isSemigroup"
d1182 :: T1140 -> MAlonzo.Code.Algebra.Structures.T116
d1182 v0
  = coe MAlonzo.Code.Algebra.Structures.d840 (coe d1168 (coe v0))
name1184 = "Algebra.Bundles.NearSemiring._.assoc"
d1184 :: T1140 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1184 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe MAlonzo.Code.Algebra.Structures.d838 (coe d1168 (coe v0))))
name1186 = "Algebra.Bundles.NearSemiring._.∙-cong"
d1186 ::
  T1140 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1186 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe MAlonzo.Code.Algebra.Structures.d838 (coe d1168 (coe v0)))))
name1188 = "Algebra.Bundles.NearSemiring._.∙-congʳ"
d1188 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1140 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1188 v0 v1 v2 = du1188 v2
du1188 ::
  T1140 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1188 v0
  = let v1 = d1168 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d838 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d324 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v3))
name1190 = "Algebra.Bundles.NearSemiring._.∙-congˡ"
d1190 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1140 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1190 v0 v1 v2 = du1190 v2
du1190 ::
  T1140 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1190 v0
  = let v1 = d1168 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d838 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d324 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v3))
name1192 = "Algebra.Bundles.NearSemiring._.identity"
d1192 :: T1140 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1192 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d326
      (coe MAlonzo.Code.Algebra.Structures.d838 (coe d1168 (coe v0)))
name1194 = "Algebra.Bundles.NearSemiring._.identityʳ"
d1194 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1140 -> AgdaAny -> AgdaAny
d1194 v0 v1 v2 = du1194 v2
du1194 :: T1140 -> AgdaAny -> AgdaAny
du1194 v0
  = let v1 = d1168 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d838 (coe v1) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v2))
name1196 = "Algebra.Bundles.NearSemiring._.identityˡ"
d1196 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1140 -> AgdaAny -> AgdaAny
d1196 v0 v1 v2 = du1196 v2
du1196 :: T1140 -> AgdaAny -> AgdaAny
du1196 v0
  = let v1 = d1168 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d838 (coe v1) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v2))
name1198 = "Algebra.Bundles.NearSemiring._.isMagma"
d1198 :: T1140 -> MAlonzo.Code.Algebra.Structures.T80
d1198 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe MAlonzo.Code.Algebra.Structures.d838 (coe d1168 (coe v0))))
name1200 = "Algebra.Bundles.NearSemiring._.+-isMonoid"
d1200 :: T1140 -> MAlonzo.Code.Algebra.Structures.T314
d1200 v0
  = coe MAlonzo.Code.Algebra.Structures.d838 (coe d1168 (coe v0))
name1202 = "Algebra.Bundles.NearSemiring._.isSemigroup"
d1202 :: T1140 -> MAlonzo.Code.Algebra.Structures.T116
d1202 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d324
      (coe MAlonzo.Code.Algebra.Structures.d838 (coe d1168 (coe v0)))
name1204 = "Algebra.Bundles.NearSemiring._.distribʳ"
d1204 :: T1140 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1204 v0
  = coe MAlonzo.Code.Algebra.Structures.d842 (coe d1168 (coe v0))
name1206 = "Algebra.Bundles.NearSemiring._.isEquivalence"
d1206 :: T1140 -> MAlonzo.Code.Relation.Binary.Structures.T26
d1206 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d88
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe MAlonzo.Code.Algebra.Structures.d838 (coe d1168 (coe v0)))))
name1208 = "Algebra.Bundles.NearSemiring._.isPartialEquivalence"
d1208 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1140 -> MAlonzo.Code.Relation.Binary.Structures.T16
d1208 v0 v1 v2 = du1208 v2
du1208 :: T1140 -> MAlonzo.Code.Relation.Binary.Structures.T16
du1208 v0
  = let v1 = d1168 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d838 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d324 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d124 (coe v3) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Algebra.Structures.d88 (coe v4))
name1210 = "Algebra.Bundles.NearSemiring._.refl"
d1210 :: T1140 -> AgdaAny -> AgdaAny
d1210 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe MAlonzo.Code.Algebra.Structures.d838 (coe d1168 (coe v0))))))
name1212 = "Algebra.Bundles.NearSemiring._.reflexive"
d1212 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1140 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1212 v0 v1 v2 = du1212 v2
du1212 ::
  T1140 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1212 v0
  = let v1 = d1168 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d838 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d324 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d124 (coe v3) in
    \ v5 v6 v7 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Algebra.Structures.d88 (coe v4)) v5
name1214 = "Algebra.Bundles.NearSemiring._.setoid"
d1214 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1140 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d1214 v0 v1 v2 = du1214 v2
du1214 :: T1140 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du1214 v0
  = let v1 = d1168 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d838 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d324 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du104
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v3))
name1216 = "Algebra.Bundles.NearSemiring._.sym"
d1216 :: T1140 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1216 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe MAlonzo.Code.Algebra.Structures.d838 (coe d1168 (coe v0))))))
name1218 = "Algebra.Bundles.NearSemiring._.trans"
d1218 ::
  T1140 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1218 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe MAlonzo.Code.Algebra.Structures.d838 (coe d1168 (coe v0))))))
name1220 = "Algebra.Bundles.NearSemiring._.zeroˡ"
d1220 :: T1140 -> AgdaAny -> AgdaAny
d1220 v0
  = coe MAlonzo.Code.Algebra.Structures.d844 (coe d1168 (coe v0))
name1222 = "Algebra.Bundles.NearSemiring.+-monoid"
d1222 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1140 -> T422
d1222 v0 v1 v2 = du1222 v2
du1222 :: T1140 -> T422
du1222 v0
  = coe
      C4689 (d1162 (coe v0)) (d1166 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d838 (coe d1168 (coe v0)))
name1226 = "Algebra.Bundles.NearSemiring._.magma"
d1226 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1140 -> T30
d1226 v0 v1 v2 = du1226 v2
du1226 :: T1140 -> T30
du1226 v0
  = let v1 = coe du1222 (coe v0) in coe du128 (coe du482 (coe v1))
name1228 = "Algebra.Bundles.NearSemiring._.rawMagma"
d1228 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1140 -> T8
d1228 v0 v1 v2 = du1228 v2
du1228 :: T1140 -> T8
du1228 v0
  = let v1 = coe du1222 (coe v0) in
    let v2 = coe du482 (coe v1) in coe du74 (coe du128 (coe v2))
name1230 = "Algebra.Bundles.NearSemiring._.rawMonoid"
d1230 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1140 -> T394
d1230 v0 v1 v2 = du1230 v2
du1230 :: T1140 -> T394
du1230 v0 = coe du484 (coe du1222 (coe v0))
name1232 = "Algebra.Bundles.NearSemiring._.semigroup"
d1232 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1140 -> T80
d1232 v0 v1 v2 = du1232 v2
du1232 :: T1140 -> T80
du1232 v0 = coe du482 (coe du1222 (coe v0))
name1234 = "Algebra.Bundles.NearSemiring.*-semigroup"
d1234 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1140 -> T80
d1234 v0 v1 v2 = du1234 v2
du1234 :: T1140 -> T80
du1234 v0
  = coe
      C877 (d1164 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d840 (coe d1168 (coe v0)))
name1238 = "Algebra.Bundles.NearSemiring._.magma"
d1238 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1140 -> T30
d1238 v0 v1 v2 = du1238 v2
du1238 :: T1140 -> T30
du1238 v0 = coe du128 (coe du1234 (coe v0))
name1240 = "Algebra.Bundles.NearSemiring._.rawMagma"
d1240 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1140 -> T8
d1240 v0 v1 v2 = du1240 v2
du1240 :: T1140 -> T8
du1240 v0
  = let v1 = coe du1234 (coe v0) in coe du74 (coe du128 (coe v1))
name1246 = "Algebra.Bundles.SemiringWithoutOne"
d1246 a0 a1 = ()
data T1246
  = C14147 (AgdaAny -> AgdaAny -> AgdaAny)
           (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
           MAlonzo.Code.Algebra.Structures.T898
name1264 = "Algebra.Bundles.SemiringWithoutOne.Carrier"
d1264 :: T1246 -> ()
d1264 = erased
name1266 = "Algebra.Bundles.SemiringWithoutOne._≈_"
d1266 :: T1246 -> AgdaAny -> AgdaAny -> ()
d1266 = erased
name1268 = "Algebra.Bundles.SemiringWithoutOne._+_"
d1268 :: T1246 -> AgdaAny -> AgdaAny -> AgdaAny
d1268 v0
  = case coe v0 of
      C14147 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1270 = "Algebra.Bundles.SemiringWithoutOne._*_"
d1270 :: T1246 -> AgdaAny -> AgdaAny -> AgdaAny
d1270 v0
  = case coe v0 of
      C14147 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1272 = "Algebra.Bundles.SemiringWithoutOne.0#"
d1272 :: T1246 -> AgdaAny
d1272 v0
  = case coe v0 of
      C14147 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name1274
  = "Algebra.Bundles.SemiringWithoutOne.isSemiringWithoutOne"
d1274 :: T1246 -> MAlonzo.Code.Algebra.Structures.T898
d1274 v0
  = case coe v0 of
      C14147 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name1278 = "Algebra.Bundles.SemiringWithoutOne._.assoc"
d1278 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1246 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1278 v0 v1 v2 = du1278 v2
du1278 :: T1246 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1278 v0
  = let v1 = d1274 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe MAlonzo.Code.Algebra.Structures.d916 (coe v1))
name1280 = "Algebra.Bundles.SemiringWithoutOne._.∙-cong"
d1280 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1246 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1280 v0 v1 v2 = du1280 v2
du1280 ::
  T1246 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1280 v0
  = let v1 = d1274 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe MAlonzo.Code.Algebra.Structures.d916 (coe v1)))
name1282 = "Algebra.Bundles.SemiringWithoutOne._.∙-congʳ"
d1282 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1246 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1282 v0 v1 v2 = du1282 v2
du1282 ::
  T1246 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1282 v0
  = let v1 = d1274 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Structures.du934 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d840 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v3))
name1284 = "Algebra.Bundles.SemiringWithoutOne._.∙-congˡ"
d1284 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1246 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1284 v0 v1 v2 = du1284 v2
du1284 ::
  T1246 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1284 v0
  = let v1 = d1274 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Structures.du934 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d840 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v3))
name1286 = "Algebra.Bundles.SemiringWithoutOne._.isMagma"
d1286 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1246 -> MAlonzo.Code.Algebra.Structures.T80
d1286 v0 v1 v2 = du1286 v2
du1286 :: T1246 -> MAlonzo.Code.Algebra.Structures.T80
du1286 v0
  = let v1 = d1274 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe MAlonzo.Code.Algebra.Structures.d916 (coe v1))
name1288 = "Algebra.Bundles.SemiringWithoutOne._.*-isSemigroup"
d1288 :: T1246 -> MAlonzo.Code.Algebra.Structures.T116
d1288 v0
  = coe MAlonzo.Code.Algebra.Structures.d916 (coe d1274 (coe v0))
name1290 = "Algebra.Bundles.SemiringWithoutOne._.*-isSemigroup"
d1290 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1246 -> MAlonzo.Code.Algebra.Structures.T116
d1290 v0 v1 v2 = du1290 v2
du1290 :: T1246 -> MAlonzo.Code.Algebra.Structures.T116
du1290 v0
  = let v1 = d1274 (coe v0) in
    coe MAlonzo.Code.Algebra.Structures.d916 (coe v1)
name1292 = "Algebra.Bundles.SemiringWithoutOne._.assoc"
d1292 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1246 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1292 v0 v1 v2 = du1292 v2
du1292 :: T1246 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1292 v0
  = let v1 = d1274 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d372
            (coe MAlonzo.Code.Algebra.Structures.d914 (coe v1))))
name1294 = "Algebra.Bundles.SemiringWithoutOne._.comm"
d1294 :: T1246 -> AgdaAny -> AgdaAny -> AgdaAny
d1294 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d374
      (coe MAlonzo.Code.Algebra.Structures.d914 (coe d1274 (coe v0)))
name1296 = "Algebra.Bundles.SemiringWithoutOne._.∙-cong"
d1296 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1246 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1296 v0 v1 v2 = du1296 v2
du1296 ::
  T1246 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1296 v0
  = let v1 = d1274 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d372
               (coe MAlonzo.Code.Algebra.Structures.d914 (coe v1)))))
name1298 = "Algebra.Bundles.SemiringWithoutOne._.∙-congʳ"
d1298 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1246 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1298 v0 v1 v2 = du1298 v2
du1298 ::
  T1246 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1298 v0
  = let v1 = d1274 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Structures.du934 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d838 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v4))
name1300 = "Algebra.Bundles.SemiringWithoutOne._.∙-congˡ"
d1300 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1246 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1300 v0 v1 v2 = du1300 v2
du1300 ::
  T1246 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1300 v0
  = let v1 = d1274 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Structures.du934 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d838 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v4))
name1302 = "Algebra.Bundles.SemiringWithoutOne._.identity"
d1302 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1246 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1302 v0 v1 v2 = du1302 v2
du1302 :: T1246 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1302 v0
  = let v1 = d1274 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.d326
      (coe
         MAlonzo.Code.Algebra.Structures.d372
         (coe MAlonzo.Code.Algebra.Structures.d914 (coe v1)))
name1304 = "Algebra.Bundles.SemiringWithoutOne._.identityʳ"
d1304 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1246 -> AgdaAny -> AgdaAny
d1304 v0 v1 v2 = du1304 v2
du1304 :: T1246 -> AgdaAny -> AgdaAny
du1304 v0
  = let v1 = d1274 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Structures.du934 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d838 (coe v2) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v3))
name1306 = "Algebra.Bundles.SemiringWithoutOne._.identityˡ"
d1306 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1246 -> AgdaAny -> AgdaAny
d1306 v0 v1 v2 = du1306 v2
du1306 :: T1246 -> AgdaAny -> AgdaAny
du1306 v0
  = let v1 = d1274 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Structures.du934 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d838 (coe v2) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v3))
name1308
  = "Algebra.Bundles.SemiringWithoutOne._.+-isCommutativeMonoid"
d1308 :: T1246 -> MAlonzo.Code.Algebra.Structures.T362
d1308 v0
  = coe MAlonzo.Code.Algebra.Structures.d914 (coe d1274 (coe v0))
name1310
  = "Algebra.Bundles.SemiringWithoutOne._.isCommutativeSemigroup"
d1310 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1246 -> MAlonzo.Code.Algebra.Structures.T192
d1310 v0 v1 v2 = du1310 v2
du1310 :: T1246 -> MAlonzo.Code.Algebra.Structures.T192
du1310 v0
  = let v1 = d1274 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du410
      (coe MAlonzo.Code.Algebra.Structures.d914 (coe v1))
name1312 = "Algebra.Bundles.SemiringWithoutOne._.isMagma"
d1312 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1246 -> MAlonzo.Code.Algebra.Structures.T80
d1312 v0 v1 v2 = du1312 v2
du1312 :: T1246 -> MAlonzo.Code.Algebra.Structures.T80
du1312 v0
  = let v1 = d1274 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d372
            (coe MAlonzo.Code.Algebra.Structures.d914 (coe v1))))
name1314 = "Algebra.Bundles.SemiringWithoutOne._.isMonoid"
d1314 :: T1246 -> MAlonzo.Code.Algebra.Structures.T314
d1314 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d372
      (coe MAlonzo.Code.Algebra.Structures.d914 (coe d1274 (coe v0)))
name1316 = "Algebra.Bundles.SemiringWithoutOne._.isSemigroup"
d1316 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1246 -> MAlonzo.Code.Algebra.Structures.T116
d1316 v0 v1 v2 = du1316 v2
du1316 :: T1246 -> MAlonzo.Code.Algebra.Structures.T116
du1316 v0
  = let v1 = d1274 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.d324
      (coe
         MAlonzo.Code.Algebra.Structures.d372
         (coe MAlonzo.Code.Algebra.Structures.d914 (coe v1)))
name1318 = "Algebra.Bundles.SemiringWithoutOne._.distrib"
d1318 :: T1246 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1318 v0
  = coe MAlonzo.Code.Algebra.Structures.d918 (coe d1274 (coe v0))
name1320 = "Algebra.Bundles.SemiringWithoutOne._.distribʳ"
d1320 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1246 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1320 v0 v1 v2 = du1320 v2
du1320 :: T1246 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1320 v0
  = let v1 = d1274 (coe v0) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d918 (coe v1))
name1322 = "Algebra.Bundles.SemiringWithoutOne._.isEquivalence"
d1322 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1246 -> MAlonzo.Code.Relation.Binary.Structures.T26
d1322 v0 v1 v2 = du1322 v2
du1322 :: T1246 -> MAlonzo.Code.Relation.Binary.Structures.T26
du1322 v0
  = let v1 = d1274 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.d88
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d372
               (coe MAlonzo.Code.Algebra.Structures.d914 (coe v1)))))
name1324 = "Algebra.Bundles.SemiringWithoutOne._.isNearSemiring"
d1324 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1246 -> MAlonzo.Code.Algebra.Structures.T822
d1324 v0 v1 v2 = du1324 v2
du1324 :: T1246 -> MAlonzo.Code.Algebra.Structures.T822
du1324 v0
  = coe MAlonzo.Code.Algebra.Structures.du934 (coe d1274 (coe v0))
name1326
  = "Algebra.Bundles.SemiringWithoutOne._.isPartialEquivalence"
d1326 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1246 -> MAlonzo.Code.Relation.Binary.Structures.T16
d1326 v0 v1 v2 = du1326 v2
du1326 :: T1246 -> MAlonzo.Code.Relation.Binary.Structures.T16
du1326 v0
  = let v1 = d1274 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Structures.du934 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d838 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d124 (coe v4) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Algebra.Structures.d88 (coe v5))
name1328 = "Algebra.Bundles.SemiringWithoutOne._.refl"
d1328 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1246 -> AgdaAny -> AgdaAny
d1328 v0 v1 v2 = du1328 v2
du1328 :: T1246 -> AgdaAny -> AgdaAny
du1328 v0
  = let v1 = d1274 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe MAlonzo.Code.Algebra.Structures.d914 (coe v1))))))
name1330 = "Algebra.Bundles.SemiringWithoutOne._.reflexive"
d1330 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1246 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1330 v0 v1 v2 = du1330 v2
du1330 ::
  T1246 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1330 v0
  = let v1 = d1274 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Structures.du934 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d838 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d124 (coe v4) in
    \ v6 v7 v8 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Algebra.Structures.d88 (coe v5)) v6
name1332 = "Algebra.Bundles.SemiringWithoutOne._.setoid"
d1332 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1246 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d1332 v0 v1 v2 = du1332 v2
du1332 :: T1246 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du1332 v0
  = let v1 = d1274 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Structures.du934 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d838 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du104
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v4))
name1334 = "Algebra.Bundles.SemiringWithoutOne._.sym"
d1334 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1246 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1334 v0 v1 v2 = du1334 v2
du1334 :: T1246 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1334 v0
  = let v1 = d1274 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe MAlonzo.Code.Algebra.Structures.d914 (coe v1))))))
name1336 = "Algebra.Bundles.SemiringWithoutOne._.trans"
d1336 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1246 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1336 v0 v1 v2 = du1336 v2
du1336 ::
  T1246 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1336 v0
  = let v1 = d1274 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe MAlonzo.Code.Algebra.Structures.d914 (coe v1))))))
name1338 = "Algebra.Bundles.SemiringWithoutOne._.zero"
d1338 :: T1246 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1338 v0
  = coe MAlonzo.Code.Algebra.Structures.d920 (coe d1274 (coe v0))
name1340 = "Algebra.Bundles.SemiringWithoutOne._.zeroʳ"
d1340 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1246 -> AgdaAny -> AgdaAny
d1340 v0 v1 v2 = du1340 v2
du1340 :: T1246 -> AgdaAny -> AgdaAny
du1340 v0
  = let v1 = d1274 (coe v0) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d920 (coe v1))
name1342 = "Algebra.Bundles.SemiringWithoutOne._.zeroˡ"
d1342 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1246 -> AgdaAny -> AgdaAny
d1342 v0 v1 v2 = du1342 v2
du1342 :: T1246 -> AgdaAny -> AgdaAny
du1342 v0
  = let v1 = d1274 (coe v0) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d920 (coe v1))
name1344 = "Algebra.Bundles.SemiringWithoutOne.nearSemiring"
d1344 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1246 -> T1140
d1344 v0 v1 v2 = du1344 v2
du1344 :: T1246 -> T1140
du1344 v0
  = coe
      C12793 (d1268 (coe v0)) (d1270 (coe v0)) (d1272 (coe v0))
      (coe MAlonzo.Code.Algebra.Structures.du934 (coe d1274 (coe v0)))
name1348 = "Algebra.Bundles.SemiringWithoutOne._.magma"
d1348 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1246 -> T30
d1348 v0 v1 v2 = du1348 v2
du1348 :: T1246 -> T30
du1348 v0
  = let v1 = coe du1344 (coe v0) in coe du128 (coe du1234 (coe v1))
name1350 = "Algebra.Bundles.SemiringWithoutOne._.rawMagma"
d1350 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1246 -> T8
d1350 v0 v1 v2 = du1350 v2
du1350 :: T1246 -> T8
du1350 v0
  = let v1 = coe du1344 (coe v0) in
    let v2 = coe du1234 (coe v1) in coe du74 (coe du128 (coe v2))
name1352 = "Algebra.Bundles.SemiringWithoutOne._.*-semigroup"
d1352 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1246 -> T80
d1352 v0 v1 v2 = du1352 v2
du1352 :: T1246 -> T80
du1352 v0 = coe du1234 (coe du1344 (coe v0))
name1354 = "Algebra.Bundles.SemiringWithoutOne._.magma"
d1354 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1246 -> T30
d1354 v0 v1 v2 = du1354 v2
du1354 :: T1246 -> T30
du1354 v0
  = let v1 = coe du1344 (coe v0) in
    let v2 = coe du1222 (coe v1) in coe du128 (coe du482 (coe v2))
name1356 = "Algebra.Bundles.SemiringWithoutOne._.+-monoid"
d1356 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1246 -> T422
d1356 v0 v1 v2 = du1356 v2
du1356 :: T1246 -> T422
du1356 v0 = coe du1222 (coe du1344 (coe v0))
name1358 = "Algebra.Bundles.SemiringWithoutOne._.rawMagma"
d1358 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1246 -> T8
d1358 v0 v1 v2 = du1358 v2
du1358 :: T1246 -> T8
du1358 v0
  = let v1 = coe du1344 (coe v0) in
    let v2 = coe du1222 (coe v1) in
    let v3 = coe du482 (coe v2) in coe du74 (coe du128 (coe v3))
name1360 = "Algebra.Bundles.SemiringWithoutOne._.rawMonoid"
d1360 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1246 -> T394
d1360 v0 v1 v2 = du1360 v2
du1360 :: T1246 -> T394
du1360 v0
  = let v1 = coe du1344 (coe v0) in coe du484 (coe du1222 (coe v1))
name1362 = "Algebra.Bundles.SemiringWithoutOne._.semigroup"
d1362 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1246 -> T80
d1362 v0 v1 v2 = du1362 v2
du1362 :: T1246 -> T80
du1362 v0
  = let v1 = coe du1344 (coe v0) in coe du482 (coe du1222 (coe v1))
name1364 = "Algebra.Bundles.SemiringWithoutOne.+-commutativeMonoid"
d1364 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1246 -> T496
d1364 v0 v1 v2 = du1364 v2
du1364 :: T1246 -> T496
du1364 v0
  = coe
      C5649 (d1268 (coe v0)) (d1272 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d914 (coe d1274 (coe v0)))
name1370 = "Algebra.Bundles.CommutativeSemiringWithoutOne"
d1370 a0 a1 = ()
data T1370
  = C15573 (AgdaAny -> AgdaAny -> AgdaAny)
           (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
           MAlonzo.Code.Algebra.Structures.T990
name1388 = "Algebra.Bundles.CommutativeSemiringWithoutOne.Carrier"
d1388 :: T1370 -> ()
d1388 = erased
name1390 = "Algebra.Bundles.CommutativeSemiringWithoutOne._≈_"
d1390 :: T1370 -> AgdaAny -> AgdaAny -> ()
d1390 = erased
name1392 = "Algebra.Bundles.CommutativeSemiringWithoutOne._+_"
d1392 :: T1370 -> AgdaAny -> AgdaAny -> AgdaAny
d1392 v0
  = case coe v0 of
      C15573 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1394 = "Algebra.Bundles.CommutativeSemiringWithoutOne._*_"
d1394 :: T1370 -> AgdaAny -> AgdaAny -> AgdaAny
d1394 v0
  = case coe v0 of
      C15573 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1396 = "Algebra.Bundles.CommutativeSemiringWithoutOne.0#"
d1396 :: T1370 -> AgdaAny
d1396 v0
  = case coe v0 of
      C15573 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name1398
  = "Algebra.Bundles.CommutativeSemiringWithoutOne.isCommutativeSemiringWithoutOne"
d1398 :: T1370 -> MAlonzo.Code.Algebra.Structures.T990
d1398 v0
  = case coe v0 of
      C15573 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name1402 = "Algebra.Bundles.CommutativeSemiringWithoutOne._.assoc"
d1402 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1370 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1402 v0 v1 v2 = du1402 v2
du1402 :: T1370 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1402 v0
  = let v1 = d1398 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1002 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe MAlonzo.Code.Algebra.Structures.d916 (coe v2))
name1404 = "Algebra.Bundles.CommutativeSemiringWithoutOne._.*-comm"
d1404 :: T1370 -> AgdaAny -> AgdaAny -> AgdaAny
d1404 v0
  = coe MAlonzo.Code.Algebra.Structures.d1004 (coe d1398 (coe v0))
name1406 = "Algebra.Bundles.CommutativeSemiringWithoutOne._.∙-cong"
d1406 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1370 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1406 v0 v1 v2 = du1406 v2
du1406 ::
  T1370 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1406 v0
  = let v1 = d1398 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1002 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe MAlonzo.Code.Algebra.Structures.d916 (coe v2)))
name1408
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.∙-congʳ"
d1408 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1370 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1408 v0 v1 v2 = du1408 v2
du1408 ::
  T1370 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1408 v0
  = let v1 = d1398 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1002 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Structures.du934 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d840 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v4))
name1410
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.∙-congˡ"
d1410 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1370 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1410 v0 v1 v2 = du1410 v2
du1410 ::
  T1370 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1410 v0
  = let v1 = d1398 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1002 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Structures.du934 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d840 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v4))
name1412
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.isMagma"
d1412 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1370 -> MAlonzo.Code.Algebra.Structures.T80
d1412 v0 v1 v2 = du1412 v2
du1412 :: T1370 -> MAlonzo.Code.Algebra.Structures.T80
du1412 v0
  = let v1 = d1398 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1002 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe MAlonzo.Code.Algebra.Structures.d916 (coe v2))
name1414
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.*-isSemigroup"
d1414 :: T1370 -> MAlonzo.Code.Algebra.Structures.T116
d1414 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d916
      (coe MAlonzo.Code.Algebra.Structures.d1002 (coe d1398 (coe v0)))
name1416
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.*-isSemigroup"
d1416 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1370 -> MAlonzo.Code.Algebra.Structures.T116
d1416 v0 v1 v2 = du1416 v2
du1416 :: T1370 -> MAlonzo.Code.Algebra.Structures.T116
du1416 v0
  = let v1 = d1398 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1002 (coe v1) in
    coe MAlonzo.Code.Algebra.Structures.d916 (coe v2)
name1418 = "Algebra.Bundles.CommutativeSemiringWithoutOne._.assoc"
d1418 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1370 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1418 v0 v1 v2 = du1418 v2
du1418 :: T1370 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1418 v0
  = let v1 = d1398 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1002 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d372
            (coe MAlonzo.Code.Algebra.Structures.d914 (coe v2))))
name1420 = "Algebra.Bundles.CommutativeSemiringWithoutOne._.comm"
d1420 :: T1370 -> AgdaAny -> AgdaAny -> AgdaAny
d1420 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d374
      (coe
         MAlonzo.Code.Algebra.Structures.d914
         (coe MAlonzo.Code.Algebra.Structures.d1002 (coe d1398 (coe v0))))
name1422 = "Algebra.Bundles.CommutativeSemiringWithoutOne._.∙-cong"
d1422 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1370 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1422 v0 v1 v2 = du1422 v2
du1422 ::
  T1370 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1422 v0
  = let v1 = d1398 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1002 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d372
               (coe MAlonzo.Code.Algebra.Structures.d914 (coe v2)))))
name1424
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.∙-congʳ"
d1424 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1370 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1424 v0 v1 v2 = du1424 v2
du1424 ::
  T1370 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1424 v0
  = let v1 = d1398 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1002 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Structures.du934 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d838 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d324 (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v5))
name1426
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.∙-congˡ"
d1426 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1370 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1426 v0 v1 v2 = du1426 v2
du1426 ::
  T1370 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1426 v0
  = let v1 = d1398 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1002 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Structures.du934 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d838 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d324 (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v5))
name1428
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.identity"
d1428 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1370 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1428 v0 v1 v2 = du1428 v2
du1428 :: T1370 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1428 v0
  = let v1 = d1398 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1002 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.d326
      (coe
         MAlonzo.Code.Algebra.Structures.d372
         (coe MAlonzo.Code.Algebra.Structures.d914 (coe v2)))
name1430
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.identityʳ"
d1430 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1370 -> AgdaAny -> AgdaAny
d1430 v0 v1 v2 = du1430 v2
du1430 :: T1370 -> AgdaAny -> AgdaAny
du1430 v0
  = let v1 = d1398 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1002 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Structures.du934 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d838 (coe v3) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v4))
name1432
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.identityˡ"
d1432 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1370 -> AgdaAny -> AgdaAny
d1432 v0 v1 v2 = du1432 v2
du1432 :: T1370 -> AgdaAny -> AgdaAny
du1432 v0
  = let v1 = d1398 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1002 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Structures.du934 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d838 (coe v3) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v4))
name1434
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.+-isCommutativeMonoid"
d1434 :: T1370 -> MAlonzo.Code.Algebra.Structures.T362
d1434 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d914
      (coe MAlonzo.Code.Algebra.Structures.d1002 (coe d1398 (coe v0)))
name1436
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.isCommutativeSemigroup"
d1436 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1370 -> MAlonzo.Code.Algebra.Structures.T192
d1436 v0 v1 v2 = du1436 v2
du1436 :: T1370 -> MAlonzo.Code.Algebra.Structures.T192
du1436 v0
  = let v1 = d1398 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1002 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du410
      (coe MAlonzo.Code.Algebra.Structures.d914 (coe v2))
name1438
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.isMagma"
d1438 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1370 -> MAlonzo.Code.Algebra.Structures.T80
d1438 v0 v1 v2 = du1438 v2
du1438 :: T1370 -> MAlonzo.Code.Algebra.Structures.T80
du1438 v0
  = let v1 = d1398 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1002 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d372
            (coe MAlonzo.Code.Algebra.Structures.d914 (coe v2))))
name1440
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.isMonoid"
d1440 :: T1370 -> MAlonzo.Code.Algebra.Structures.T314
d1440 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d372
      (coe
         MAlonzo.Code.Algebra.Structures.d914
         (coe MAlonzo.Code.Algebra.Structures.d1002 (coe d1398 (coe v0))))
name1442
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.isSemigroup"
d1442 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1370 -> MAlonzo.Code.Algebra.Structures.T116
d1442 v0 v1 v2 = du1442 v2
du1442 :: T1370 -> MAlonzo.Code.Algebra.Structures.T116
du1442 v0
  = let v1 = d1398 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1002 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.d324
      (coe
         MAlonzo.Code.Algebra.Structures.d372
         (coe MAlonzo.Code.Algebra.Structures.d914 (coe v2)))
name1444
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.distrib"
d1444 :: T1370 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1444 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d918
      (coe MAlonzo.Code.Algebra.Structures.d1002 (coe d1398 (coe v0)))
name1446
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.distribʳ"
d1446 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1370 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1446 v0 v1 v2 = du1446 v2
du1446 :: T1370 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1446 v0
  = let v1 = d1398 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1002 (coe v1) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d918 (coe v2))
name1448
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.isEquivalence"
d1448 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1370 -> MAlonzo.Code.Relation.Binary.Structures.T26
d1448 v0 v1 v2 = du1448 v2
du1448 :: T1370 -> MAlonzo.Code.Relation.Binary.Structures.T26
du1448 v0
  = let v1 = d1398 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1002 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.d88
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d372
               (coe MAlonzo.Code.Algebra.Structures.d914 (coe v2)))))
name1450
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.isNearSemiring"
d1450 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1370 -> MAlonzo.Code.Algebra.Structures.T822
d1450 v0 v1 v2 = du1450 v2
du1450 :: T1370 -> MAlonzo.Code.Algebra.Structures.T822
du1450 v0
  = let v1 = d1398 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du934
      (coe MAlonzo.Code.Algebra.Structures.d1002 (coe v1))
name1452
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.isPartialEquivalence"
d1452 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1370 -> MAlonzo.Code.Relation.Binary.Structures.T16
d1452 v0 v1 v2 = du1452 v2
du1452 :: T1370 -> MAlonzo.Code.Relation.Binary.Structures.T16
du1452 v0
  = let v1 = d1398 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1002 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Structures.du934 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d838 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d324 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d124 (coe v5) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Algebra.Structures.d88 (coe v6))
name1454
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.isSemiringWithoutOne"
d1454 :: T1370 -> MAlonzo.Code.Algebra.Structures.T898
d1454 v0
  = coe MAlonzo.Code.Algebra.Structures.d1002 (coe d1398 (coe v0))
name1456 = "Algebra.Bundles.CommutativeSemiringWithoutOne._.refl"
d1456 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1370 -> AgdaAny -> AgdaAny
d1456 v0 v1 v2 = du1456 v2
du1456 :: T1370 -> AgdaAny -> AgdaAny
du1456 v0
  = let v1 = d1398 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1002 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe MAlonzo.Code.Algebra.Structures.d914 (coe v2))))))
name1458
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.reflexive"
d1458 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1370 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1458 v0 v1 v2 = du1458 v2
du1458 ::
  T1370 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1458 v0
  = let v1 = d1398 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1002 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Structures.du934 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d838 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d324 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d124 (coe v5) in
    \ v7 v8 v9 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Algebra.Structures.d88 (coe v6)) v7
name1460 = "Algebra.Bundles.CommutativeSemiringWithoutOne._.setoid"
d1460 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1370 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d1460 v0 v1 v2 = du1460 v2
du1460 :: T1370 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du1460 v0
  = let v1 = d1398 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1002 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Structures.du934 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d838 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d324 (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du104
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v5))
name1462 = "Algebra.Bundles.CommutativeSemiringWithoutOne._.sym"
d1462 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1370 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1462 v0 v1 v2 = du1462 v2
du1462 :: T1370 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1462 v0
  = let v1 = d1398 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1002 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe MAlonzo.Code.Algebra.Structures.d914 (coe v2))))))
name1464 = "Algebra.Bundles.CommutativeSemiringWithoutOne._.trans"
d1464 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1370 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1464 v0 v1 v2 = du1464 v2
du1464 ::
  T1370 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1464 v0
  = let v1 = d1398 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1002 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe MAlonzo.Code.Algebra.Structures.d914 (coe v2))))))
name1466 = "Algebra.Bundles.CommutativeSemiringWithoutOne._.zero"
d1466 :: T1370 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1466 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d920
      (coe MAlonzo.Code.Algebra.Structures.d1002 (coe d1398 (coe v0)))
name1468 = "Algebra.Bundles.CommutativeSemiringWithoutOne._.zeroʳ"
d1468 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1370 -> AgdaAny -> AgdaAny
d1468 v0 v1 v2 = du1468 v2
du1468 :: T1370 -> AgdaAny -> AgdaAny
du1468 v0
  = let v1 = d1398 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1002 (coe v1) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d920 (coe v2))
name1470 = "Algebra.Bundles.CommutativeSemiringWithoutOne._.zeroˡ"
d1470 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1370 -> AgdaAny -> AgdaAny
d1470 v0 v1 v2 = du1470 v2
du1470 :: T1370 -> AgdaAny -> AgdaAny
du1470 v0
  = let v1 = d1398 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1002 (coe v1) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d920 (coe v2))
name1472
  = "Algebra.Bundles.CommutativeSemiringWithoutOne.semiringWithoutOne"
d1472 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1370 -> T1246
d1472 v0 v1 v2 = du1472 v2
du1472 :: T1370 -> T1246
du1472 v0
  = coe
      C14147 (d1392 (coe v0)) (d1394 (coe v0)) (d1396 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d1002 (coe d1398 (coe v0)))
name1476 = "Algebra.Bundles.CommutativeSemiringWithoutOne._.magma"
d1476 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1370 -> T30
d1476 v0 v1 v2 = du1476 v2
du1476 :: T1370 -> T30
du1476 v0
  = let v1 = coe du1472 (coe v0) in
    let v2 = coe du1344 (coe v1) in coe du128 (coe du1234 (coe v2))
name1478
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.rawMagma"
d1478 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1370 -> T8
d1478 v0 v1 v2 = du1478 v2
du1478 :: T1370 -> T8
du1478 v0
  = let v1 = coe du1472 (coe v0) in
    let v2 = coe du1344 (coe v1) in
    let v3 = coe du1234 (coe v2) in coe du74 (coe du128 (coe v3))
name1480
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.*-semigroup"
d1480 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1370 -> T80
d1480 v0 v1 v2 = du1480 v2
du1480 :: T1370 -> T80
du1480 v0
  = let v1 = coe du1472 (coe v0) in coe du1234 (coe du1344 (coe v1))
name1482
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.+-commutativeMonoid"
d1482 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1370 -> T496
d1482 v0 v1 v2 = du1482 v2
du1482 :: T1370 -> T496
du1482 v0 = coe du1364 (coe du1472 (coe v0))
name1484 = "Algebra.Bundles.CommutativeSemiringWithoutOne._.magma"
d1484 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1370 -> T30
d1484 v0 v1 v2 = du1484 v2
du1484 :: T1370 -> T30
du1484 v0
  = let v1 = coe du1472 (coe v0) in
    let v2 = coe du1344 (coe v1) in
    let v3 = coe du1222 (coe v2) in coe du128 (coe du482 (coe v3))
name1486
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.+-monoid"
d1486 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1370 -> T422
d1486 v0 v1 v2 = du1486 v2
du1486 :: T1370 -> T422
du1486 v0
  = let v1 = coe du1472 (coe v0) in coe du1222 (coe du1344 (coe v1))
name1488
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.rawMagma"
d1488 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1370 -> T8
d1488 v0 v1 v2 = du1488 v2
du1488 :: T1370 -> T8
du1488 v0
  = let v1 = coe du1472 (coe v0) in
    let v2 = coe du1344 (coe v1) in
    let v3 = coe du1222 (coe v2) in
    let v4 = coe du482 (coe v3) in coe du74 (coe du128 (coe v4))
name1490
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.rawMonoid"
d1490 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1370 -> T394
d1490 v0 v1 v2 = du1490 v2
du1490 :: T1370 -> T394
du1490 v0
  = let v1 = coe du1472 (coe v0) in
    let v2 = coe du1344 (coe v1) in coe du484 (coe du1222 (coe v2))
name1492
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.semigroup"
d1492 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1370 -> T80
d1492 v0 v1 v2 = du1492 v2
du1492 :: T1370 -> T80
du1492 v0
  = let v1 = coe du1472 (coe v0) in
    let v2 = coe du1344 (coe v1) in coe du482 (coe du1222 (coe v2))
name1494
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.nearSemiring"
d1494 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1370 -> T1140
d1494 v0 v1 v2 = du1494 v2
du1494 :: T1370 -> T1140
du1494 v0 = coe du1344 (coe du1472 (coe v0))
name1500 = "Algebra.Bundles.RawSemiring"
d1500 a0 a1 = ()
data T1500
  = C16729 (AgdaAny -> AgdaAny -> AgdaAny)
           (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny AgdaAny
name1518 = "Algebra.Bundles.RawSemiring.Carrier"
d1518 :: T1500 -> ()
d1518 = erased
name1520 = "Algebra.Bundles.RawSemiring._≈_"
d1520 :: T1500 -> AgdaAny -> AgdaAny -> ()
d1520 = erased
name1522 = "Algebra.Bundles.RawSemiring._+_"
d1522 :: T1500 -> AgdaAny -> AgdaAny -> AgdaAny
d1522 v0
  = case coe v0 of
      C16729 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1524 = "Algebra.Bundles.RawSemiring._*_"
d1524 :: T1500 -> AgdaAny -> AgdaAny -> AgdaAny
d1524 v0
  = case coe v0 of
      C16729 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1526 = "Algebra.Bundles.RawSemiring.0#"
d1526 :: T1500 -> AgdaAny
d1526 v0
  = case coe v0 of
      C16729 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name1528 = "Algebra.Bundles.RawSemiring.1#"
d1528 :: T1500 -> AgdaAny
d1528 v0
  = case coe v0 of
      C16729 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name1534 = "Algebra.Bundles.SemiringWithoutAnnihilatingZero"
d1534 a0 a1 = ()
data T1534
  = C17067 (AgdaAny -> AgdaAny -> AgdaAny)
           (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny AgdaAny
           MAlonzo.Code.Algebra.Structures.T1082
name1554
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero.Carrier"
d1554 :: T1534 -> ()
d1554 = erased
name1556 = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._≈_"
d1556 :: T1534 -> AgdaAny -> AgdaAny -> ()
d1556 = erased
name1558 = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._+_"
d1558 :: T1534 -> AgdaAny -> AgdaAny -> AgdaAny
d1558 v0
  = case coe v0 of
      C17067 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1560 = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._*_"
d1560 :: T1534 -> AgdaAny -> AgdaAny -> AgdaAny
d1560 v0
  = case coe v0 of
      C17067 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1562 = "Algebra.Bundles.SemiringWithoutAnnihilatingZero.0#"
d1562 :: T1534 -> AgdaAny
d1562 v0
  = case coe v0 of
      C17067 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name1564 = "Algebra.Bundles.SemiringWithoutAnnihilatingZero.1#"
d1564 :: T1534 -> AgdaAny
d1564 v0
  = case coe v0 of
      C17067 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name1566
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero.isSemiringWithoutAnnihilatingZero"
d1566 :: T1534 -> MAlonzo.Code.Algebra.Structures.T1082
d1566 v0
  = case coe v0 of
      C17067 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
name1570
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.assoc"
d1570 :: T1534 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1570 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe MAlonzo.Code.Algebra.Structures.d1100 (coe d1566 (coe v0))))
name1572
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.∙-cong"
d1572 ::
  T1534 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1572 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe MAlonzo.Code.Algebra.Structures.d1100 (coe d1566 (coe v0)))))
name1574
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.∙-congʳ"
d1574 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1534 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1574 v0 v1 v2 = du1574 v2
du1574 ::
  T1534 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1574 v0
  = let v1 = d1566 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1100 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d324 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v3))
name1576
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.∙-congˡ"
d1576 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1534 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1576 v0 v1 v2 = du1576 v2
du1576 ::
  T1534 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1576 v0
  = let v1 = d1566 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1100 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d324 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v3))
name1578
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.identity"
d1578 :: T1534 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1578 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d326
      (coe MAlonzo.Code.Algebra.Structures.d1100 (coe d1566 (coe v0)))
name1580
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.identityʳ"
d1580 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1534 -> AgdaAny -> AgdaAny
d1580 v0 v1 v2 = du1580 v2
du1580 :: T1534 -> AgdaAny -> AgdaAny
du1580 v0
  = let v1 = d1566 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1100 (coe v1) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v2))
name1582
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.identityˡ"
d1582 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1534 -> AgdaAny -> AgdaAny
d1582 v0 v1 v2 = du1582 v2
du1582 :: T1534 -> AgdaAny -> AgdaAny
du1582 v0
  = let v1 = d1566 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1100 (coe v1) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v2))
name1584
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.isMagma"
d1584 :: T1534 -> MAlonzo.Code.Algebra.Structures.T80
d1584 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe MAlonzo.Code.Algebra.Structures.d1100 (coe d1566 (coe v0))))
name1586
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.*-isMonoid"
d1586 :: T1534 -> MAlonzo.Code.Algebra.Structures.T314
d1586 v0
  = coe MAlonzo.Code.Algebra.Structures.d1100 (coe d1566 (coe v0))
name1588
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.isSemigroup"
d1588 :: T1534 -> MAlonzo.Code.Algebra.Structures.T116
d1588 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d324
      (coe MAlonzo.Code.Algebra.Structures.d1100 (coe d1566 (coe v0)))
name1590
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.assoc"
d1590 :: T1534 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1590 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d372
            (coe MAlonzo.Code.Algebra.Structures.d1098 (coe d1566 (coe v0)))))
name1592 = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.comm"
d1592 :: T1534 -> AgdaAny -> AgdaAny -> AgdaAny
d1592 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d374
      (coe MAlonzo.Code.Algebra.Structures.d1098 (coe d1566 (coe v0)))
name1594
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.∙-cong"
d1594 ::
  T1534 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1594 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d372
               (coe MAlonzo.Code.Algebra.Structures.d1098 (coe d1566 (coe v0))))))
name1596
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.∙-congʳ"
d1596 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1534 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1596 v0 v1 v2 = du1596 v2
du1596 ::
  T1534 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1596 v0
  = let v1 = d1566 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1098 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d372 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v4))
name1598
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.∙-congˡ"
d1598 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1534 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1598 v0 v1 v2 = du1598 v2
du1598 ::
  T1534 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1598 v0
  = let v1 = d1566 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1098 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d372 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v4))
name1600
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.identity"
d1600 :: T1534 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1600 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d326
      (coe
         MAlonzo.Code.Algebra.Structures.d372
         (coe MAlonzo.Code.Algebra.Structures.d1098 (coe d1566 (coe v0))))
name1602
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.identityʳ"
d1602 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1534 -> AgdaAny -> AgdaAny
d1602 v0 v1 v2 = du1602 v2
du1602 :: T1534 -> AgdaAny -> AgdaAny
du1602 v0
  = let v1 = d1566 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1098 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d372 (coe v2) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v3))
name1604
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.identityˡ"
d1604 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1534 -> AgdaAny -> AgdaAny
d1604 v0 v1 v2 = du1604 v2
du1604 :: T1534 -> AgdaAny -> AgdaAny
du1604 v0
  = let v1 = d1566 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1098 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d372 (coe v2) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v3))
name1606
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.+-isCommutativeMonoid"
d1606 :: T1534 -> MAlonzo.Code.Algebra.Structures.T362
d1606 v0
  = coe MAlonzo.Code.Algebra.Structures.d1098 (coe d1566 (coe v0))
name1608
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.isCommutativeSemigroup"
d1608 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1534 -> MAlonzo.Code.Algebra.Structures.T192
d1608 v0 v1 v2 = du1608 v2
du1608 :: T1534 -> MAlonzo.Code.Algebra.Structures.T192
du1608 v0
  = let v1 = d1566 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du410
      (coe MAlonzo.Code.Algebra.Structures.d1098 (coe v1))
name1610
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.isMagma"
d1610 :: T1534 -> MAlonzo.Code.Algebra.Structures.T80
d1610 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d372
            (coe MAlonzo.Code.Algebra.Structures.d1098 (coe d1566 (coe v0)))))
name1612
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.isMonoid"
d1612 :: T1534 -> MAlonzo.Code.Algebra.Structures.T314
d1612 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d372
      (coe MAlonzo.Code.Algebra.Structures.d1098 (coe d1566 (coe v0)))
name1614
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.isSemigroup"
d1614 :: T1534 -> MAlonzo.Code.Algebra.Structures.T116
d1614 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d324
      (coe
         MAlonzo.Code.Algebra.Structures.d372
         (coe MAlonzo.Code.Algebra.Structures.d1098 (coe d1566 (coe v0))))
name1616
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.distrib"
d1616 :: T1534 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1616 v0
  = coe MAlonzo.Code.Algebra.Structures.d1102 (coe d1566 (coe v0))
name1618
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.distribʳ"
d1618 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1534 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1618 v0 v1 v2 = du1618 v2
du1618 :: T1534 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1618 v0
  = let v1 = d1566 (coe v0) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d1102 (coe v1))
name1620
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.distribˡ"
d1620 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1534 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1620 v0 v1 v2 = du1620 v2
du1620 :: T1534 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1620 v0
  = let v1 = d1566 (coe v0) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d1102 (coe v1))
name1622
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.isEquivalence"
d1622 :: T1534 -> MAlonzo.Code.Relation.Binary.Structures.T26
d1622 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d88
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d372
               (coe MAlonzo.Code.Algebra.Structures.d1098 (coe d1566 (coe v0))))))
name1624
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.isPartialEquivalence"
d1624 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1534 -> MAlonzo.Code.Relation.Binary.Structures.T16
d1624 v0 v1 v2 = du1624 v2
du1624 :: T1534 -> MAlonzo.Code.Relation.Binary.Structures.T16
du1624 v0
  = let v1 = d1566 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1098 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d372 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d124 (coe v4) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Algebra.Structures.d88 (coe v5))
name1626 = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.refl"
d1626 :: T1534 -> AgdaAny -> AgdaAny
d1626 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1098 (coe d1566 (coe v0)))))))
name1628
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.reflexive"
d1628 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1534 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1628 v0 v1 v2 = du1628 v2
du1628 ::
  T1534 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1628 v0
  = let v1 = d1566 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1098 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d372 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d124 (coe v4) in
    \ v6 v7 v8 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Algebra.Structures.d88 (coe v5)) v6
name1630
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.setoid"
d1630 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1534 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d1630 v0 v1 v2 = du1630 v2
du1630 :: T1534 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du1630 v0
  = let v1 = d1566 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1098 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d372 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du104
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v4))
name1632 = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.sym"
d1632 :: T1534 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1632 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1098 (coe d1566 (coe v0)))))))
name1634
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.trans"
d1634 ::
  T1534 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1634 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1098 (coe d1566 (coe v0)))))))
name1636
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero.+-commutativeMonoid"
d1636 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1534 -> T496
d1636 v0 v1 v2 = du1636 v2
du1636 :: T1534 -> T496
du1636 v0
  = coe
      C5649 (d1558 (coe v0)) (d1562 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d1098 (coe d1566 (coe v0)))
name1640
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.magma"
d1640 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1534 -> T30
d1640 v0 v1 v2 = du1640 v2
du1640 :: T1534 -> T30
du1640 v0
  = let v1 = coe du1636 (coe v0) in
    let v2 = coe du562 (coe v1) in coe du128 (coe du482 (coe v2))
name1642
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.monoid"
d1642 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1534 -> T422
d1642 v0 v1 v2 = du1642 v2
du1642 :: T1534 -> T422
du1642 v0 = coe du562 (coe du1636 (coe v0))
name1644
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.rawMagma"
d1644 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1534 -> T8
d1644 v0 v1 v2 = du1644 v2
du1644 :: T1534 -> T8
du1644 v0
  = let v1 = coe du1636 (coe v0) in
    let v2 = coe du562 (coe v1) in
    let v3 = coe du482 (coe v2) in coe du74 (coe du128 (coe v3))
name1646
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.rawMonoid"
d1646 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1534 -> T394
d1646 v0 v1 v2 = du1646 v2
du1646 :: T1534 -> T394
du1646 v0
  = let v1 = coe du1636 (coe v0) in coe du484 (coe du562 (coe v1))
name1648
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.semigroup"
d1648 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1534 -> T80
d1648 v0 v1 v2 = du1648 v2
du1648 :: T1534 -> T80
du1648 v0
  = let v1 = coe du1636 (coe v0) in coe du482 (coe du562 (coe v1))
name1650
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero.*-monoid"
d1650 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1534 -> T422
d1650 v0 v1 v2 = du1650 v2
du1650 :: T1534 -> T422
du1650 v0
  = coe
      C4689 (d1560 (coe v0)) (d1564 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d1100 (coe d1566 (coe v0)))
name1654
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.magma"
d1654 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1534 -> T30
d1654 v0 v1 v2 = du1654 v2
du1654 :: T1534 -> T30
du1654 v0
  = let v1 = coe du1650 (coe v0) in coe du128 (coe du482 (coe v1))
name1656
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.rawMagma"
d1656 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1534 -> T8
d1656 v0 v1 v2 = du1656 v2
du1656 :: T1534 -> T8
du1656 v0
  = let v1 = coe du1650 (coe v0) in
    let v2 = coe du482 (coe v1) in coe du74 (coe du128 (coe v2))
name1658
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.rawMonoid"
d1658 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1534 -> T394
d1658 v0 v1 v2 = du1658 v2
du1658 :: T1534 -> T394
du1658 v0 = coe du484 (coe du1650 (coe v0))
name1660
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.semigroup"
d1660 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1534 -> T80
d1660 v0 v1 v2 = du1660 v2
du1660 :: T1534 -> T80
du1660 v0 = coe du482 (coe du1650 (coe v0))
name1666 = "Algebra.Bundles.Semiring"
d1666 a0 a1 = ()
data T1666
  = C18607 (AgdaAny -> AgdaAny -> AgdaAny)
           (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny AgdaAny
           MAlonzo.Code.Algebra.Structures.T1176
name1686 = "Algebra.Bundles.Semiring.Carrier"
d1686 :: T1666 -> ()
d1686 = erased
name1688 = "Algebra.Bundles.Semiring._≈_"
d1688 :: T1666 -> AgdaAny -> AgdaAny -> ()
d1688 = erased
name1690 = "Algebra.Bundles.Semiring._+_"
d1690 :: T1666 -> AgdaAny -> AgdaAny -> AgdaAny
d1690 v0
  = case coe v0 of
      C18607 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1692 = "Algebra.Bundles.Semiring._*_"
d1692 :: T1666 -> AgdaAny -> AgdaAny -> AgdaAny
d1692 v0
  = case coe v0 of
      C18607 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1694 = "Algebra.Bundles.Semiring.0#"
d1694 :: T1666 -> AgdaAny
d1694 v0
  = case coe v0 of
      C18607 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name1696 = "Algebra.Bundles.Semiring.1#"
d1696 :: T1666 -> AgdaAny
d1696 v0
  = case coe v0 of
      C18607 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name1698 = "Algebra.Bundles.Semiring.isSemiring"
d1698 :: T1666 -> MAlonzo.Code.Algebra.Structures.T1176
d1698 v0
  = case coe v0 of
      C18607 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
name1702 = "Algebra.Bundles.Semiring._.assoc"
d1702 :: T1666 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1702 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d1100
            (coe MAlonzo.Code.Algebra.Structures.d1190 (coe d1698 (coe v0)))))
name1704 = "Algebra.Bundles.Semiring._.∙-cong"
d1704 ::
  T1666 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1704 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d1100
               (coe MAlonzo.Code.Algebra.Structures.d1190 (coe d1698 (coe v0))))))
name1706 = "Algebra.Bundles.Semiring._.∙-congʳ"
d1706 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1666 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1706 v0 v1 v2 = du1706 v2
du1706 ::
  T1666 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1706 v0
  = let v1 = d1698 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1190 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1100 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v4))
name1708 = "Algebra.Bundles.Semiring._.∙-congˡ"
d1708 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1666 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1708 v0 v1 v2 = du1708 v2
du1708 ::
  T1666 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1708 v0
  = let v1 = d1698 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1190 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1100 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v4))
name1710 = "Algebra.Bundles.Semiring._.identity"
d1710 :: T1666 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1710 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d326
      (coe
         MAlonzo.Code.Algebra.Structures.d1100
         (coe MAlonzo.Code.Algebra.Structures.d1190 (coe d1698 (coe v0))))
name1712 = "Algebra.Bundles.Semiring._.identityʳ"
d1712 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1666 -> AgdaAny -> AgdaAny
d1712 v0 v1 v2 = du1712 v2
du1712 :: T1666 -> AgdaAny -> AgdaAny
du1712 v0
  = let v1 = d1698 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1190 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1100 (coe v2) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v3))
name1714 = "Algebra.Bundles.Semiring._.identityˡ"
d1714 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1666 -> AgdaAny -> AgdaAny
d1714 v0 v1 v2 = du1714 v2
du1714 :: T1666 -> AgdaAny -> AgdaAny
du1714 v0
  = let v1 = d1698 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1190 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1100 (coe v2) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v3))
name1716 = "Algebra.Bundles.Semiring._.isMagma"
d1716 :: T1666 -> MAlonzo.Code.Algebra.Structures.T80
d1716 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d1100
            (coe MAlonzo.Code.Algebra.Structures.d1190 (coe d1698 (coe v0)))))
name1718 = "Algebra.Bundles.Semiring._.*-isMonoid"
d1718 :: T1666 -> MAlonzo.Code.Algebra.Structures.T314
d1718 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1100
      (coe MAlonzo.Code.Algebra.Structures.d1190 (coe d1698 (coe v0)))
name1720 = "Algebra.Bundles.Semiring._.isSemigroup"
d1720 :: T1666 -> MAlonzo.Code.Algebra.Structures.T116
d1720 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d324
      (coe
         MAlonzo.Code.Algebra.Structures.d1100
         (coe MAlonzo.Code.Algebra.Structures.d1190 (coe d1698 (coe v0))))
name1722 = "Algebra.Bundles.Semiring._.assoc"
d1722 :: T1666 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1722 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d372
            (coe
               MAlonzo.Code.Algebra.Structures.d1098
               (coe MAlonzo.Code.Algebra.Structures.d1190 (coe d1698 (coe v0))))))
name1724 = "Algebra.Bundles.Semiring._.comm"
d1724 :: T1666 -> AgdaAny -> AgdaAny -> AgdaAny
d1724 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d374
      (coe
         MAlonzo.Code.Algebra.Structures.d1098
         (coe MAlonzo.Code.Algebra.Structures.d1190 (coe d1698 (coe v0))))
name1726 = "Algebra.Bundles.Semiring._.∙-cong"
d1726 ::
  T1666 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1726 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d372
               (coe
                  MAlonzo.Code.Algebra.Structures.d1098
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1190 (coe d1698 (coe v0)))))))
name1728 = "Algebra.Bundles.Semiring._.∙-congʳ"
d1728 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1666 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1728 v0 v1 v2 = du1728 v2
du1728 ::
  T1666 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1728 v0
  = let v1 = d1698 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1190 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1098 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d372 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d324 (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v5))
name1730 = "Algebra.Bundles.Semiring._.∙-congˡ"
d1730 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1666 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1730 v0 v1 v2 = du1730 v2
du1730 ::
  T1666 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1730 v0
  = let v1 = d1698 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1190 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1098 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d372 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d324 (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v5))
name1732 = "Algebra.Bundles.Semiring._.identity"
d1732 :: T1666 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1732 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d326
      (coe
         MAlonzo.Code.Algebra.Structures.d372
         (coe
            MAlonzo.Code.Algebra.Structures.d1098
            (coe MAlonzo.Code.Algebra.Structures.d1190 (coe d1698 (coe v0)))))
name1734 = "Algebra.Bundles.Semiring._.identityʳ"
d1734 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1666 -> AgdaAny -> AgdaAny
d1734 v0 v1 v2 = du1734 v2
du1734 :: T1666 -> AgdaAny -> AgdaAny
du1734 v0
  = let v1 = d1698 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1190 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1098 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d372 (coe v3) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v4))
name1736 = "Algebra.Bundles.Semiring._.identityˡ"
d1736 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1666 -> AgdaAny -> AgdaAny
d1736 v0 v1 v2 = du1736 v2
du1736 :: T1666 -> AgdaAny -> AgdaAny
du1736 v0
  = let v1 = d1698 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1190 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1098 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d372 (coe v3) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v4))
name1738 = "Algebra.Bundles.Semiring._.+-isCommutativeMonoid"
d1738 :: T1666 -> MAlonzo.Code.Algebra.Structures.T362
d1738 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1098
      (coe MAlonzo.Code.Algebra.Structures.d1190 (coe d1698 (coe v0)))
name1740 = "Algebra.Bundles.Semiring._.isCommutativeSemigroup"
d1740 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1666 -> MAlonzo.Code.Algebra.Structures.T192
d1740 v0 v1 v2 = du1740 v2
du1740 :: T1666 -> MAlonzo.Code.Algebra.Structures.T192
du1740 v0
  = let v1 = d1698 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1190 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du410
      (coe MAlonzo.Code.Algebra.Structures.d1098 (coe v2))
name1742 = "Algebra.Bundles.Semiring._.isMagma"
d1742 :: T1666 -> MAlonzo.Code.Algebra.Structures.T80
d1742 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d372
            (coe
               MAlonzo.Code.Algebra.Structures.d1098
               (coe MAlonzo.Code.Algebra.Structures.d1190 (coe d1698 (coe v0))))))
name1744 = "Algebra.Bundles.Semiring._.isMonoid"
d1744 :: T1666 -> MAlonzo.Code.Algebra.Structures.T314
d1744 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d372
      (coe
         MAlonzo.Code.Algebra.Structures.d1098
         (coe MAlonzo.Code.Algebra.Structures.d1190 (coe d1698 (coe v0))))
name1746 = "Algebra.Bundles.Semiring._.isSemigroup"
d1746 :: T1666 -> MAlonzo.Code.Algebra.Structures.T116
d1746 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d324
      (coe
         MAlonzo.Code.Algebra.Structures.d372
         (coe
            MAlonzo.Code.Algebra.Structures.d1098
            (coe MAlonzo.Code.Algebra.Structures.d1190 (coe d1698 (coe v0)))))
name1748 = "Algebra.Bundles.Semiring._.distrib"
d1748 :: T1666 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1748 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1102
      (coe MAlonzo.Code.Algebra.Structures.d1190 (coe d1698 (coe v0)))
name1750 = "Algebra.Bundles.Semiring._.distribʳ"
d1750 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1666 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1750 v0 v1 v2 = du1750 v2
du1750 :: T1666 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1750 v0
  = let v1 = d1698 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1190 (coe v1) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d1102 (coe v2))
name1752 = "Algebra.Bundles.Semiring._.distribˡ"
d1752 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1666 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1752 v0 v1 v2 = du1752 v2
du1752 :: T1666 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1752 v0
  = let v1 = d1698 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1190 (coe v1) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d1102 (coe v2))
name1754 = "Algebra.Bundles.Semiring._.isEquivalence"
d1754 :: T1666 -> MAlonzo.Code.Relation.Binary.Structures.T26
d1754 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d88
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d372
               (coe
                  MAlonzo.Code.Algebra.Structures.d1098
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1190 (coe d1698 (coe v0)))))))
name1756 = "Algebra.Bundles.Semiring._.isNearSemiring"
d1756 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1666 -> MAlonzo.Code.Algebra.Structures.T822
d1756 v0 v1 v2 = du1756 v2
du1756 :: T1666 -> MAlonzo.Code.Algebra.Structures.T822
du1756 v0
  = let v1 = d1698 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du934
      (coe MAlonzo.Code.Algebra.Structures.du1262 (coe v1))
name1758 = "Algebra.Bundles.Semiring._.isPartialEquivalence"
d1758 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1666 -> MAlonzo.Code.Relation.Binary.Structures.T16
d1758 v0 v1 v2 = du1758 v2
du1758 :: T1666 -> MAlonzo.Code.Relation.Binary.Structures.T16
du1758 v0
  = let v1 = d1698 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1190 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1098 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d372 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d324 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d124 (coe v5) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Algebra.Structures.d88 (coe v6))
name1760
  = "Algebra.Bundles.Semiring._.isSemiringWithoutAnnihilatingZero"
d1760 :: T1666 -> MAlonzo.Code.Algebra.Structures.T1082
d1760 v0
  = coe MAlonzo.Code.Algebra.Structures.d1190 (coe d1698 (coe v0))
name1762 = "Algebra.Bundles.Semiring._.isSemiringWithoutOne"
d1762 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1666 -> MAlonzo.Code.Algebra.Structures.T898
d1762 v0 v1 v2 = du1762 v2
du1762 :: T1666 -> MAlonzo.Code.Algebra.Structures.T898
du1762 v0
  = coe MAlonzo.Code.Algebra.Structures.du1262 (coe d1698 (coe v0))
name1764 = "Algebra.Bundles.Semiring._.refl"
d1764 :: T1666 -> AgdaAny -> AgdaAny
d1764 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1098
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1190 (coe d1698 (coe v0))))))))
name1766 = "Algebra.Bundles.Semiring._.reflexive"
d1766 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1666 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1766 v0 v1 v2 = du1766 v2
du1766 ::
  T1666 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1766 v0
  = let v1 = d1698 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1190 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1098 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d372 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d324 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d124 (coe v5) in
    \ v7 v8 v9 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Algebra.Structures.d88 (coe v6)) v7
name1768 = "Algebra.Bundles.Semiring._.setoid"
d1768 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1666 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d1768 v0 v1 v2 = du1768 v2
du1768 :: T1666 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du1768 v0
  = let v1 = d1698 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1190 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1098 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d372 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d324 (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du104
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v5))
name1770 = "Algebra.Bundles.Semiring._.sym"
d1770 :: T1666 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1770 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1098
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1190 (coe d1698 (coe v0))))))))
name1772 = "Algebra.Bundles.Semiring._.trans"
d1772 ::
  T1666 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1772 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1098
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1190 (coe d1698 (coe v0))))))))
name1774 = "Algebra.Bundles.Semiring._.zero"
d1774 :: T1666 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1774 v0
  = coe MAlonzo.Code.Algebra.Structures.d1192 (coe d1698 (coe v0))
name1776 = "Algebra.Bundles.Semiring._.zeroʳ"
d1776 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1666 -> AgdaAny -> AgdaAny
d1776 v0 v1 v2 = du1776 v2
du1776 :: T1666 -> AgdaAny -> AgdaAny
du1776 v0
  = let v1 = d1698 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Structures.du1262 (coe v1) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d920 (coe v2))
name1778 = "Algebra.Bundles.Semiring._.zeroˡ"
d1778 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1666 -> AgdaAny -> AgdaAny
d1778 v0 v1 v2 = du1778 v2
du1778 :: T1666 -> AgdaAny -> AgdaAny
du1778 v0
  = let v1 = d1698 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Structures.du1262 (coe v1) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d920 (coe v2))
name1780 = "Algebra.Bundles.Semiring.rawSemiring"
d1780 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1666 -> T1500
d1780 v0 v1 v2 = du1780 v2
du1780 :: T1666 -> T1500
du1780 v0
  = coe
      C16729 (d1690 (coe v0)) (d1692 (coe v0)) (d1694 (coe v0))
      (d1696 (coe v0))
name1782
  = "Algebra.Bundles.Semiring.semiringWithoutAnnihilatingZero"
d1782 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1666 -> T1534
d1782 v0 v1 v2 = du1782 v2
du1782 :: T1666 -> T1534
du1782 v0
  = coe
      C17067 (d1690 (coe v0)) (d1692 (coe v0)) (d1694 (coe v0))
      (d1696 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d1190 (coe d1698 (coe v0)))
name1786 = "Algebra.Bundles.Semiring._.magma"
d1786 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1666 -> T30
d1786 v0 v1 v2 = du1786 v2
du1786 :: T1666 -> T30
du1786 v0
  = let v1 = coe du1782 (coe v0) in
    let v2 = coe du1650 (coe v1) in coe du128 (coe du482 (coe v2))
name1788 = "Algebra.Bundles.Semiring._.*-monoid"
d1788 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1666 -> T422
d1788 v0 v1 v2 = du1788 v2
du1788 :: T1666 -> T422
du1788 v0 = coe du1650 (coe du1782 (coe v0))
name1790 = "Algebra.Bundles.Semiring._.rawMagma"
d1790 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1666 -> T8
d1790 v0 v1 v2 = du1790 v2
du1790 :: T1666 -> T8
du1790 v0
  = let v1 = coe du1782 (coe v0) in
    let v2 = coe du1650 (coe v1) in
    let v3 = coe du482 (coe v2) in coe du74 (coe du128 (coe v3))
name1792 = "Algebra.Bundles.Semiring._.rawMonoid"
d1792 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1666 -> T394
d1792 v0 v1 v2 = du1792 v2
du1792 :: T1666 -> T394
du1792 v0
  = let v1 = coe du1782 (coe v0) in coe du484 (coe du1650 (coe v1))
name1794 = "Algebra.Bundles.Semiring._.semigroup"
d1794 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1666 -> T80
d1794 v0 v1 v2 = du1794 v2
du1794 :: T1666 -> T80
du1794 v0
  = let v1 = coe du1782 (coe v0) in coe du482 (coe du1650 (coe v1))
name1796 = "Algebra.Bundles.Semiring._.+-commutativeMonoid"
d1796 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1666 -> T496
d1796 v0 v1 v2 = du1796 v2
du1796 :: T1666 -> T496
du1796 v0 = coe du1636 (coe du1782 (coe v0))
name1798 = "Algebra.Bundles.Semiring._.magma"
d1798 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1666 -> T30
d1798 v0 v1 v2 = du1798 v2
du1798 :: T1666 -> T30
du1798 v0
  = let v1 = coe du1782 (coe v0) in
    let v2 = coe du1636 (coe v1) in
    let v3 = coe du562 (coe v2) in coe du128 (coe du482 (coe v3))
name1800 = "Algebra.Bundles.Semiring._.monoid"
d1800 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1666 -> T422
d1800 v0 v1 v2 = du1800 v2
du1800 :: T1666 -> T422
du1800 v0
  = let v1 = coe du1782 (coe v0) in coe du562 (coe du1636 (coe v1))
name1802 = "Algebra.Bundles.Semiring._.rawMagma"
d1802 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1666 -> T8
d1802 v0 v1 v2 = du1802 v2
du1802 :: T1666 -> T8
du1802 v0
  = let v1 = coe du1782 (coe v0) in
    let v2 = coe du1636 (coe v1) in
    let v3 = coe du562 (coe v2) in
    let v4 = coe du482 (coe v3) in coe du74 (coe du128 (coe v4))
name1804 = "Algebra.Bundles.Semiring._.rawMonoid"
d1804 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1666 -> T394
d1804 v0 v1 v2 = du1804 v2
du1804 :: T1666 -> T394
du1804 v0
  = let v1 = coe du1782 (coe v0) in
    let v2 = coe du1636 (coe v1) in coe du484 (coe du562 (coe v2))
name1806 = "Algebra.Bundles.Semiring._.semigroup"
d1806 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1666 -> T80
d1806 v0 v1 v2 = du1806 v2
du1806 :: T1666 -> T80
du1806 v0
  = let v1 = coe du1782 (coe v0) in
    let v2 = coe du1636 (coe v1) in coe du482 (coe du562 (coe v2))
name1808 = "Algebra.Bundles.Semiring.semiringWithoutOne"
d1808 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1666 -> T1246
d1808 v0 v1 v2 = du1808 v2
du1808 :: T1666 -> T1246
du1808 v0
  = coe
      C14147 (d1690 (coe v0)) (d1692 (coe v0)) (d1694 (coe v0))
      (coe MAlonzo.Code.Algebra.Structures.du1262 (coe d1698 (coe v0)))
name1812 = "Algebra.Bundles.Semiring._.nearSemiring"
d1812 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1666 -> T1140
d1812 v0 v1 v2 = du1812 v2
du1812 :: T1666 -> T1140
du1812 v0 = coe du1344 (coe du1808 (coe v0))
name1818 = "Algebra.Bundles.CommutativeSemiring"
d1818 a0 a1 = ()
data T1818
  = C20443 (AgdaAny -> AgdaAny -> AgdaAny)
           (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny AgdaAny
           MAlonzo.Code.Algebra.Structures.T1280
name1838 = "Algebra.Bundles.CommutativeSemiring.Carrier"
d1838 :: T1818 -> ()
d1838 = erased
name1840 = "Algebra.Bundles.CommutativeSemiring._≈_"
d1840 :: T1818 -> AgdaAny -> AgdaAny -> ()
d1840 = erased
name1842 = "Algebra.Bundles.CommutativeSemiring._+_"
d1842 :: T1818 -> AgdaAny -> AgdaAny -> AgdaAny
d1842 v0
  = case coe v0 of
      C20443 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1844 = "Algebra.Bundles.CommutativeSemiring._*_"
d1844 :: T1818 -> AgdaAny -> AgdaAny -> AgdaAny
d1844 v0
  = case coe v0 of
      C20443 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1846 = "Algebra.Bundles.CommutativeSemiring.0#"
d1846 :: T1818 -> AgdaAny
d1846 v0
  = case coe v0 of
      C20443 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name1848 = "Algebra.Bundles.CommutativeSemiring.1#"
d1848 :: T1818 -> AgdaAny
d1848 v0
  = case coe v0 of
      C20443 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name1850
  = "Algebra.Bundles.CommutativeSemiring.isCommutativeSemiring"
d1850 :: T1818 -> MAlonzo.Code.Algebra.Structures.T1280
d1850 v0
  = case coe v0 of
      C20443 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
name1854 = "Algebra.Bundles.CommutativeSemiring._.assoc"
d1854 :: T1818 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1854 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d1100
            (coe
               MAlonzo.Code.Algebra.Structures.d1190
               (coe MAlonzo.Code.Algebra.Structures.d1294 (coe d1850 (coe v0))))))
name1856 = "Algebra.Bundles.CommutativeSemiring._.*-comm"
d1856 :: T1818 -> AgdaAny -> AgdaAny -> AgdaAny
d1856 v0
  = coe MAlonzo.Code.Algebra.Structures.d1296 (coe d1850 (coe v0))
name1858 = "Algebra.Bundles.CommutativeSemiring._.∙-cong"
d1858 ::
  T1818 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1858 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d1100
               (coe
                  MAlonzo.Code.Algebra.Structures.d1190
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1294 (coe d1850 (coe v0)))))))
name1860 = "Algebra.Bundles.CommutativeSemiring._.∙-congʳ"
d1860 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1818 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1860 v0 v1 v2 = du1860 v2
du1860 ::
  T1818 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1860 v0
  = let v1 = d1850 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1294 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1190 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1100 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d324 (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v5))
name1862 = "Algebra.Bundles.CommutativeSemiring._.∙-congˡ"
d1862 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1818 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1862 v0 v1 v2 = du1862 v2
du1862 ::
  T1818 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1862 v0
  = let v1 = d1850 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1294 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1190 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1100 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d324 (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v5))
name1864 = "Algebra.Bundles.CommutativeSemiring._.identity"
d1864 :: T1818 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1864 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d326
      (coe
         MAlonzo.Code.Algebra.Structures.d1100
         (coe
            MAlonzo.Code.Algebra.Structures.d1190
            (coe MAlonzo.Code.Algebra.Structures.d1294 (coe d1850 (coe v0)))))
name1866 = "Algebra.Bundles.CommutativeSemiring._.identityʳ"
d1866 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1818 -> AgdaAny -> AgdaAny
d1866 v0 v1 v2 = du1866 v2
du1866 :: T1818 -> AgdaAny -> AgdaAny
du1866 v0
  = let v1 = d1850 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1294 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1190 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1100 (coe v3) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v4))
name1868 = "Algebra.Bundles.CommutativeSemiring._.identityˡ"
d1868 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1818 -> AgdaAny -> AgdaAny
d1868 v0 v1 v2 = du1868 v2
du1868 :: T1818 -> AgdaAny -> AgdaAny
du1868 v0
  = let v1 = d1850 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1294 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1190 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1100 (coe v3) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v4))
name1870
  = "Algebra.Bundles.CommutativeSemiring._.*-isCommutativeMonoid"
d1870 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1818 -> MAlonzo.Code.Algebra.Structures.T362
d1870 v0 v1 v2 = du1870 v2
du1870 :: T1818 -> MAlonzo.Code.Algebra.Structures.T362
du1870 v0
  = coe MAlonzo.Code.Algebra.Structures.du1382 (coe d1850 (coe v0))
name1872
  = "Algebra.Bundles.CommutativeSemiring._.*-isCommutativeSemigroup"
d1872 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1818 -> MAlonzo.Code.Algebra.Structures.T192
d1872 v0 v1 v2 = du1872 v2
du1872 :: T1818 -> MAlonzo.Code.Algebra.Structures.T192
du1872 v0
  = coe MAlonzo.Code.Algebra.Structures.du1380 (coe d1850 (coe v0))
name1874 = "Algebra.Bundles.CommutativeSemiring._.isMagma"
d1874 :: T1818 -> MAlonzo.Code.Algebra.Structures.T80
d1874 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d1100
            (coe
               MAlonzo.Code.Algebra.Structures.d1190
               (coe MAlonzo.Code.Algebra.Structures.d1294 (coe d1850 (coe v0))))))
name1876 = "Algebra.Bundles.CommutativeSemiring._.*-isMonoid"
d1876 :: T1818 -> MAlonzo.Code.Algebra.Structures.T314
d1876 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1100
      (coe
         MAlonzo.Code.Algebra.Structures.d1190
         (coe MAlonzo.Code.Algebra.Structures.d1294 (coe d1850 (coe v0))))
name1878 = "Algebra.Bundles.CommutativeSemiring._.isSemigroup"
d1878 :: T1818 -> MAlonzo.Code.Algebra.Structures.T116
d1878 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d324
      (coe
         MAlonzo.Code.Algebra.Structures.d1100
         (coe
            MAlonzo.Code.Algebra.Structures.d1190
            (coe MAlonzo.Code.Algebra.Structures.d1294 (coe d1850 (coe v0)))))
name1880 = "Algebra.Bundles.CommutativeSemiring._.assoc"
d1880 :: T1818 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1880 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d372
            (coe
               MAlonzo.Code.Algebra.Structures.d1098
               (coe
                  MAlonzo.Code.Algebra.Structures.d1190
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1294 (coe d1850 (coe v0)))))))
name1882 = "Algebra.Bundles.CommutativeSemiring._.comm"
d1882 :: T1818 -> AgdaAny -> AgdaAny -> AgdaAny
d1882 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d374
      (coe
         MAlonzo.Code.Algebra.Structures.d1098
         (coe
            MAlonzo.Code.Algebra.Structures.d1190
            (coe MAlonzo.Code.Algebra.Structures.d1294 (coe d1850 (coe v0)))))
name1884 = "Algebra.Bundles.CommutativeSemiring._.∙-cong"
d1884 ::
  T1818 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1884 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d372
               (coe
                  MAlonzo.Code.Algebra.Structures.d1098
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1190
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1294 (coe d1850 (coe v0))))))))
name1886 = "Algebra.Bundles.CommutativeSemiring._.∙-congʳ"
d1886 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1818 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1886 v0 v1 v2 = du1886 v2
du1886 ::
  T1818 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1886 v0
  = let v1 = d1850 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1294 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1190 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1098 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d372 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d324 (coe v5) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v6))
name1888 = "Algebra.Bundles.CommutativeSemiring._.∙-congˡ"
d1888 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1818 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1888 v0 v1 v2 = du1888 v2
du1888 ::
  T1818 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1888 v0
  = let v1 = d1850 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1294 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1190 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1098 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d372 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d324 (coe v5) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v6))
name1890 = "Algebra.Bundles.CommutativeSemiring._.identity"
d1890 :: T1818 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1890 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d326
      (coe
         MAlonzo.Code.Algebra.Structures.d372
         (coe
            MAlonzo.Code.Algebra.Structures.d1098
            (coe
               MAlonzo.Code.Algebra.Structures.d1190
               (coe MAlonzo.Code.Algebra.Structures.d1294 (coe d1850 (coe v0))))))
name1892 = "Algebra.Bundles.CommutativeSemiring._.identityʳ"
d1892 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1818 -> AgdaAny -> AgdaAny
d1892 v0 v1 v2 = du1892 v2
du1892 :: T1818 -> AgdaAny -> AgdaAny
du1892 v0
  = let v1 = d1850 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1294 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1190 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1098 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d372 (coe v4) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v5))
name1894 = "Algebra.Bundles.CommutativeSemiring._.identityˡ"
d1894 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1818 -> AgdaAny -> AgdaAny
d1894 v0 v1 v2 = du1894 v2
du1894 :: T1818 -> AgdaAny -> AgdaAny
du1894 v0
  = let v1 = d1850 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1294 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1190 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1098 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d372 (coe v4) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v5))
name1896
  = "Algebra.Bundles.CommutativeSemiring._.+-isCommutativeMonoid"
d1896 :: T1818 -> MAlonzo.Code.Algebra.Structures.T362
d1896 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1098
      (coe
         MAlonzo.Code.Algebra.Structures.d1190
         (coe MAlonzo.Code.Algebra.Structures.d1294 (coe d1850 (coe v0))))
name1898
  = "Algebra.Bundles.CommutativeSemiring._.isCommutativeSemigroup"
d1898 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1818 -> MAlonzo.Code.Algebra.Structures.T192
d1898 v0 v1 v2 = du1898 v2
du1898 :: T1818 -> MAlonzo.Code.Algebra.Structures.T192
du1898 v0
  = let v1 = d1850 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1294 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1190 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du410
      (coe MAlonzo.Code.Algebra.Structures.d1098 (coe v3))
name1900 = "Algebra.Bundles.CommutativeSemiring._.isMagma"
d1900 :: T1818 -> MAlonzo.Code.Algebra.Structures.T80
d1900 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d372
            (coe
               MAlonzo.Code.Algebra.Structures.d1098
               (coe
                  MAlonzo.Code.Algebra.Structures.d1190
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1294 (coe d1850 (coe v0)))))))
name1902 = "Algebra.Bundles.CommutativeSemiring._.isMonoid"
d1902 :: T1818 -> MAlonzo.Code.Algebra.Structures.T314
d1902 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d372
      (coe
         MAlonzo.Code.Algebra.Structures.d1098
         (coe
            MAlonzo.Code.Algebra.Structures.d1190
            (coe MAlonzo.Code.Algebra.Structures.d1294 (coe d1850 (coe v0)))))
name1904 = "Algebra.Bundles.CommutativeSemiring._.isSemigroup"
d1904 :: T1818 -> MAlonzo.Code.Algebra.Structures.T116
d1904 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d324
      (coe
         MAlonzo.Code.Algebra.Structures.d372
         (coe
            MAlonzo.Code.Algebra.Structures.d1098
            (coe
               MAlonzo.Code.Algebra.Structures.d1190
               (coe MAlonzo.Code.Algebra.Structures.d1294 (coe d1850 (coe v0))))))
name1906 = "Algebra.Bundles.CommutativeSemiring._.distrib"
d1906 :: T1818 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1906 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1102
      (coe
         MAlonzo.Code.Algebra.Structures.d1190
         (coe MAlonzo.Code.Algebra.Structures.d1294 (coe d1850 (coe v0))))
name1908 = "Algebra.Bundles.CommutativeSemiring._.distribʳ"
d1908 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1818 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1908 v0 v1 v2 = du1908 v2
du1908 :: T1818 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1908 v0
  = let v1 = d1850 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1294 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1190 (coe v2) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d1102 (coe v3))
name1910 = "Algebra.Bundles.CommutativeSemiring._.distribˡ"
d1910 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1818 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1910 v0 v1 v2 = du1910 v2
du1910 :: T1818 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1910 v0
  = let v1 = d1850 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1294 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1190 (coe v2) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d1102 (coe v3))
name1912
  = "Algebra.Bundles.CommutativeSemiring._.isCommutativeSemiringWithoutOne"
d1912 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1818 -> MAlonzo.Code.Algebra.Structures.T990
d1912 v0 v1 v2 = du1912 v2
du1912 :: T1818 -> MAlonzo.Code.Algebra.Structures.T990
du1912 v0
  = coe MAlonzo.Code.Algebra.Structures.du1378 (coe d1850 (coe v0))
name1914 = "Algebra.Bundles.CommutativeSemiring._.isEquivalence"
d1914 :: T1818 -> MAlonzo.Code.Relation.Binary.Structures.T26
d1914 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d88
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d372
               (coe
                  MAlonzo.Code.Algebra.Structures.d1098
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1190
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1294 (coe d1850 (coe v0))))))))
name1916 = "Algebra.Bundles.CommutativeSemiring._.isNearSemiring"
d1916 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1818 -> MAlonzo.Code.Algebra.Structures.T822
d1916 v0 v1 v2 = du1916 v2
du1916 :: T1818 -> MAlonzo.Code.Algebra.Structures.T822
du1916 v0
  = let v1 = d1850 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1294 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du934
      (coe MAlonzo.Code.Algebra.Structures.du1262 (coe v2))
name1918
  = "Algebra.Bundles.CommutativeSemiring._.isPartialEquivalence"
d1918 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1818 -> MAlonzo.Code.Relation.Binary.Structures.T16
d1918 v0 v1 v2 = du1918 v2
du1918 :: T1818 -> MAlonzo.Code.Relation.Binary.Structures.T16
du1918 v0
  = let v1 = d1850 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1294 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1190 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1098 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d372 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d324 (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d124 (coe v6) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Algebra.Structures.d88 (coe v7))
name1920 = "Algebra.Bundles.CommutativeSemiring._.isSemiring"
d1920 :: T1818 -> MAlonzo.Code.Algebra.Structures.T1176
d1920 v0
  = coe MAlonzo.Code.Algebra.Structures.d1294 (coe d1850 (coe v0))
name1922
  = "Algebra.Bundles.CommutativeSemiring._.isSemiringWithoutAnnihilatingZero"
d1922 :: T1818 -> MAlonzo.Code.Algebra.Structures.T1082
d1922 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1190
      (coe MAlonzo.Code.Algebra.Structures.d1294 (coe d1850 (coe v0)))
name1924
  = "Algebra.Bundles.CommutativeSemiring._.isSemiringWithoutOne"
d1924 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1818 -> MAlonzo.Code.Algebra.Structures.T898
d1924 v0 v1 v2 = du1924 v2
du1924 :: T1818 -> MAlonzo.Code.Algebra.Structures.T898
du1924 v0
  = let v1 = d1850 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du1262
      (coe MAlonzo.Code.Algebra.Structures.d1294 (coe v1))
name1926 = "Algebra.Bundles.CommutativeSemiring._.refl"
d1926 :: T1818 -> AgdaAny -> AgdaAny
d1926 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1098
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1190
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1294 (coe d1850 (coe v0)))))))))
name1928 = "Algebra.Bundles.CommutativeSemiring._.reflexive"
d1928 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1818 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1928 v0 v1 v2 = du1928 v2
du1928 ::
  T1818 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1928 v0
  = let v1 = d1850 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1294 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1190 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1098 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d372 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d324 (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d124 (coe v6) in
    \ v8 v9 v10 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Algebra.Structures.d88 (coe v7)) v8
name1930 = "Algebra.Bundles.CommutativeSemiring._.setoid"
d1930 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1818 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d1930 v0 v1 v2 = du1930 v2
du1930 :: T1818 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du1930 v0
  = let v1 = d1850 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1294 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1190 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1098 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d372 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d324 (coe v5) in
    coe
      MAlonzo.Code.Algebra.Structures.du104
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v6))
name1932 = "Algebra.Bundles.CommutativeSemiring._.sym"
d1932 :: T1818 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1932 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1098
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1190
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1294 (coe d1850 (coe v0)))))))))
name1934 = "Algebra.Bundles.CommutativeSemiring._.trans"
d1934 ::
  T1818 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1934 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1098
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1190
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1294 (coe d1850 (coe v0)))))))))
name1936 = "Algebra.Bundles.CommutativeSemiring._.zero"
d1936 :: T1818 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1936 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1192
      (coe MAlonzo.Code.Algebra.Structures.d1294 (coe d1850 (coe v0)))
name1938 = "Algebra.Bundles.CommutativeSemiring._.zeroʳ"
d1938 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1818 -> AgdaAny -> AgdaAny
d1938 v0 v1 v2 = du1938 v2
du1938 :: T1818 -> AgdaAny -> AgdaAny
du1938 v0
  = let v1 = d1850 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1294 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Structures.du1262 (coe v2) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d920 (coe v3))
name1940 = "Algebra.Bundles.CommutativeSemiring._.zeroˡ"
d1940 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1818 -> AgdaAny -> AgdaAny
d1940 v0 v1 v2 = du1940 v2
du1940 :: T1818 -> AgdaAny -> AgdaAny
du1940 v0
  = let v1 = d1850 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1294 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Structures.du1262 (coe v2) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d920 (coe v3))
name1942 = "Algebra.Bundles.CommutativeSemiring.semiring"
d1942 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1818 -> T1666
d1942 v0 v1 v2 = du1942 v2
du1942 :: T1818 -> T1666
du1942 v0
  = coe
      C18607 (d1842 (coe v0)) (d1844 (coe v0)) (d1846 (coe v0))
      (d1848 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d1294 (coe d1850 (coe v0)))
name1946 = "Algebra.Bundles.CommutativeSemiring._.magma"
d1946 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1818 -> T30
d1946 v0 v1 v2 = du1946 v2
du1946 :: T1818 -> T30
du1946 v0
  = let v1 = coe du1942 (coe v0) in
    let v2 = coe du1782 (coe v1) in
    let v3 = coe du1650 (coe v2) in coe du128 (coe du482 (coe v3))
name1948 = "Algebra.Bundles.CommutativeSemiring._.*-monoid"
d1948 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1818 -> T422
d1948 v0 v1 v2 = du1948 v2
du1948 :: T1818 -> T422
du1948 v0
  = let v1 = coe du1942 (coe v0) in coe du1650 (coe du1782 (coe v1))
name1950 = "Algebra.Bundles.CommutativeSemiring._.rawMagma"
d1950 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1818 -> T8
d1950 v0 v1 v2 = du1950 v2
du1950 :: T1818 -> T8
du1950 v0
  = let v1 = coe du1942 (coe v0) in
    let v2 = coe du1782 (coe v1) in
    let v3 = coe du1650 (coe v2) in
    let v4 = coe du482 (coe v3) in coe du74 (coe du128 (coe v4))
name1952 = "Algebra.Bundles.CommutativeSemiring._.rawMonoid"
d1952 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1818 -> T394
d1952 v0 v1 v2 = du1952 v2
du1952 :: T1818 -> T394
du1952 v0
  = let v1 = coe du1942 (coe v0) in
    let v2 = coe du1782 (coe v1) in coe du484 (coe du1650 (coe v2))
name1954 = "Algebra.Bundles.CommutativeSemiring._.semigroup"
d1954 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1818 -> T80
d1954 v0 v1 v2 = du1954 v2
du1954 :: T1818 -> T80
du1954 v0
  = let v1 = coe du1942 (coe v0) in
    let v2 = coe du1782 (coe v1) in coe du482 (coe du1650 (coe v2))
name1956
  = "Algebra.Bundles.CommutativeSemiring._.+-commutativeMonoid"
d1956 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1818 -> T496
d1956 v0 v1 v2 = du1956 v2
du1956 :: T1818 -> T496
du1956 v0
  = let v1 = coe du1942 (coe v0) in coe du1636 (coe du1782 (coe v1))
name1958 = "Algebra.Bundles.CommutativeSemiring._.magma"
d1958 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1818 -> T30
d1958 v0 v1 v2 = du1958 v2
du1958 :: T1818 -> T30
du1958 v0
  = let v1 = coe du1942 (coe v0) in
    let v2 = coe du1782 (coe v1) in
    let v3 = coe du1636 (coe v2) in
    let v4 = coe du562 (coe v3) in coe du128 (coe du482 (coe v4))
name1960 = "Algebra.Bundles.CommutativeSemiring._.monoid"
d1960 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1818 -> T422
d1960 v0 v1 v2 = du1960 v2
du1960 :: T1818 -> T422
du1960 v0
  = let v1 = coe du1942 (coe v0) in
    let v2 = coe du1782 (coe v1) in coe du562 (coe du1636 (coe v2))
name1962 = "Algebra.Bundles.CommutativeSemiring._.rawMagma"
d1962 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1818 -> T8
d1962 v0 v1 v2 = du1962 v2
du1962 :: T1818 -> T8
du1962 v0
  = let v1 = coe du1942 (coe v0) in
    let v2 = coe du1782 (coe v1) in
    let v3 = coe du1636 (coe v2) in
    let v4 = coe du562 (coe v3) in
    let v5 = coe du482 (coe v4) in coe du74 (coe du128 (coe v5))
name1964 = "Algebra.Bundles.CommutativeSemiring._.rawMonoid"
d1964 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1818 -> T394
d1964 v0 v1 v2 = du1964 v2
du1964 :: T1818 -> T394
du1964 v0
  = let v1 = coe du1942 (coe v0) in
    let v2 = coe du1782 (coe v1) in
    let v3 = coe du1636 (coe v2) in coe du484 (coe du562 (coe v3))
name1966 = "Algebra.Bundles.CommutativeSemiring._.semigroup"
d1966 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1818 -> T80
d1966 v0 v1 v2 = du1966 v2
du1966 :: T1818 -> T80
du1966 v0
  = let v1 = coe du1942 (coe v0) in
    let v2 = coe du1782 (coe v1) in
    let v3 = coe du1636 (coe v2) in coe du482 (coe du562 (coe v3))
name1968 = "Algebra.Bundles.CommutativeSemiring._.nearSemiring"
d1968 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1818 -> T1140
d1968 v0 v1 v2 = du1968 v2
du1968 :: T1818 -> T1140
du1968 v0
  = let v1 = coe du1942 (coe v0) in coe du1344 (coe du1808 (coe v1))
name1970 = "Algebra.Bundles.CommutativeSemiring._.rawSemiring"
d1970 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1818 -> T1500
d1970 v0 v1 v2 = du1970 v2
du1970 :: T1818 -> T1500
du1970 v0 = coe du1780 (coe du1942 (coe v0))
name1972
  = "Algebra.Bundles.CommutativeSemiring._.semiringWithoutAnnihilatingZero"
d1972 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1818 -> T1534
d1972 v0 v1 v2 = du1972 v2
du1972 :: T1818 -> T1534
du1972 v0 = coe du1782 (coe du1942 (coe v0))
name1974
  = "Algebra.Bundles.CommutativeSemiring._.semiringWithoutOne"
d1974 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1818 -> T1246
d1974 v0 v1 v2 = du1974 v2
du1974 :: T1818 -> T1246
du1974 v0 = coe du1808 (coe du1942 (coe v0))
name1976
  = "Algebra.Bundles.CommutativeSemiring.*-commutativeSemigroup"
d1976 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1818 -> T202
d1976 v0 v1 v2 = du1976 v2
du1976 :: T1818 -> T202
du1976 v0
  = coe
      C2287 (d1844 (coe v0))
      (coe MAlonzo.Code.Algebra.Structures.du1380 (coe d1850 (coe v0)))
name1978
  = "Algebra.Bundles.CommutativeSemiring.*-commutativeMonoid"
d1978 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1818 -> T496
d1978 v0 v1 v2 = du1978 v2
du1978 :: T1818 -> T496
du1978 v0
  = coe
      C5649 (d1844 (coe v0)) (d1848 (coe v0))
      (coe MAlonzo.Code.Algebra.Structures.du1382 (coe d1850 (coe v0)))
name1980
  = "Algebra.Bundles.CommutativeSemiring.commutativeSemiringWithoutOne"
d1980 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1818 -> T1370
d1980 v0 v1 v2 = du1980 v2
du1980 :: T1818 -> T1370
du1980 v0
  = coe
      C15573 (d1842 (coe v0)) (d1844 (coe v0)) (d1846 (coe v0))
      (coe MAlonzo.Code.Algebra.Structures.du1378 (coe d1850 (coe v0)))
name1986 = "Algebra.Bundles.RawRing"
d1986 a0 a1 = ()
data T1986
  = C22461 (AgdaAny -> AgdaAny -> AgdaAny)
           (AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny) AgdaAny
           AgdaAny
name2006 = "Algebra.Bundles.RawRing.Carrier"
d2006 :: T1986 -> ()
d2006 = erased
name2008 = "Algebra.Bundles.RawRing._≈_"
d2008 :: T1986 -> AgdaAny -> AgdaAny -> ()
d2008 = erased
name2010 = "Algebra.Bundles.RawRing._+_"
d2010 :: T1986 -> AgdaAny -> AgdaAny -> AgdaAny
d2010 v0
  = case coe v0 of
      C22461 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name2012 = "Algebra.Bundles.RawRing._*_"
d2012 :: T1986 -> AgdaAny -> AgdaAny -> AgdaAny
d2012 v0
  = case coe v0 of
      C22461 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name2014 = "Algebra.Bundles.RawRing.-_"
d2014 :: T1986 -> AgdaAny -> AgdaAny
d2014 v0
  = case coe v0 of
      C22461 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name2016 = "Algebra.Bundles.RawRing.0#"
d2016 :: T1986 -> AgdaAny
d2016 v0
  = case coe v0 of
      C22461 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name2018 = "Algebra.Bundles.RawRing.1#"
d2018 :: T1986 -> AgdaAny
d2018 v0
  = case coe v0 of
      C22461 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
name2020 = "Algebra.Bundles.RawRing.+-rawGroup"
d2020 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1986 -> T742
d2020 v0 v1 v2 = du2020 v2
du2020 :: T1986 -> T742
du2020 v0
  = coe C7753 (d2010 (coe v0)) (d2016 (coe v0)) (d2014 (coe v0))
name2022 = "Algebra.Bundles.RawRing.*-rawMonoid"
d2022 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1986 -> T394
d2022 v0 v1 v2 = du2022 v2
du2022 :: T1986 -> T394
du2022 v0 = coe C4379 (d2012 (coe v0)) (d2018 (coe v0))
name2028 = "Algebra.Bundles.Ring"
d2028 a0 a1 = ()
data T2028
  = C23009 (AgdaAny -> AgdaAny -> AgdaAny)
           (AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny) AgdaAny
           AgdaAny MAlonzo.Code.Algebra.Structures.T1394
name2050 = "Algebra.Bundles.Ring.Carrier"
d2050 :: T2028 -> ()
d2050 = erased
name2052 = "Algebra.Bundles.Ring._≈_"
d2052 :: T2028 -> AgdaAny -> AgdaAny -> ()
d2052 = erased
name2054 = "Algebra.Bundles.Ring._+_"
d2054 :: T2028 -> AgdaAny -> AgdaAny -> AgdaAny
d2054 v0
  = case coe v0 of
      C23009 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name2056 = "Algebra.Bundles.Ring._*_"
d2056 :: T2028 -> AgdaAny -> AgdaAny -> AgdaAny
d2056 v0
  = case coe v0 of
      C23009 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name2058 = "Algebra.Bundles.Ring.-_"
d2058 :: T2028 -> AgdaAny -> AgdaAny
d2058 v0
  = case coe v0 of
      C23009 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name2060 = "Algebra.Bundles.Ring.0#"
d2060 :: T2028 -> AgdaAny
d2060 v0
  = case coe v0 of
      C23009 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name2062 = "Algebra.Bundles.Ring.1#"
d2062 :: T2028 -> AgdaAny
d2062 v0
  = case coe v0 of
      C23009 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
name2064 = "Algebra.Bundles.Ring.isRing"
d2064 :: T2028 -> MAlonzo.Code.Algebra.Structures.T1394
d2064 v0
  = case coe v0 of
      C23009 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
name2068 = "Algebra.Bundles.Ring._._-_"
d2068 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2028 -> AgdaAny -> AgdaAny -> AgdaAny
d2068 v0 v1 v2 = du2068 v2
du2068 :: T2028 -> AgdaAny -> AgdaAny -> AgdaAny
du2068 v0
  = let v1 = d2054 (coe v0) in
    let v2 = d2058 (coe v0) in coe (\ v3 v4 -> coe v1 v3 (coe v2 v4))
name2070 = "Algebra.Bundles.Ring._.assoc"
d2070 :: T2028 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2070 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe MAlonzo.Code.Algebra.Structures.d1416 (coe d2064 (coe v0))))
name2072 = "Algebra.Bundles.Ring._.∙-cong"
d2072 ::
  T2028 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2072 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe MAlonzo.Code.Algebra.Structures.d1416 (coe d2064 (coe v0)))))
name2074 = "Algebra.Bundles.Ring._.∙-congʳ"
d2074 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2028 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2074 v0 v1 v2 = du2074 v2
du2074 ::
  T2028 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2074 v0
  = let v1 = d2064 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1416 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d324 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v3))
name2076 = "Algebra.Bundles.Ring._.∙-congˡ"
d2076 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2028 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2076 v0 v1 v2 = du2076 v2
du2076 ::
  T2028 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2076 v0
  = let v1 = d2064 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1416 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d324 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v3))
name2078 = "Algebra.Bundles.Ring._.identity"
d2078 :: T2028 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d2078 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d326
      (coe MAlonzo.Code.Algebra.Structures.d1416 (coe d2064 (coe v0)))
name2080 = "Algebra.Bundles.Ring._.identityʳ"
d2080 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2028 -> AgdaAny -> AgdaAny
d2080 v0 v1 v2 = du2080 v2
du2080 :: T2028 -> AgdaAny -> AgdaAny
du2080 v0
  = let v1 = d2064 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1416 (coe v1) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v2))
name2082 = "Algebra.Bundles.Ring._.identityˡ"
d2082 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2028 -> AgdaAny -> AgdaAny
d2082 v0 v1 v2 = du2082 v2
du2082 :: T2028 -> AgdaAny -> AgdaAny
du2082 v0
  = let v1 = d2064 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1416 (coe v1) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v2))
name2084 = "Algebra.Bundles.Ring._.isMagma"
d2084 :: T2028 -> MAlonzo.Code.Algebra.Structures.T80
d2084 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe MAlonzo.Code.Algebra.Structures.d1416 (coe d2064 (coe v0))))
name2086 = "Algebra.Bundles.Ring._.*-isMonoid"
d2086 :: T2028 -> MAlonzo.Code.Algebra.Structures.T314
d2086 v0
  = coe MAlonzo.Code.Algebra.Structures.d1416 (coe d2064 (coe v0))
name2088 = "Algebra.Bundles.Ring._.isSemigroup"
d2088 :: T2028 -> MAlonzo.Code.Algebra.Structures.T116
d2088 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d324
      (coe MAlonzo.Code.Algebra.Structures.d1416 (coe d2064 (coe v0)))
name2090 = "Algebra.Bundles.Ring._.assoc"
d2090 :: T2028 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2090 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d542
            (coe
               MAlonzo.Code.Algebra.Structures.d622
               (coe MAlonzo.Code.Algebra.Structures.d1414 (coe d2064 (coe v0))))))
name2092 = "Algebra.Bundles.Ring._.comm"
d2092 :: T2028 -> AgdaAny -> AgdaAny -> AgdaAny
d2092 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d624
      (coe MAlonzo.Code.Algebra.Structures.d1414 (coe d2064 (coe v0)))
name2094 = "Algebra.Bundles.Ring._.∙-cong"
d2094 ::
  T2028 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2094 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d542
               (coe
                  MAlonzo.Code.Algebra.Structures.d622
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1414 (coe d2064 (coe v0)))))))
name2096 = "Algebra.Bundles.Ring._.∙-congʳ"
d2096 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2028 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2096 v0 v1 v2 = du2096 v2
du2096 ::
  T2028 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2096 v0
  = let v1 = d2064 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1414 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d622 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d542 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d324 (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v5))
name2098 = "Algebra.Bundles.Ring._.∙-congˡ"
d2098 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2028 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2098 v0 v1 v2 = du2098 v2
du2098 ::
  T2028 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2098 v0
  = let v1 = d2064 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1414 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d622 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d542 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d324 (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v5))
name2100 = "Algebra.Bundles.Ring._.identity"
d2100 :: T2028 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d2100 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d326
      (coe
         MAlonzo.Code.Algebra.Structures.d542
         (coe
            MAlonzo.Code.Algebra.Structures.d622
            (coe MAlonzo.Code.Algebra.Structures.d1414 (coe d2064 (coe v0)))))
name2102 = "Algebra.Bundles.Ring._.identityʳ"
d2102 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2028 -> AgdaAny -> AgdaAny
d2102 v0 v1 v2 = du2102 v2
du2102 :: T2028 -> AgdaAny -> AgdaAny
du2102 v0
  = let v1 = d2064 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1414 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d622 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d542 (coe v3) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v4))
name2104 = "Algebra.Bundles.Ring._.identityˡ"
d2104 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2028 -> AgdaAny -> AgdaAny
d2104 v0 v1 v2 = du2104 v2
du2104 :: T2028 -> AgdaAny -> AgdaAny
du2104 v0
  = let v1 = d2064 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1414 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d622 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d542 (coe v3) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v4))
name2106 = "Algebra.Bundles.Ring._.+-isAbelianGroup"
d2106 :: T2028 -> MAlonzo.Code.Algebra.Structures.T610
d2106 v0
  = coe MAlonzo.Code.Algebra.Structures.d1414 (coe d2064 (coe v0))
name2108 = "Algebra.Bundles.Ring._.isCommutativeMonoid"
d2108 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2028 -> MAlonzo.Code.Algebra.Structures.T362
d2108 v0 v1 v2 = du2108 v2
du2108 :: T2028 -> MAlonzo.Code.Algebra.Structures.T362
du2108 v0
  = let v1 = d2064 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du676
      (coe MAlonzo.Code.Algebra.Structures.d1414 (coe v1))
name2110 = "Algebra.Bundles.Ring._.isCommutativeSemigroup"
d2110 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2028 -> MAlonzo.Code.Algebra.Structures.T192
d2110 v0 v1 v2 = du2110 v2
du2110 :: T2028 -> MAlonzo.Code.Algebra.Structures.T192
du2110 v0
  = let v1 = d2064 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1414 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du410
      (coe MAlonzo.Code.Algebra.Structures.du676 (coe v2))
name2112 = "Algebra.Bundles.Ring._.isGroup"
d2112 :: T2028 -> MAlonzo.Code.Algebra.Structures.T528
d2112 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d622
      (coe MAlonzo.Code.Algebra.Structures.d1414 (coe d2064 (coe v0)))
name2114 = "Algebra.Bundles.Ring._.isMagma"
d2114 :: T2028 -> MAlonzo.Code.Algebra.Structures.T80
d2114 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d542
            (coe
               MAlonzo.Code.Algebra.Structures.d622
               (coe MAlonzo.Code.Algebra.Structures.d1414 (coe d2064 (coe v0))))))
name2116 = "Algebra.Bundles.Ring._.isMonoid"
d2116 :: T2028 -> MAlonzo.Code.Algebra.Structures.T314
d2116 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d542
      (coe
         MAlonzo.Code.Algebra.Structures.d622
         (coe MAlonzo.Code.Algebra.Structures.d1414 (coe d2064 (coe v0))))
name2118 = "Algebra.Bundles.Ring._.isSemigroup"
d2118 :: T2028 -> MAlonzo.Code.Algebra.Structures.T116
d2118 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d324
      (coe
         MAlonzo.Code.Algebra.Structures.d542
         (coe
            MAlonzo.Code.Algebra.Structures.d622
            (coe MAlonzo.Code.Algebra.Structures.d1414 (coe d2064 (coe v0)))))
name2120 = "Algebra.Bundles.Ring._.⁻¹-cong"
d2120 :: T2028 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2120 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d546
      (coe
         MAlonzo.Code.Algebra.Structures.d622
         (coe MAlonzo.Code.Algebra.Structures.d1414 (coe d2064 (coe v0))))
name2122 = "Algebra.Bundles.Ring._.inverse"
d2122 :: T2028 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d2122 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d544
      (coe
         MAlonzo.Code.Algebra.Structures.d622
         (coe MAlonzo.Code.Algebra.Structures.d1414 (coe d2064 (coe v0))))
name2124 = "Algebra.Bundles.Ring._.inverseʳ"
d2124 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2028 -> AgdaAny -> AgdaAny
d2124 v0 v1 v2 = du2124 v2
du2124 :: T2028 -> AgdaAny -> AgdaAny
du2124 v0
  = let v1 = d2064 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1414 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d622 (coe v2) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d544 (coe v3))
name2126 = "Algebra.Bundles.Ring._.inverseˡ"
d2126 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2028 -> AgdaAny -> AgdaAny
d2126 v0 v1 v2 = du2126 v2
du2126 :: T2028 -> AgdaAny -> AgdaAny
du2126 v0
  = let v1 = d2064 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1414 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d622 (coe v2) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d544 (coe v3))
name2128 = "Algebra.Bundles.Ring._.distrib"
d2128 :: T2028 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d2128 v0
  = coe MAlonzo.Code.Algebra.Structures.d1418 (coe d2064 (coe v0))
name2130 = "Algebra.Bundles.Ring._.distribʳ"
d2130 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2028 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2130 v0 v1 v2 = du2130 v2
du2130 :: T2028 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2130 v0
  = let v1 = d2064 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Structures.du1506 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1190 (coe v2) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d1102 (coe v3))
name2132 = "Algebra.Bundles.Ring._.distribˡ"
d2132 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2028 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2132 v0 v1 v2 = du2132 v2
du2132 :: T2028 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2132 v0
  = let v1 = d2064 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Structures.du1506 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1190 (coe v2) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d1102 (coe v3))
name2134 = "Algebra.Bundles.Ring._.isEquivalence"
d2134 :: T2028 -> MAlonzo.Code.Relation.Binary.Structures.T26
d2134 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d88
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d542
               (coe
                  MAlonzo.Code.Algebra.Structures.d622
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1414 (coe d2064 (coe v0)))))))
name2136 = "Algebra.Bundles.Ring._.isNearSemiring"
d2136 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2028 -> MAlonzo.Code.Algebra.Structures.T822
d2136 v0 v1 v2 = du2136 v2
du2136 :: T2028 -> MAlonzo.Code.Algebra.Structures.T822
du2136 v0
  = let v1 = d2064 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Structures.du1506 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du934
      (coe MAlonzo.Code.Algebra.Structures.du1262 (coe v2))
name2138 = "Algebra.Bundles.Ring._.isPartialEquivalence"
d2138 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2028 -> MAlonzo.Code.Relation.Binary.Structures.T16
d2138 v0 v1 v2 = du2138 v2
du2138 :: T2028 -> MAlonzo.Code.Relation.Binary.Structures.T16
du2138 v0
  = let v1 = d2064 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1414 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d622 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d542 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d324 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d124 (coe v5) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Algebra.Structures.d88 (coe v6))
name2140 = "Algebra.Bundles.Ring._.isSemiring"
d2140 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2028 -> MAlonzo.Code.Algebra.Structures.T1176
d2140 v0 v1 v2 = du2140 v2
du2140 :: T2028 -> MAlonzo.Code.Algebra.Structures.T1176
du2140 v0
  = coe MAlonzo.Code.Algebra.Structures.du1506 (coe d2064 (coe v0))
name2142
  = "Algebra.Bundles.Ring._.isSemiringWithoutAnnihilatingZero"
d2142 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2028 -> MAlonzo.Code.Algebra.Structures.T1082
d2142 v0 v1 v2 = du2142 v2
du2142 :: T2028 -> MAlonzo.Code.Algebra.Structures.T1082
du2142 v0
  = coe MAlonzo.Code.Algebra.Structures.du1504 (coe d2064 (coe v0))
name2144 = "Algebra.Bundles.Ring._.isSemiringWithoutOne"
d2144 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2028 -> MAlonzo.Code.Algebra.Structures.T898
d2144 v0 v1 v2 = du2144 v2
du2144 :: T2028 -> MAlonzo.Code.Algebra.Structures.T898
du2144 v0
  = let v1 = d2064 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du1262
      (coe MAlonzo.Code.Algebra.Structures.du1506 (coe v1))
name2146 = "Algebra.Bundles.Ring._.refl"
d2146 :: T2028 -> AgdaAny -> AgdaAny
d2146 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d542
                  (coe
                     MAlonzo.Code.Algebra.Structures.d622
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1414 (coe d2064 (coe v0))))))))
name2148 = "Algebra.Bundles.Ring._.reflexive"
d2148 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2028 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d2148 v0 v1 v2 = du2148 v2
du2148 ::
  T2028 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du2148 v0
  = let v1 = d2064 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1414 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d622 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d542 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d324 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d124 (coe v5) in
    \ v7 v8 v9 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Algebra.Structures.d88 (coe v6)) v7
name2150 = "Algebra.Bundles.Ring._.setoid"
d2150 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2028 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d2150 v0 v1 v2 = du2150 v2
du2150 :: T2028 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du2150 v0
  = let v1 = d2064 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1414 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d622 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d542 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d324 (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du104
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v5))
name2152 = "Algebra.Bundles.Ring._.sym"
d2152 :: T2028 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2152 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d542
                  (coe
                     MAlonzo.Code.Algebra.Structures.d622
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1414 (coe d2064 (coe v0))))))))
name2154 = "Algebra.Bundles.Ring._.trans"
d2154 ::
  T2028 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2154 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d542
                  (coe
                     MAlonzo.Code.Algebra.Structures.d622
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1414 (coe d2064 (coe v0))))))))
name2156 = "Algebra.Bundles.Ring._.uniqueʳ-⁻¹"
d2156 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2028 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2156 v0 v1 v2 = du2156 v2
du2156 :: T2028 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2156 v0
  = let v1 = d2054 (coe v0) in
    let v2 = d2058 (coe v0) in
    let v3 = d2060 (coe v0) in
    let v4 = d2064 (coe v0) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1414 (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du602 (coe v1) (coe v3) (coe v2)
      (coe MAlonzo.Code.Algebra.Structures.d622 (coe v5))
name2158 = "Algebra.Bundles.Ring._.uniqueˡ-⁻¹"
d2158 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2028 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2158 v0 v1 v2 = du2158 v2
du2158 :: T2028 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2158 v0
  = let v1 = d2054 (coe v0) in
    let v2 = d2058 (coe v0) in
    let v3 = d2060 (coe v0) in
    let v4 = d2064 (coe v0) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1414 (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du596 (coe v1) (coe v3) (coe v2)
      (coe MAlonzo.Code.Algebra.Structures.d622 (coe v5))
name2160 = "Algebra.Bundles.Ring._.zero"
d2160 :: T2028 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d2160 v0
  = coe MAlonzo.Code.Algebra.Structures.d1420 (coe d2064 (coe v0))
name2162 = "Algebra.Bundles.Ring._.zeroʳ"
d2162 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2028 -> AgdaAny -> AgdaAny
d2162 v0 v1 v2 = du2162 v2
du2162 :: T2028 -> AgdaAny -> AgdaAny
du2162 v0
  = let v1 = d2064 (coe v0) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d1420 (coe v1))
name2164 = "Algebra.Bundles.Ring._.zeroˡ"
d2164 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2028 -> AgdaAny -> AgdaAny
d2164 v0 v1 v2 = du2164 v2
du2164 :: T2028 -> AgdaAny -> AgdaAny
du2164 v0
  = let v1 = d2064 (coe v0) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d1420 (coe v1))
name2166 = "Algebra.Bundles.Ring.+-abelianGroup"
d2166 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2028 -> T876
d2166 v0 v1 v2 = du2166 v2
du2166 :: T2028 -> T876
du2166 v0
  = coe
      C9391 (d2054 (coe v0)) (d2060 (coe v0)) (d2058 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d1414 (coe d2064 (coe v0)))
name2168 = "Algebra.Bundles.Ring.semiring"
d2168 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2028 -> T1666
d2168 v0 v1 v2 = du2168 v2
du2168 :: T2028 -> T1666
du2168 v0
  = coe
      C18607 (d2054 (coe v0)) (d2056 (coe v0)) (d2060 (coe v0))
      (d2062 (coe v0))
      (coe MAlonzo.Code.Algebra.Structures.du1506 (coe d2064 (coe v0)))
name2172 = "Algebra.Bundles.Ring._.magma"
d2172 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2028 -> T30
d2172 v0 v1 v2 = du2172 v2
du2172 :: T2028 -> T30
du2172 v0
  = let v1 = coe du2168 (coe v0) in
    let v2 = coe du1782 (coe v1) in
    let v3 = coe du1650 (coe v2) in coe du128 (coe du482 (coe v3))
name2174 = "Algebra.Bundles.Ring._.*-monoid"
d2174 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2028 -> T422
d2174 v0 v1 v2 = du2174 v2
du2174 :: T2028 -> T422
du2174 v0
  = let v1 = coe du2168 (coe v0) in coe du1650 (coe du1782 (coe v1))
name2176 = "Algebra.Bundles.Ring._.rawMagma"
d2176 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2028 -> T8
d2176 v0 v1 v2 = du2176 v2
du2176 :: T2028 -> T8
du2176 v0
  = let v1 = coe du2168 (coe v0) in
    let v2 = coe du1782 (coe v1) in
    let v3 = coe du1650 (coe v2) in
    let v4 = coe du482 (coe v3) in coe du74 (coe du128 (coe v4))
name2178 = "Algebra.Bundles.Ring._.rawMonoid"
d2178 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2028 -> T394
d2178 v0 v1 v2 = du2178 v2
du2178 :: T2028 -> T394
du2178 v0
  = let v1 = coe du2168 (coe v0) in
    let v2 = coe du1782 (coe v1) in coe du484 (coe du1650 (coe v2))
name2180 = "Algebra.Bundles.Ring._.semigroup"
d2180 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2028 -> T80
d2180 v0 v1 v2 = du2180 v2
du2180 :: T2028 -> T80
du2180 v0
  = let v1 = coe du2168 (coe v0) in
    let v2 = coe du1782 (coe v1) in coe du482 (coe du1650 (coe v2))
name2182 = "Algebra.Bundles.Ring._.+-commutativeMonoid"
d2182 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2028 -> T496
d2182 v0 v1 v2 = du2182 v2
du2182 :: T2028 -> T496
du2182 v0
  = let v1 = coe du2168 (coe v0) in coe du1636 (coe du1782 (coe v1))
name2184 = "Algebra.Bundles.Ring._.magma"
d2184 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2028 -> T30
d2184 v0 v1 v2 = du2184 v2
du2184 :: T2028 -> T30
du2184 v0
  = let v1 = coe du2168 (coe v0) in
    let v2 = coe du1782 (coe v1) in
    let v3 = coe du1636 (coe v2) in
    let v4 = coe du562 (coe v3) in coe du128 (coe du482 (coe v4))
name2186 = "Algebra.Bundles.Ring._.monoid"
d2186 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2028 -> T422
d2186 v0 v1 v2 = du2186 v2
du2186 :: T2028 -> T422
du2186 v0
  = let v1 = coe du2168 (coe v0) in
    let v2 = coe du1782 (coe v1) in coe du562 (coe du1636 (coe v2))
name2188 = "Algebra.Bundles.Ring._.rawMagma"
d2188 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2028 -> T8
d2188 v0 v1 v2 = du2188 v2
du2188 :: T2028 -> T8
du2188 v0
  = let v1 = coe du2168 (coe v0) in
    let v2 = coe du1782 (coe v1) in
    let v3 = coe du1636 (coe v2) in
    let v4 = coe du562 (coe v3) in
    let v5 = coe du482 (coe v4) in coe du74 (coe du128 (coe v5))
name2190 = "Algebra.Bundles.Ring._.rawMonoid"
d2190 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2028 -> T394
d2190 v0 v1 v2 = du2190 v2
du2190 :: T2028 -> T394
du2190 v0
  = let v1 = coe du2168 (coe v0) in
    let v2 = coe du1782 (coe v1) in
    let v3 = coe du1636 (coe v2) in coe du484 (coe du562 (coe v3))
name2192 = "Algebra.Bundles.Ring._.semigroup"
d2192 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2028 -> T80
d2192 v0 v1 v2 = du2192 v2
du2192 :: T2028 -> T80
du2192 v0
  = let v1 = coe du2168 (coe v0) in
    let v2 = coe du1782 (coe v1) in
    let v3 = coe du1636 (coe v2) in coe du482 (coe du562 (coe v3))
name2194 = "Algebra.Bundles.Ring._.nearSemiring"
d2194 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2028 -> T1140
d2194 v0 v1 v2 = du2194 v2
du2194 :: T2028 -> T1140
du2194 v0
  = let v1 = coe du2168 (coe v0) in coe du1344 (coe du1808 (coe v1))
name2196 = "Algebra.Bundles.Ring._.semiringWithoutAnnihilatingZero"
d2196 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2028 -> T1534
d2196 v0 v1 v2 = du2196 v2
du2196 :: T2028 -> T1534
du2196 v0 = coe du1782 (coe du2168 (coe v0))
name2198 = "Algebra.Bundles.Ring._.semiringWithoutOne"
d2198 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2028 -> T1246
d2198 v0 v1 v2 = du2198 v2
du2198 :: T2028 -> T1246
du2198 v0 = coe du1808 (coe du2168 (coe v0))
name2202 = "Algebra.Bundles.Ring._.group"
d2202 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2028 -> T778
d2202 v0 v1 v2 = du2202 v2
du2202 :: T2028 -> T778
du2202 v0 = coe du964 (coe du2166 (coe v0))
name2204 = "Algebra.Bundles.Ring.rawRing"
d2204 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2028 -> T1986
d2204 v0 v1 v2 = du2204 v2
du2204 :: T2028 -> T1986
du2204 v0
  = coe
      C22461 (d2054 (coe v0)) (d2056 (coe v0)) (d2058 (coe v0))
      (d2060 (coe v0)) (d2062 (coe v0))
name2210 = "Algebra.Bundles.CommutativeRing"
d2210 a0 a1 = ()
data T2210
  = C25105 (AgdaAny -> AgdaAny -> AgdaAny)
           (AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny) AgdaAny
           AgdaAny MAlonzo.Code.Algebra.Structures.T1528
name2232 = "Algebra.Bundles.CommutativeRing.Carrier"
d2232 :: T2210 -> ()
d2232 = erased
name2234 = "Algebra.Bundles.CommutativeRing._≈_"
d2234 :: T2210 -> AgdaAny -> AgdaAny -> ()
d2234 = erased
name2236 = "Algebra.Bundles.CommutativeRing._+_"
d2236 :: T2210 -> AgdaAny -> AgdaAny -> AgdaAny
d2236 v0
  = case coe v0 of
      C25105 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name2238 = "Algebra.Bundles.CommutativeRing._*_"
d2238 :: T2210 -> AgdaAny -> AgdaAny -> AgdaAny
d2238 v0
  = case coe v0 of
      C25105 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name2240 = "Algebra.Bundles.CommutativeRing.-_"
d2240 :: T2210 -> AgdaAny -> AgdaAny
d2240 v0
  = case coe v0 of
      C25105 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name2242 = "Algebra.Bundles.CommutativeRing.0#"
d2242 :: T2210 -> AgdaAny
d2242 v0
  = case coe v0 of
      C25105 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name2244 = "Algebra.Bundles.CommutativeRing.1#"
d2244 :: T2210 -> AgdaAny
d2244 v0
  = case coe v0 of
      C25105 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
name2246 = "Algebra.Bundles.CommutativeRing.isCommutativeRing"
d2246 :: T2210 -> MAlonzo.Code.Algebra.Structures.T1528
d2246 v0
  = case coe v0 of
      C25105 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
name2250 = "Algebra.Bundles.CommutativeRing._._-_"
d2250 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2210 -> AgdaAny -> AgdaAny -> AgdaAny
d2250 v0 v1 v2 = du2250 v2
du2250 :: T2210 -> AgdaAny -> AgdaAny -> AgdaAny
du2250 v0
  = let v1 = d2236 (coe v0) in
    let v2 = d2240 (coe v0) in coe (\ v3 v4 -> coe v1 v3 (coe v2 v4))
name2252 = "Algebra.Bundles.CommutativeRing._.assoc"
d2252 :: T2210 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2252 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d1416
            (coe MAlonzo.Code.Algebra.Structures.d1544 (coe d2246 (coe v0)))))
name2254 = "Algebra.Bundles.CommutativeRing._.*-comm"
d2254 :: T2210 -> AgdaAny -> AgdaAny -> AgdaAny
d2254 v0
  = coe MAlonzo.Code.Algebra.Structures.d1546 (coe d2246 (coe v0))
name2256 = "Algebra.Bundles.CommutativeRing._.∙-cong"
d2256 ::
  T2210 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2256 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d1416
               (coe MAlonzo.Code.Algebra.Structures.d1544 (coe d2246 (coe v0))))))
name2258 = "Algebra.Bundles.CommutativeRing._.∙-congʳ"
d2258 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2210 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2258 v0 v1 v2 = du2258 v2
du2258 ::
  T2210 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2258 v0
  = let v1 = d2246 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1544 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1416 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v4))
name2260 = "Algebra.Bundles.CommutativeRing._.∙-congˡ"
d2260 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2210 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2260 v0 v1 v2 = du2260 v2
du2260 ::
  T2210 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2260 v0
  = let v1 = d2246 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1544 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1416 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v4))
name2262 = "Algebra.Bundles.CommutativeRing._.identity"
d2262 :: T2210 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d2262 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d326
      (coe
         MAlonzo.Code.Algebra.Structures.d1416
         (coe MAlonzo.Code.Algebra.Structures.d1544 (coe d2246 (coe v0))))
name2264 = "Algebra.Bundles.CommutativeRing._.identityʳ"
d2264 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2210 -> AgdaAny -> AgdaAny
d2264 v0 v1 v2 = du2264 v2
du2264 :: T2210 -> AgdaAny -> AgdaAny
du2264 v0
  = let v1 = d2246 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1544 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1416 (coe v2) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v3))
name2266 = "Algebra.Bundles.CommutativeRing._.identityˡ"
d2266 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2210 -> AgdaAny -> AgdaAny
d2266 v0 v1 v2 = du2266 v2
du2266 :: T2210 -> AgdaAny -> AgdaAny
du2266 v0
  = let v1 = d2246 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1544 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1416 (coe v2) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v3))
name2268
  = "Algebra.Bundles.CommutativeRing._.*-isCommutativeMonoid"
d2268 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2210 -> MAlonzo.Code.Algebra.Structures.T362
d2268 v0 v1 v2 = du2268 v2
du2268 :: T2210 -> MAlonzo.Code.Algebra.Structures.T362
du2268 v0
  = coe MAlonzo.Code.Algebra.Structures.du1648 (coe d2246 (coe v0))
name2270 = "Algebra.Bundles.CommutativeRing._.isMagma"
d2270 :: T2210 -> MAlonzo.Code.Algebra.Structures.T80
d2270 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d1416
            (coe MAlonzo.Code.Algebra.Structures.d1544 (coe d2246 (coe v0)))))
name2272 = "Algebra.Bundles.CommutativeRing._.*-isMonoid"
d2272 :: T2210 -> MAlonzo.Code.Algebra.Structures.T314
d2272 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1416
      (coe MAlonzo.Code.Algebra.Structures.d1544 (coe d2246 (coe v0)))
name2274 = "Algebra.Bundles.CommutativeRing._.isSemigroup"
d2274 :: T2210 -> MAlonzo.Code.Algebra.Structures.T116
d2274 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d324
      (coe
         MAlonzo.Code.Algebra.Structures.d1416
         (coe MAlonzo.Code.Algebra.Structures.d1544 (coe d2246 (coe v0))))
name2276 = "Algebra.Bundles.CommutativeRing._.assoc"
d2276 :: T2210 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2276 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d542
            (coe
               MAlonzo.Code.Algebra.Structures.d622
               (coe
                  MAlonzo.Code.Algebra.Structures.d1414
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1544 (coe d2246 (coe v0)))))))
name2278 = "Algebra.Bundles.CommutativeRing._.comm"
d2278 :: T2210 -> AgdaAny -> AgdaAny -> AgdaAny
d2278 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d624
      (coe
         MAlonzo.Code.Algebra.Structures.d1414
         (coe MAlonzo.Code.Algebra.Structures.d1544 (coe d2246 (coe v0))))
name2280 = "Algebra.Bundles.CommutativeRing._.∙-cong"
d2280 ::
  T2210 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2280 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d542
               (coe
                  MAlonzo.Code.Algebra.Structures.d622
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1414
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1544 (coe d2246 (coe v0))))))))
name2282 = "Algebra.Bundles.CommutativeRing._.∙-congʳ"
d2282 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2210 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2282 v0 v1 v2 = du2282 v2
du2282 ::
  T2210 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2282 v0
  = let v1 = d2246 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1544 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1414 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d622 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d542 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d324 (coe v5) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v6))
name2284 = "Algebra.Bundles.CommutativeRing._.∙-congˡ"
d2284 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2210 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2284 v0 v1 v2 = du2284 v2
du2284 ::
  T2210 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2284 v0
  = let v1 = d2246 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1544 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1414 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d622 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d542 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d324 (coe v5) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v6))
name2286 = "Algebra.Bundles.CommutativeRing._.identity"
d2286 :: T2210 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d2286 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d326
      (coe
         MAlonzo.Code.Algebra.Structures.d542
         (coe
            MAlonzo.Code.Algebra.Structures.d622
            (coe
               MAlonzo.Code.Algebra.Structures.d1414
               (coe MAlonzo.Code.Algebra.Structures.d1544 (coe d2246 (coe v0))))))
name2288 = "Algebra.Bundles.CommutativeRing._.identityʳ"
d2288 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2210 -> AgdaAny -> AgdaAny
d2288 v0 v1 v2 = du2288 v2
du2288 :: T2210 -> AgdaAny -> AgdaAny
du2288 v0
  = let v1 = d2246 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1544 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1414 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d622 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d542 (coe v4) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v5))
name2290 = "Algebra.Bundles.CommutativeRing._.identityˡ"
d2290 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2210 -> AgdaAny -> AgdaAny
d2290 v0 v1 v2 = du2290 v2
du2290 :: T2210 -> AgdaAny -> AgdaAny
du2290 v0
  = let v1 = d2246 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1544 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1414 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d622 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d542 (coe v4) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v5))
name2292 = "Algebra.Bundles.CommutativeRing._.+-isAbelianGroup"
d2292 :: T2210 -> MAlonzo.Code.Algebra.Structures.T610
d2292 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1414
      (coe MAlonzo.Code.Algebra.Structures.d1544 (coe d2246 (coe v0)))
name2294 = "Algebra.Bundles.CommutativeRing._.isCommutativeMonoid"
d2294 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2210 -> MAlonzo.Code.Algebra.Structures.T362
d2294 v0 v1 v2 = du2294 v2
du2294 :: T2210 -> MAlonzo.Code.Algebra.Structures.T362
du2294 v0
  = let v1 = d2246 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1544 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du676
      (coe MAlonzo.Code.Algebra.Structures.d1414 (coe v2))
name2296
  = "Algebra.Bundles.CommutativeRing._.isCommutativeSemigroup"
d2296 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2210 -> MAlonzo.Code.Algebra.Structures.T192
d2296 v0 v1 v2 = du2296 v2
du2296 :: T2210 -> MAlonzo.Code.Algebra.Structures.T192
du2296 v0
  = let v1 = d2246 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1544 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1414 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du410
      (coe MAlonzo.Code.Algebra.Structures.du676 (coe v3))
name2298 = "Algebra.Bundles.CommutativeRing._.isGroup"
d2298 :: T2210 -> MAlonzo.Code.Algebra.Structures.T528
d2298 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d622
      (coe
         MAlonzo.Code.Algebra.Structures.d1414
         (coe MAlonzo.Code.Algebra.Structures.d1544 (coe d2246 (coe v0))))
name2300 = "Algebra.Bundles.CommutativeRing._.isMagma"
d2300 :: T2210 -> MAlonzo.Code.Algebra.Structures.T80
d2300 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d542
            (coe
               MAlonzo.Code.Algebra.Structures.d622
               (coe
                  MAlonzo.Code.Algebra.Structures.d1414
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1544 (coe d2246 (coe v0)))))))
name2302 = "Algebra.Bundles.CommutativeRing._.isMonoid"
d2302 :: T2210 -> MAlonzo.Code.Algebra.Structures.T314
d2302 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d542
      (coe
         MAlonzo.Code.Algebra.Structures.d622
         (coe
            MAlonzo.Code.Algebra.Structures.d1414
            (coe MAlonzo.Code.Algebra.Structures.d1544 (coe d2246 (coe v0)))))
name2304 = "Algebra.Bundles.CommutativeRing._.isSemigroup"
d2304 :: T2210 -> MAlonzo.Code.Algebra.Structures.T116
d2304 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d324
      (coe
         MAlonzo.Code.Algebra.Structures.d542
         (coe
            MAlonzo.Code.Algebra.Structures.d622
            (coe
               MAlonzo.Code.Algebra.Structures.d1414
               (coe MAlonzo.Code.Algebra.Structures.d1544 (coe d2246 (coe v0))))))
name2306 = "Algebra.Bundles.CommutativeRing._.⁻¹-cong"
d2306 :: T2210 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2306 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d546
      (coe
         MAlonzo.Code.Algebra.Structures.d622
         (coe
            MAlonzo.Code.Algebra.Structures.d1414
            (coe MAlonzo.Code.Algebra.Structures.d1544 (coe d2246 (coe v0)))))
name2308 = "Algebra.Bundles.CommutativeRing._.inverse"
d2308 :: T2210 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d2308 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d544
      (coe
         MAlonzo.Code.Algebra.Structures.d622
         (coe
            MAlonzo.Code.Algebra.Structures.d1414
            (coe MAlonzo.Code.Algebra.Structures.d1544 (coe d2246 (coe v0)))))
name2310 = "Algebra.Bundles.CommutativeRing._.inverseʳ"
d2310 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2210 -> AgdaAny -> AgdaAny
d2310 v0 v1 v2 = du2310 v2
du2310 :: T2210 -> AgdaAny -> AgdaAny
du2310 v0
  = let v1 = d2246 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1544 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1414 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d622 (coe v3) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d544 (coe v4))
name2312 = "Algebra.Bundles.CommutativeRing._.inverseˡ"
d2312 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2210 -> AgdaAny -> AgdaAny
d2312 v0 v1 v2 = du2312 v2
du2312 :: T2210 -> AgdaAny -> AgdaAny
du2312 v0
  = let v1 = d2246 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1544 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1414 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d622 (coe v3) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d544 (coe v4))
name2314 = "Algebra.Bundles.CommutativeRing._.distrib"
d2314 :: T2210 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d2314 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1418
      (coe MAlonzo.Code.Algebra.Structures.d1544 (coe d2246 (coe v0)))
name2316 = "Algebra.Bundles.CommutativeRing._.distribʳ"
d2316 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2210 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2316 v0 v1 v2 = du2316 v2
du2316 :: T2210 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2316 v0
  = let v1 = d2246 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1544 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Structures.du1506 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1190 (coe v3) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d1102 (coe v4))
name2318 = "Algebra.Bundles.CommutativeRing._.distribˡ"
d2318 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2210 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2318 v0 v1 v2 = du2318 v2
du2318 :: T2210 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2318 v0
  = let v1 = d2246 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1544 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Structures.du1506 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1190 (coe v3) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d1102 (coe v4))
name2320
  = "Algebra.Bundles.CommutativeRing._.isCommutativeSemiring"
d2320 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2210 -> MAlonzo.Code.Algebra.Structures.T1280
d2320 v0 v1 v2 = du2320 v2
du2320 :: T2210 -> MAlonzo.Code.Algebra.Structures.T1280
du2320 v0
  = coe MAlonzo.Code.Algebra.Structures.du1650 (coe d2246 (coe v0))
name2322
  = "Algebra.Bundles.CommutativeRing._.isCommutativeSemiringWithoutOne"
d2322 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2210 -> MAlonzo.Code.Algebra.Structures.T990
d2322 v0 v1 v2 = du2322 v2
du2322 :: T2210 -> MAlonzo.Code.Algebra.Structures.T990
du2322 v0
  = let v1 = d2246 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du1378
      (coe MAlonzo.Code.Algebra.Structures.du1650 (coe v1))
name2324 = "Algebra.Bundles.CommutativeRing._.isEquivalence"
d2324 :: T2210 -> MAlonzo.Code.Relation.Binary.Structures.T26
d2324 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d88
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d542
               (coe
                  MAlonzo.Code.Algebra.Structures.d622
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1414
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1544 (coe d2246 (coe v0))))))))
name2326 = "Algebra.Bundles.CommutativeRing._.isNearSemiring"
d2326 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2210 -> MAlonzo.Code.Algebra.Structures.T822
d2326 v0 v1 v2 = du2326 v2
du2326 :: T2210 -> MAlonzo.Code.Algebra.Structures.T822
du2326 v0
  = let v1 = d2246 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1544 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Structures.du1506 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du934
      (coe MAlonzo.Code.Algebra.Structures.du1262 (coe v3))
name2328 = "Algebra.Bundles.CommutativeRing._.isPartialEquivalence"
d2328 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2210 -> MAlonzo.Code.Relation.Binary.Structures.T16
d2328 v0 v1 v2 = du2328 v2
du2328 :: T2210 -> MAlonzo.Code.Relation.Binary.Structures.T16
du2328 v0
  = let v1 = d2246 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1544 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1414 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d622 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d542 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d324 (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d124 (coe v6) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Algebra.Structures.d88 (coe v7))
name2330 = "Algebra.Bundles.CommutativeRing._.isRing"
d2330 :: T2210 -> MAlonzo.Code.Algebra.Structures.T1394
d2330 v0
  = coe MAlonzo.Code.Algebra.Structures.d1544 (coe d2246 (coe v0))
name2332 = "Algebra.Bundles.CommutativeRing._.isSemiring"
d2332 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2210 -> MAlonzo.Code.Algebra.Structures.T1176
d2332 v0 v1 v2 = du2332 v2
du2332 :: T2210 -> MAlonzo.Code.Algebra.Structures.T1176
du2332 v0
  = let v1 = d2246 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du1506
      (coe MAlonzo.Code.Algebra.Structures.d1544 (coe v1))
name2334
  = "Algebra.Bundles.CommutativeRing._.isSemiringWithoutAnnihilatingZero"
d2334 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2210 -> MAlonzo.Code.Algebra.Structures.T1082
d2334 v0 v1 v2 = du2334 v2
du2334 :: T2210 -> MAlonzo.Code.Algebra.Structures.T1082
du2334 v0
  = let v1 = d2246 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du1504
      (coe MAlonzo.Code.Algebra.Structures.d1544 (coe v1))
name2336 = "Algebra.Bundles.CommutativeRing._.isSemiringWithoutOne"
d2336 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2210 -> MAlonzo.Code.Algebra.Structures.T898
d2336 v0 v1 v2 = du2336 v2
du2336 :: T2210 -> MAlonzo.Code.Algebra.Structures.T898
du2336 v0
  = let v1 = d2246 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1544 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du1262
      (coe MAlonzo.Code.Algebra.Structures.du1506 (coe v2))
name2338 = "Algebra.Bundles.CommutativeRing._.refl"
d2338 :: T2210 -> AgdaAny -> AgdaAny
d2338 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d542
                  (coe
                     MAlonzo.Code.Algebra.Structures.d622
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1414
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1544 (coe d2246 (coe v0)))))))))
name2340 = "Algebra.Bundles.CommutativeRing._.reflexive"
d2340 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2210 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d2340 v0 v1 v2 = du2340 v2
du2340 ::
  T2210 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du2340 v0
  = let v1 = d2246 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1544 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1414 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d622 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d542 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d324 (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d124 (coe v6) in
    \ v8 v9 v10 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Algebra.Structures.d88 (coe v7)) v8
name2342 = "Algebra.Bundles.CommutativeRing._.setoid"
d2342 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2210 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d2342 v0 v1 v2 = du2342 v2
du2342 :: T2210 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du2342 v0
  = let v1 = d2246 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1544 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1414 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d622 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d542 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d324 (coe v5) in
    coe
      MAlonzo.Code.Algebra.Structures.du104
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v6))
name2344 = "Algebra.Bundles.CommutativeRing._.sym"
d2344 :: T2210 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2344 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d542
                  (coe
                     MAlonzo.Code.Algebra.Structures.d622
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1414
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1544 (coe d2246 (coe v0)))))))))
name2346 = "Algebra.Bundles.CommutativeRing._.trans"
d2346 ::
  T2210 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2346 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d542
                  (coe
                     MAlonzo.Code.Algebra.Structures.d622
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1414
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1544 (coe d2246 (coe v0)))))))))
name2348 = "Algebra.Bundles.CommutativeRing._.uniqueʳ-⁻¹"
d2348 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2210 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2348 v0 v1 v2 = du2348 v2
du2348 :: T2210 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2348 v0
  = let v1 = d2236 (coe v0) in
    let v2 = d2240 (coe v0) in
    let v3 = d2242 (coe v0) in
    let v4 = d2246 (coe v0) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1544 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d1414 (coe v5) in
    coe
      MAlonzo.Code.Algebra.Structures.du602 (coe v1) (coe v3) (coe v2)
      (coe MAlonzo.Code.Algebra.Structures.d622 (coe v6))
name2350 = "Algebra.Bundles.CommutativeRing._.uniqueˡ-⁻¹"
d2350 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2210 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2350 v0 v1 v2 = du2350 v2
du2350 :: T2210 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2350 v0
  = let v1 = d2236 (coe v0) in
    let v2 = d2240 (coe v0) in
    let v3 = d2242 (coe v0) in
    let v4 = d2246 (coe v0) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1544 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d1414 (coe v5) in
    coe
      MAlonzo.Code.Algebra.Structures.du596 (coe v1) (coe v3) (coe v2)
      (coe MAlonzo.Code.Algebra.Structures.d622 (coe v6))
name2352 = "Algebra.Bundles.CommutativeRing._.zero"
d2352 :: T2210 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d2352 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1420
      (coe MAlonzo.Code.Algebra.Structures.d1544 (coe d2246 (coe v0)))
name2354 = "Algebra.Bundles.CommutativeRing._.zeroʳ"
d2354 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2210 -> AgdaAny -> AgdaAny
d2354 v0 v1 v2 = du2354 v2
du2354 :: T2210 -> AgdaAny -> AgdaAny
du2354 v0
  = let v1 = d2246 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1544 (coe v1) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d1420 (coe v2))
name2356 = "Algebra.Bundles.CommutativeRing._.zeroˡ"
d2356 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2210 -> AgdaAny -> AgdaAny
d2356 v0 v1 v2 = du2356 v2
du2356 :: T2210 -> AgdaAny -> AgdaAny
du2356 v0
  = let v1 = d2246 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1544 (coe v1) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d1420 (coe v2))
name2358 = "Algebra.Bundles.CommutativeRing.ring"
d2358 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2210 -> T2028
d2358 v0 v1 v2 = du2358 v2
du2358 :: T2210 -> T2028
du2358 v0
  = coe
      C23009 (d2236 (coe v0)) (d2238 (coe v0)) (d2240 (coe v0))
      (d2242 (coe v0)) (d2244 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d1544 (coe d2246 (coe v0)))
name2360 = "Algebra.Bundles.CommutativeRing.commutativeSemiring"
d2360 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2210 -> T1818
d2360 v0 v1 v2 = du2360 v2
du2360 :: T2210 -> T1818
du2360 v0
  = coe
      C20443 (d2236 (coe v0)) (d2238 (coe v0)) (d2242 (coe v0))
      (d2244 (coe v0))
      (coe MAlonzo.Code.Algebra.Structures.du1650 (coe d2246 (coe v0)))
name2364 = "Algebra.Bundles.CommutativeRing._.+-abelianGroup"
d2364 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2210 -> T876
d2364 v0 v1 v2 = du2364 v2
du2364 :: T2210 -> T876
du2364 v0 = coe du2166 (coe du2358 (coe v0))
name2366 = "Algebra.Bundles.CommutativeRing._.group"
d2366 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2210 -> T778
d2366 v0 v1 v2 = du2366 v2
du2366 :: T2210 -> T778
du2366 v0
  = let v1 = coe du2358 (coe v0) in coe du964 (coe du2166 (coe v1))
name2368 = "Algebra.Bundles.CommutativeRing._.rawRing"
d2368 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2210 -> T1986
d2368 v0 v1 v2 = du2368 v2
du2368 :: T2210 -> T1986
du2368 v0 = coe du2204 (coe du2358 (coe v0))
name2372 = "Algebra.Bundles.CommutativeRing._.*-commutativeMonoid"
d2372 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2210 -> T496
d2372 v0 v1 v2 = du2372 v2
du2372 :: T2210 -> T496
du2372 v0 = coe du1978 (coe du2360 (coe v0))
name2374 = "Algebra.Bundles.CommutativeRing._.magma"
d2374 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2210 -> T30
d2374 v0 v1 v2 = du2374 v2
du2374 :: T2210 -> T30
du2374 v0
  = let v1 = coe du2360 (coe v0) in
    let v2 = coe du1942 (coe v1) in
    let v3 = coe du1782 (coe v2) in
    let v4 = coe du1650 (coe v3) in coe du128 (coe du482 (coe v4))
name2376 = "Algebra.Bundles.CommutativeRing._.*-monoid"
d2376 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2210 -> T422
d2376 v0 v1 v2 = du2376 v2
du2376 :: T2210 -> T422
du2376 v0
  = let v1 = coe du2360 (coe v0) in
    let v2 = coe du1942 (coe v1) in coe du1650 (coe du1782 (coe v2))
name2378 = "Algebra.Bundles.CommutativeRing._.rawMagma"
d2378 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2210 -> T8
d2378 v0 v1 v2 = du2378 v2
du2378 :: T2210 -> T8
du2378 v0
  = let v1 = coe du2360 (coe v0) in
    let v2 = coe du1942 (coe v1) in
    let v3 = coe du1782 (coe v2) in
    let v4 = coe du1650 (coe v3) in
    let v5 = coe du482 (coe v4) in coe du74 (coe du128 (coe v5))
name2380 = "Algebra.Bundles.CommutativeRing._.rawMonoid"
d2380 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2210 -> T394
d2380 v0 v1 v2 = du2380 v2
du2380 :: T2210 -> T394
du2380 v0
  = let v1 = coe du2360 (coe v0) in
    let v2 = coe du1942 (coe v1) in
    let v3 = coe du1782 (coe v2) in coe du484 (coe du1650 (coe v3))
name2382 = "Algebra.Bundles.CommutativeRing._.semigroup"
d2382 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2210 -> T80
d2382 v0 v1 v2 = du2382 v2
du2382 :: T2210 -> T80
du2382 v0
  = let v1 = coe du2360 (coe v0) in
    let v2 = coe du1942 (coe v1) in
    let v3 = coe du1782 (coe v2) in coe du482 (coe du1650 (coe v3))
name2384 = "Algebra.Bundles.CommutativeRing._.+-commutativeMonoid"
d2384 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2210 -> T496
d2384 v0 v1 v2 = du2384 v2
du2384 :: T2210 -> T496
du2384 v0
  = let v1 = coe du2360 (coe v0) in
    let v2 = coe du1942 (coe v1) in coe du1636 (coe du1782 (coe v2))
name2386 = "Algebra.Bundles.CommutativeRing._.magma"
d2386 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2210 -> T30
d2386 v0 v1 v2 = du2386 v2
du2386 :: T2210 -> T30
du2386 v0
  = let v1 = coe du2360 (coe v0) in
    let v2 = coe du1942 (coe v1) in
    let v3 = coe du1782 (coe v2) in
    let v4 = coe du1636 (coe v3) in
    let v5 = coe du562 (coe v4) in coe du128 (coe du482 (coe v5))
name2388 = "Algebra.Bundles.CommutativeRing._.monoid"
d2388 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2210 -> T422
d2388 v0 v1 v2 = du2388 v2
du2388 :: T2210 -> T422
du2388 v0
  = let v1 = coe du2360 (coe v0) in
    let v2 = coe du1942 (coe v1) in
    let v3 = coe du1782 (coe v2) in coe du562 (coe du1636 (coe v3))
name2390 = "Algebra.Bundles.CommutativeRing._.rawMagma"
d2390 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2210 -> T8
d2390 v0 v1 v2 = du2390 v2
du2390 :: T2210 -> T8
du2390 v0
  = let v1 = coe du2360 (coe v0) in
    let v2 = coe du1942 (coe v1) in
    let v3 = coe du1782 (coe v2) in
    let v4 = coe du1636 (coe v3) in
    let v5 = coe du562 (coe v4) in
    let v6 = coe du482 (coe v5) in coe du74 (coe du128 (coe v6))
name2392 = "Algebra.Bundles.CommutativeRing._.rawMonoid"
d2392 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2210 -> T394
d2392 v0 v1 v2 = du2392 v2
du2392 :: T2210 -> T394
du2392 v0
  = let v1 = coe du2360 (coe v0) in
    let v2 = coe du1942 (coe v1) in
    let v3 = coe du1782 (coe v2) in
    let v4 = coe du1636 (coe v3) in coe du484 (coe du562 (coe v4))
name2394 = "Algebra.Bundles.CommutativeRing._.semigroup"
d2394 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2210 -> T80
d2394 v0 v1 v2 = du2394 v2
du2394 :: T2210 -> T80
du2394 v0
  = let v1 = coe du2360 (coe v0) in
    let v2 = coe du1942 (coe v1) in
    let v3 = coe du1782 (coe v2) in
    let v4 = coe du1636 (coe v3) in coe du482 (coe du562 (coe v4))
name2396
  = "Algebra.Bundles.CommutativeRing._.commutativeSemiringWithoutOne"
d2396 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2210 -> T1370
d2396 v0 v1 v2 = du2396 v2
du2396 :: T2210 -> T1370
du2396 v0 = coe du1980 (coe du2360 (coe v0))
name2398 = "Algebra.Bundles.CommutativeRing._.nearSemiring"
d2398 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2210 -> T1140
d2398 v0 v1 v2 = du2398 v2
du2398 :: T2210 -> T1140
du2398 v0
  = let v1 = coe du2360 (coe v0) in
    let v2 = coe du1942 (coe v1) in coe du1344 (coe du1808 (coe v2))
name2400 = "Algebra.Bundles.CommutativeRing._.semiring"
d2400 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2210 -> T1666
d2400 v0 v1 v2 = du2400 v2
du2400 :: T2210 -> T1666
du2400 v0 = coe du1942 (coe du2360 (coe v0))
name2402
  = "Algebra.Bundles.CommutativeRing._.semiringWithoutAnnihilatingZero"
d2402 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2210 -> T1534
d2402 v0 v1 v2 = du2402 v2
du2402 :: T2210 -> T1534
du2402 v0
  = let v1 = coe du2360 (coe v0) in coe du1782 (coe du1942 (coe v1))
name2404 = "Algebra.Bundles.CommutativeRing._.semiringWithoutOne"
d2404 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2210 -> T1246
d2404 v0 v1 v2 = du2404 v2
du2404 :: T2210 -> T1246
du2404 v0
  = let v1 = coe du2360 (coe v0) in coe du1808 (coe du1942 (coe v1))
name2410 = "Algebra.Bundles.BooleanAlgebra"
d2410 a0 a1 = ()
data T2410
  = C27217 (AgdaAny -> AgdaAny -> AgdaAny)
           (AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny) AgdaAny
           AgdaAny MAlonzo.Code.Algebra.Structures.T1666
name2432 = "Algebra.Bundles.BooleanAlgebra.Carrier"
d2432 :: T2410 -> ()
d2432 = erased
name2434 = "Algebra.Bundles.BooleanAlgebra._≈_"
d2434 :: T2410 -> AgdaAny -> AgdaAny -> ()
d2434 = erased
name2436 = "Algebra.Bundles.BooleanAlgebra._∨_"
d2436 :: T2410 -> AgdaAny -> AgdaAny -> AgdaAny
d2436 v0
  = case coe v0 of
      C27217 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name2438 = "Algebra.Bundles.BooleanAlgebra._∧_"
d2438 :: T2410 -> AgdaAny -> AgdaAny -> AgdaAny
d2438 v0
  = case coe v0 of
      C27217 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name2440 = "Algebra.Bundles.BooleanAlgebra.¬_"
d2440 :: T2410 -> AgdaAny -> AgdaAny
d2440 v0
  = case coe v0 of
      C27217 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name2442 = "Algebra.Bundles.BooleanAlgebra.⊤"
d2442 :: T2410 -> AgdaAny
d2442 v0
  = case coe v0 of
      C27217 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name2444 = "Algebra.Bundles.BooleanAlgebra.⊥"
d2444 :: T2410 -> AgdaAny
d2444 v0
  = case coe v0 of
      C27217 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
name2446 = "Algebra.Bundles.BooleanAlgebra.isBooleanAlgebra"
d2446 :: T2410 -> MAlonzo.Code.Algebra.Structures.T1666
d2446 v0
  = case coe v0 of
      C27217 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
name2450 = "Algebra.Bundles.BooleanAlgebra._.absorptive"
d2450 :: T2410 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d2450 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d722
      (coe
         MAlonzo.Code.Algebra.Structures.d770
         (coe MAlonzo.Code.Algebra.Structures.d1686 (coe d2446 (coe v0))))
name2452 = "Algebra.Bundles.BooleanAlgebra._.isDistributiveLattice"
d2452 :: T2410 -> MAlonzo.Code.Algebra.Structures.T760
d2452 v0
  = coe MAlonzo.Code.Algebra.Structures.d1686 (coe d2446 (coe v0))
name2454 = "Algebra.Bundles.BooleanAlgebra._.isEquivalence"
d2454 :: T2410 -> MAlonzo.Code.Relation.Binary.Structures.T26
d2454 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d708
      (coe
         MAlonzo.Code.Algebra.Structures.d770
         (coe MAlonzo.Code.Algebra.Structures.d1686 (coe d2446 (coe v0))))
name2456 = "Algebra.Bundles.BooleanAlgebra._.isLattice"
d2456 :: T2410 -> MAlonzo.Code.Algebra.Structures.T686
d2456 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d770
      (coe MAlonzo.Code.Algebra.Structures.d1686 (coe d2446 (coe v0)))
name2458 = "Algebra.Bundles.BooleanAlgebra._.isPartialEquivalence"
d2458 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2410 -> MAlonzo.Code.Relation.Binary.Structures.T16
d2458 v0 v1 v2 = du2458 v2
du2458 :: T2410 -> MAlonzo.Code.Relation.Binary.Structures.T16
du2458 v0
  = let v1 = d2446 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1686 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d770 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Algebra.Structures.d708 (coe v3))
name2460 = "Algebra.Bundles.BooleanAlgebra._.refl"
d2460 :: T2410 -> AgdaAny -> AgdaAny
d2460 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Algebra.Structures.d708
         (coe
            MAlonzo.Code.Algebra.Structures.d770
            (coe MAlonzo.Code.Algebra.Structures.d1686 (coe d2446 (coe v0)))))
name2462 = "Algebra.Bundles.BooleanAlgebra._.reflexive"
d2462 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2410 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d2462 v0 v1 v2 = du2462 v2
du2462 ::
  T2410 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du2462 v0
  = let v1 = d2446 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1686 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d770 (coe v2) in
    \ v4 v5 v6 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Algebra.Structures.d708 (coe v3)) v4
name2464 = "Algebra.Bundles.BooleanAlgebra._.sym"
d2464 :: T2410 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2464 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Algebra.Structures.d708
         (coe
            MAlonzo.Code.Algebra.Structures.d770
            (coe MAlonzo.Code.Algebra.Structures.d1686 (coe d2446 (coe v0)))))
name2466 = "Algebra.Bundles.BooleanAlgebra._.trans"
d2466 ::
  T2410 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2466 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Algebra.Structures.d708
         (coe
            MAlonzo.Code.Algebra.Structures.d770
            (coe MAlonzo.Code.Algebra.Structures.d1686 (coe d2446 (coe v0)))))
name2468 = "Algebra.Bundles.BooleanAlgebra._.¬-cong"
d2468 :: T2410 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2468 v0
  = coe MAlonzo.Code.Algebra.Structures.d1692 (coe d2446 (coe v0))
name2470 = "Algebra.Bundles.BooleanAlgebra._.∧-absorbs-∨"
d2470 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2410 -> AgdaAny -> AgdaAny -> AgdaAny
d2470 v0 v1 v2 = du2470 v2
du2470 :: T2410 -> AgdaAny -> AgdaAny -> AgdaAny
du2470 v0
  = let v1 = d2446 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1686 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d770 (coe v2) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d722 (coe v3))
name2472 = "Algebra.Bundles.BooleanAlgebra._.∧-assoc"
d2472 :: T2410 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2472 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d718
      (coe
         MAlonzo.Code.Algebra.Structures.d770
         (coe MAlonzo.Code.Algebra.Structures.d1686 (coe d2446 (coe v0))))
name2474 = "Algebra.Bundles.BooleanAlgebra._.∧-comm"
d2474 :: T2410 -> AgdaAny -> AgdaAny -> AgdaAny
d2474 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d716
      (coe
         MAlonzo.Code.Algebra.Structures.d770
         (coe MAlonzo.Code.Algebra.Structures.d1686 (coe d2446 (coe v0))))
name2476 = "Algebra.Bundles.BooleanAlgebra._.∧-complementʳ"
d2476 :: T2410 -> AgdaAny -> AgdaAny
d2476 v0
  = coe MAlonzo.Code.Algebra.Structures.d1690 (coe d2446 (coe v0))
name2478 = "Algebra.Bundles.BooleanAlgebra._.∧-cong"
d2478 ::
  T2410 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2478 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d720
      (coe
         MAlonzo.Code.Algebra.Structures.d770
         (coe MAlonzo.Code.Algebra.Structures.d1686 (coe d2446 (coe v0))))
name2480 = "Algebra.Bundles.BooleanAlgebra._.∧-congʳ"
d2480 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2410 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2480 v0 v1 v2 = du2480 v2
du2480 ::
  T2410 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2480 v0
  = let v1 = d2446 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1686 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du744
      (coe MAlonzo.Code.Algebra.Structures.d770 (coe v2))
name2482 = "Algebra.Bundles.BooleanAlgebra._.∧-congˡ"
d2482 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2410 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2482 v0 v1 v2 = du2482 v2
du2482 ::
  T2410 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2482 v0
  = let v1 = d2446 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1686 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du740
      (coe MAlonzo.Code.Algebra.Structures.d770 (coe v2))
name2484 = "Algebra.Bundles.BooleanAlgebra._.∨-absorbs-∧"
d2484 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2410 -> AgdaAny -> AgdaAny -> AgdaAny
d2484 v0 v1 v2 = du2484 v2
du2484 :: T2410 -> AgdaAny -> AgdaAny -> AgdaAny
du2484 v0
  = let v1 = d2446 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1686 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d770 (coe v2) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d722 (coe v3))
name2486 = "Algebra.Bundles.BooleanAlgebra._.∨-assoc"
d2486 :: T2410 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2486 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d712
      (coe
         MAlonzo.Code.Algebra.Structures.d770
         (coe MAlonzo.Code.Algebra.Structures.d1686 (coe d2446 (coe v0))))
name2488 = "Algebra.Bundles.BooleanAlgebra._.∨-comm"
d2488 :: T2410 -> AgdaAny -> AgdaAny -> AgdaAny
d2488 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d710
      (coe
         MAlonzo.Code.Algebra.Structures.d770
         (coe MAlonzo.Code.Algebra.Structures.d1686 (coe d2446 (coe v0))))
name2490 = "Algebra.Bundles.BooleanAlgebra._.∨-complementʳ"
d2490 :: T2410 -> AgdaAny -> AgdaAny
d2490 v0
  = coe MAlonzo.Code.Algebra.Structures.d1688 (coe d2446 (coe v0))
name2492 = "Algebra.Bundles.BooleanAlgebra._.∨-cong"
d2492 ::
  T2410 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2492 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d714
      (coe
         MAlonzo.Code.Algebra.Structures.d770
         (coe MAlonzo.Code.Algebra.Structures.d1686 (coe d2446 (coe v0))))
name2494 = "Algebra.Bundles.BooleanAlgebra._.∨-congʳ"
d2494 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2410 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2494 v0 v1 v2 = du2494 v2
du2494 ::
  T2410 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2494 v0
  = let v1 = d2446 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1686 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du752
      (coe MAlonzo.Code.Algebra.Structures.d770 (coe v2))
name2496 = "Algebra.Bundles.BooleanAlgebra._.∨-congˡ"
d2496 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2410 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2496 v0 v1 v2 = du2496 v2
du2496 ::
  T2410 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2496 v0
  = let v1 = d2446 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1686 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du748
      (coe MAlonzo.Code.Algebra.Structures.d770 (coe v2))
name2498 = "Algebra.Bundles.BooleanAlgebra._.∨-distribʳ-∧"
d2498 :: T2410 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2498 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d772
      (coe MAlonzo.Code.Algebra.Structures.d1686 (coe d2446 (coe v0)))
name2500 = "Algebra.Bundles.BooleanAlgebra._.∨-∧-distribʳ"
d2500 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2410 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2500 v0 v1 v2 = du2500 v2
du2500 :: T2410 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2500 v0
  = let v1 = d2446 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du814
      (coe MAlonzo.Code.Algebra.Structures.d1686 (coe v1))
name2502 = "Algebra.Bundles.BooleanAlgebra.distributiveLattice"
d2502 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2410 -> T1058
d2502 v0 v1 v2 = du2502 v2
du2502 :: T2410 -> T1058
du2502 v0
  = coe
      C11687 (d2436 (coe v0)) (d2438 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d1686 (coe d2446 (coe v0)))
name2506 = "Algebra.Bundles.BooleanAlgebra._.lattice"
d2506 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2410 -> T986
d2506 v0 v1 v2 = du2506 v2
du2506 :: T2410 -> T986
du2506 v0 = coe du1130 (coe du2502 (coe v0))
name2508 = "Algebra.Bundles.BooleanAlgebra._.setoid"
d2508 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2410 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d2508 v0 v1 v2 = du2508 v2
du2508 :: T2410 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du2508 v0
  = let v1 = coe du2502 (coe v0) in coe du1052 (coe du1130 (coe v1))
name2510 = "Algebra.Bundles.RawSemigroup"
d2510 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> ()
d2510 = erased
