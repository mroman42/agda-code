{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Algebra.Construct.NaturalChoice.Min where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Structures

name90 = "Algebra.Construct.NaturalChoice.Min._.Associative"
d90 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d90 = erased
name94 = "Algebra.Construct.NaturalChoice.Min._.Commutative"
d94 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d94 = erased
name98 = "Algebra.Construct.NaturalChoice.Min._.Congruent₂"
d98 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d98 = erased
name102 = "Algebra.Construct.NaturalChoice.Min._.Idempotent"
d102 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d102 = erased
name106 = "Algebra.Construct.NaturalChoice.Min._.Identity"
d106 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d106 = erased
name120 = "Algebra.Construct.NaturalChoice.Min._.LeftIdentity"
d120 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d120 = erased
name124 = "Algebra.Construct.NaturalChoice.Min._.LeftZero"
d124 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d124 = erased
name132 = "Algebra.Construct.NaturalChoice.Min._.RightIdentity"
d132 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d132 = erased
name136 = "Algebra.Construct.NaturalChoice.Min._.RightZero"
d136 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d136 = erased
name138 = "Algebra.Construct.NaturalChoice.Min._.Selective"
d138 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d138 = erased
name140 = "Algebra.Construct.NaturalChoice.Min._.Zero"
d140 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d140 = erased
name146 = "Algebra.Construct.NaturalChoice.Min._.IsBand"
d146 a0 a1 a2 a3 a4 = ()
name170 = "Algebra.Construct.NaturalChoice.Min._.IsMagma"
d170 a0 a1 a2 a3 a4 = ()
name172 = "Algebra.Construct.NaturalChoice.Min._.IsMonoid"
d172 a0 a1 a2 a3 a4 a5 = ()
name178 = "Algebra.Construct.NaturalChoice.Min._.IsSelectiveMagma"
d178 a0 a1 a2 a3 a4 = ()
name180 = "Algebra.Construct.NaturalChoice.Min._.IsSemigroup"
d180 a0 a1 a2 a3 a4 = ()
name182 = "Algebra.Construct.NaturalChoice.Min._.IsSemilattice"
d182 a0 a1 a2 a3 a4 = ()
name1408 = "Algebra.Construct.NaturalChoice.Min._⊓_"
d1408 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> AgdaAny -> AgdaAny
d1408 v0 v1 v2 v3 v4 v5 = du1408 v3 v4 v5
du1408 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> AgdaAny -> AgdaAny
du1408 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d350
              (MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)) v1 v2 in
    case coe v3 of
      MAlonzo.Code.Data.Sum.Base.C38 v4 -> coe v1
      MAlonzo.Code.Data.Sum.Base.C42 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name1430 = "Algebra.Construct.NaturalChoice.Min.⊓-sel"
d1430 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30
d1430 v0 v1 v2 v3 v4 v5 = du1430 v3 v4 v5
du1430 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30
du1430 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d350
              (MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)) v1 v2 in
    case coe v3 of
      MAlonzo.Code.Data.Sum.Base.C38 v4
        -> coe
             MAlonzo.Code.Data.Sum.Base.C38
             (let v5
                    = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v0) in
              let v6 = coe MAlonzo.Code.Relation.Binary.Bundles.du248 (coe v5) in
              coe
                MAlonzo.Code.Relation.Binary.Structures.d34
                (MAlonzo.Code.Relation.Binary.Structures.d80
                   (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v6)))
                v1)
      MAlonzo.Code.Data.Sum.Base.C42 v4
        -> coe
             MAlonzo.Code.Data.Sum.Base.C42
             (let v5
                    = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v0) in
              let v6 = coe MAlonzo.Code.Relation.Binary.Bundles.du248 (coe v5) in
              coe
                MAlonzo.Code.Relation.Binary.Structures.d34
                (MAlonzo.Code.Relation.Binary.Structures.d80
                   (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v6)))
                v2)
      _ -> MAlonzo.RTE.mazUnreachableError
name1452 = "Algebra.Construct.NaturalChoice.Min.⊓-idem"
d1452 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 -> AgdaAny -> AgdaAny
d1452 v0 v1 v2 v3 v4 = du1452 v3 v4
du1452 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 -> AgdaAny -> AgdaAny
du1452 v0 v1
  = let v2 = coe du1430 (coe v0) (coe v1) (coe v1) in
    case coe v2 of
      MAlonzo.Code.Data.Sum.Base.C38 v3 -> coe v3
      MAlonzo.Code.Data.Sum.Base.C42 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1468 = "Algebra.Construct.NaturalChoice.Min.⊓-cong"
d1468 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1468 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1468 v3 v4 v5 v6 v7 v8 v9
du1468 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1468 v0 v1 v2 v3 v4 v5 v6
  = let v7
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d350
              (MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)) v1 v3 in
    let v8
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d350
              (MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)) v2 v4 in
    case coe v7 of
      MAlonzo.Code.Data.Sum.Base.C38 v9
        -> case coe v8 of
             MAlonzo.Code.Data.Sum.Base.C38 v10 -> coe v5
             MAlonzo.Code.Data.Sum.Base.C42 v10
               -> coe
                    MAlonzo.Code.Relation.Binary.Structures.d128
                    (MAlonzo.Code.Relation.Binary.Structures.d348
                       (coe MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)))
                    v1 v4
                    (let v11 = MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0) in
                     let v12 = MAlonzo.Code.Relation.Binary.Structures.d348 (coe v11) in
                     coe
                       MAlonzo.Code.Relation.Binary.Structures.du106
                       (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v12))
                       (coe v1) (coe v3) (coe v4) (coe v6) (coe v9))
                    (let v11 = MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0) in
                     let v12 = MAlonzo.Code.Relation.Binary.Structures.d348 (coe v11) in
                     coe
                       MAlonzo.Code.Relation.Binary.Structures.du106
                       (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v12))
                       (coe v4) (coe v2) (coe v1)
                       (let v13
                              = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v0) in
                        let v14
                              = coe MAlonzo.Code.Relation.Binary.Bundles.du248 (coe v13) in
                        coe
                          MAlonzo.Code.Relation.Binary.Structures.d36
                          (MAlonzo.Code.Relation.Binary.Structures.d80
                             (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v14)))
                          v1 v2 v5)
                       (coe v10))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Sum.Base.C42 v9
        -> case coe v8 of
             MAlonzo.Code.Data.Sum.Base.C38 v10
               -> coe
                    MAlonzo.Code.Relation.Binary.Structures.d128
                    (MAlonzo.Code.Relation.Binary.Structures.d348
                       (coe MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)))
                    v3 v2
                    (let v11 = MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0) in
                     let v12 = MAlonzo.Code.Relation.Binary.Structures.d348 (coe v11) in
                     coe
                       MAlonzo.Code.Relation.Binary.Structures.du106
                       (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v12))
                       (coe v3) (coe v1) (coe v2) (coe v5) (coe v9))
                    (let v11 = MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0) in
                     let v12 = MAlonzo.Code.Relation.Binary.Structures.d348 (coe v11) in
                     coe
                       MAlonzo.Code.Relation.Binary.Structures.du106
                       (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v12))
                       (coe v2) (coe v4) (coe v3)
                       (let v13
                              = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v0) in
                        let v14
                              = coe MAlonzo.Code.Relation.Binary.Bundles.du248 (coe v13) in
                        coe
                          MAlonzo.Code.Relation.Binary.Structures.d36
                          (MAlonzo.Code.Relation.Binary.Structures.d80
                             (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v14)))
                          v3 v4 v6)
                       (coe v10))
             MAlonzo.Code.Data.Sum.Base.C42 v10 -> coe v6
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name1550 = "Algebra.Construct.NaturalChoice.Min.⊓-comm"
d1550 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> AgdaAny -> AgdaAny
d1550 v0 v1 v2 v3 v4 v5 = du1550 v3 v4 v5
du1550 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> AgdaAny -> AgdaAny
du1550 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d350
              (MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)) v1 v2 in
    let v4
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d350
              (MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)) v2 v1 in
    case coe v3 of
      MAlonzo.Code.Data.Sum.Base.C38 v5
        -> case coe v4 of
             MAlonzo.Code.Data.Sum.Base.C38 v6
               -> coe
                    MAlonzo.Code.Relation.Binary.Structures.d128
                    (MAlonzo.Code.Relation.Binary.Structures.d348
                       (coe MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)))
                    v1 v2 v5 v6
             MAlonzo.Code.Data.Sum.Base.C42 v6
               -> let v7
                        = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v0) in
                  let v8 = coe MAlonzo.Code.Relation.Binary.Bundles.du248 (coe v7) in
                  coe
                    MAlonzo.Code.Relation.Binary.Structures.d34
                    (MAlonzo.Code.Relation.Binary.Structures.d80
                       (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v8)))
                    v1
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Sum.Base.C42 v5
        -> case coe v4 of
             MAlonzo.Code.Data.Sum.Base.C38 v6
               -> let v7
                        = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v0) in
                  let v8 = coe MAlonzo.Code.Relation.Binary.Bundles.du248 (coe v7) in
                  coe
                    MAlonzo.Code.Relation.Binary.Structures.d34
                    (MAlonzo.Code.Relation.Binary.Structures.d80
                       (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v8)))
                    v2
             MAlonzo.Code.Data.Sum.Base.C42 v6
               -> coe
                    MAlonzo.Code.Relation.Binary.Structures.d128
                    (MAlonzo.Code.Relation.Binary.Structures.d348
                       (coe MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)))
                    v2 v1 v5 v6
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name1584 = "Algebra.Construct.NaturalChoice.Min.⊓-assoc"
d1584 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1584 v0 v1 v2 v3 v4 v5 v6 = du1584 v3 v4 v5 v6
du1584 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1584 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d350
              (MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)) v1 v2 in
    let v5
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d350
              (MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)) v1 v3 in
    let v6
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d350
              (MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)) v2 v3 in
    case coe v4 of
      MAlonzo.Code.Data.Sum.Base.C38 v7
        -> case coe v5 of
             MAlonzo.Code.Data.Sum.Base.C38 v8
               -> coe
                    seq (coe v6)
                    (let v9
                           = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v0) in
                     let v10
                           = coe MAlonzo.Code.Relation.Binary.Bundles.du248 (coe v9) in
                     coe
                       MAlonzo.Code.Relation.Binary.Structures.d34
                       (MAlonzo.Code.Relation.Binary.Structures.d80
                          (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v10)))
                       v1)
             MAlonzo.Code.Data.Sum.Base.C42 v8
               -> case coe v6 of
                    MAlonzo.Code.Data.Sum.Base.C38 v9
                      -> coe
                           MAlonzo.Code.Relation.Binary.Structures.d128
                           (MAlonzo.Code.Relation.Binary.Structures.d348
                              (coe MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)))
                           v3 v1 v8
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d84
                              (MAlonzo.Code.Relation.Binary.Structures.d126
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Structures.d348
                                    (coe MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0))))
                              v1 v2 v3 v7 v9)
                    MAlonzo.Code.Data.Sum.Base.C42 v9
                      -> let v10
                               = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v0) in
                         let v11
                               = coe MAlonzo.Code.Relation.Binary.Bundles.du248 (coe v10) in
                         coe
                           MAlonzo.Code.Relation.Binary.Structures.d34
                           (MAlonzo.Code.Relation.Binary.Structures.d80
                              (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v11)))
                           v3
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Sum.Base.C42 v7
        -> case coe v5 of
             MAlonzo.Code.Data.Sum.Base.C38 v8
               -> case coe v6 of
                    MAlonzo.Code.Data.Sum.Base.C38 v9
                      -> let v10
                               = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v0) in
                         let v11
                               = coe MAlonzo.Code.Relation.Binary.Bundles.du248 (coe v10) in
                         coe
                           MAlonzo.Code.Relation.Binary.Structures.d34
                           (MAlonzo.Code.Relation.Binary.Structures.d80
                              (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v11)))
                           v2
                    MAlonzo.Code.Data.Sum.Base.C42 v9
                      -> coe
                           MAlonzo.Code.Relation.Binary.Structures.d128
                           (MAlonzo.Code.Relation.Binary.Structures.d348
                              (coe MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)))
                           v3 v1
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d84
                              (MAlonzo.Code.Relation.Binary.Structures.d126
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Structures.d348
                                    (coe MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0))))
                              v3 v2 v1 v9 v7)
                           v8
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Data.Sum.Base.C42 v8
               -> case coe v6 of
                    MAlonzo.Code.Data.Sum.Base.C38 v9
                      -> let v10
                               = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v0) in
                         let v11
                               = coe MAlonzo.Code.Relation.Binary.Bundles.du248 (coe v10) in
                         coe
                           MAlonzo.Code.Relation.Binary.Structures.d34
                           (MAlonzo.Code.Relation.Binary.Structures.d80
                              (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v11)))
                           v2
                    MAlonzo.Code.Data.Sum.Base.C42 v9
                      -> let v10
                               = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v0) in
                         let v11
                               = coe MAlonzo.Code.Relation.Binary.Bundles.du248 (coe v10) in
                         coe
                           MAlonzo.Code.Relation.Binary.Structures.d34
                           (MAlonzo.Code.Relation.Binary.Structures.d80
                              (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v11)))
                           v3
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name2114 = "Algebra.Construct.NaturalChoice.Min.⊓-identityˡ"
d2114 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d2114 v0 v1 v2 v3 v4 v5 v6 = du2114 v3 v4 v5 v6
du2114 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du2114 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d350
              (MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)) v1 v3 in
    case coe v4 of
      MAlonzo.Code.Data.Sum.Base.C38 v5
        -> coe
             MAlonzo.Code.Relation.Binary.Structures.d128
             (MAlonzo.Code.Relation.Binary.Structures.d348
                (coe MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)))
             v1 v3 v5 (coe v2 v3)
      MAlonzo.Code.Data.Sum.Base.C42 v5
        -> let v6
                 = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v0) in
           let v7 = coe MAlonzo.Code.Relation.Binary.Bundles.du248 (coe v6) in
           coe
             MAlonzo.Code.Relation.Binary.Structures.d34
             (MAlonzo.Code.Relation.Binary.Structures.d80
                (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v7)))
             v3
      _ -> MAlonzo.RTE.mazUnreachableError
name2144 = "Algebra.Construct.NaturalChoice.Min.⊓-identityʳ"
d2144 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d2144 v0 v1 v2 v3 v4 v5 v6 = du2144 v3 v4 v5 v6
du2144 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du2144 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d350
              (MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)) v3 v1 in
    case coe v4 of
      MAlonzo.Code.Data.Sum.Base.C38 v5
        -> let v6
                 = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v0) in
           let v7 = coe MAlonzo.Code.Relation.Binary.Bundles.du248 (coe v6) in
           coe
             MAlonzo.Code.Relation.Binary.Structures.d34
             (MAlonzo.Code.Relation.Binary.Structures.d80
                (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v7)))
             v3
      MAlonzo.Code.Data.Sum.Base.C42 v5
        -> coe
             MAlonzo.Code.Relation.Binary.Structures.d128
             (MAlonzo.Code.Relation.Binary.Structures.d348
                (coe MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)))
             v1 v3 v5 (coe v2 v3)
      _ -> MAlonzo.RTE.mazUnreachableError
name2174 = "Algebra.Construct.NaturalChoice.Min.⊓-identity"
d2174 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d2174 v0 v1 v2 v3 v4 v5 = du2174 v3 v4 v5
du2174 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du2174 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32
      (coe du2114 (coe v0) (coe v1) (coe v2))
      (coe du2144 (coe v0) (coe v1) (coe v2))
name2180 = "Algebra.Construct.NaturalChoice.Min.⊓-zeroˡ"
d2180 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d2180 v0 v1 v2 v3 v4 v5 v6 = du2180 v3 v4 v5 v6
du2180 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du2180 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d350
              (MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)) v1 v3 in
    case coe v4 of
      MAlonzo.Code.Data.Sum.Base.C38 v5
        -> let v6
                 = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v0) in
           let v7 = coe MAlonzo.Code.Relation.Binary.Bundles.du248 (coe v6) in
           coe
             MAlonzo.Code.Relation.Binary.Structures.d34
             (MAlonzo.Code.Relation.Binary.Structures.d80
                (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v7)))
             v1
      MAlonzo.Code.Data.Sum.Base.C42 v5
        -> coe
             MAlonzo.Code.Relation.Binary.Structures.d128
             (MAlonzo.Code.Relation.Binary.Structures.d348
                (coe MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)))
             v3 v1 v5 (coe v2 v3)
      _ -> MAlonzo.RTE.mazUnreachableError
name2210 = "Algebra.Construct.NaturalChoice.Min.⊓-zeroʳ"
d2210 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d2210 v0 v1 v2 v3 v4 v5 v6 = du2210 v3 v4 v5 v6
du2210 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du2210 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d350
              (MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)) v3 v1 in
    case coe v4 of
      MAlonzo.Code.Data.Sum.Base.C38 v5
        -> coe
             MAlonzo.Code.Relation.Binary.Structures.d128
             (MAlonzo.Code.Relation.Binary.Structures.d348
                (coe MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)))
             v3 v1 v5 (coe v2 v3)
      MAlonzo.Code.Data.Sum.Base.C42 v5
        -> let v6
                 = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v0) in
           let v7 = coe MAlonzo.Code.Relation.Binary.Bundles.du248 (coe v6) in
           coe
             MAlonzo.Code.Relation.Binary.Structures.d34
             (MAlonzo.Code.Relation.Binary.Structures.d80
                (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v7)))
             v1
      _ -> MAlonzo.RTE.mazUnreachableError
name2240 = "Algebra.Construct.NaturalChoice.Min.⊓-zero"
d2240 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d2240 v0 v1 v2 v3 v4 v5 = du2240 v3 v4 v5
du2240 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du2240 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32
      (coe du2180 (coe v0) (coe v1) (coe v2))
      (coe du2210 (coe v0) (coe v1) (coe v2))
name2244 = "Algebra.Construct.NaturalChoice.Min.⊓-isMagma"
d2244 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Structures.T80
d2244 v0 v1 v2 v3 = du2244 v3
du2244 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Structures.T80
du2244 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C423
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d348
               (coe MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)))))
      (coe du1468 (coe v0))
name2246 = "Algebra.Construct.NaturalChoice.Min.⊓-isSemigroup"
d2246 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Structures.T116
d2246 v0 v1 v2 v3 = du2246 v3
du2246 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Structures.T116
du2246 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C1721 (coe du2244 (coe v0))
      (coe du1584 (coe v0))
name2248 = "Algebra.Construct.NaturalChoice.Min.⊓-isBand"
d2248 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Structures.T152
d2248 v0 v1 v2 v3 = du2248 v3
du2248 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Structures.T152
du2248 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C2175 (coe du2246 (coe v0))
      (coe du1452 (coe v0))
name2250 = "Algebra.Construct.NaturalChoice.Min.⊓-isSemilattice"
d2250 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Structures.T232
d2250 v0 v1 v2 v3 = du2250 v3
du2250 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Structures.T232
du2250 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C3189 (coe du2248 (coe v0))
      (coe du1550 (coe v0))
name2254 = "Algebra.Construct.NaturalChoice.Min.⊓-isMonoid"
d2254 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Algebra.Structures.T314
d2254 v0 v1 v2 v3 v4 v5 = du2254 v3 v4 v5
du2254 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Algebra.Structures.T314
du2254 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C4201 (coe du2246 (coe v0))
      (coe du2174 (coe v0) (coe v1) (coe v2))
name2258 = "Algebra.Construct.NaturalChoice.Min.⊓-isSelectiveMagma"
d2258 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Structures.T276
d2258 v0 v1 v2 v3 = du2258 v3
du2258 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Structures.T276
du2258 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C3745 (coe du2244 (coe v0))
      (coe du1430 (coe v0))
name2260 = "Algebra.Construct.NaturalChoice.Min.⊓-magma"
d2260 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Bundles.T30
d2260 v0 v1 v2 v3 = du2260 v3
du2260 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Bundles.T30
du2260 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C255 (coe du1408 (coe v0))
      (coe du2244 (coe v0))
name2262 = "Algebra.Construct.NaturalChoice.Min.⊓-semigroup"
d2262 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Bundles.T80
d2262 v0 v1 v2 v3 = du2262 v3
du2262 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Bundles.T80
du2262 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C877 (coe du1408 (coe v0))
      (coe du2246 (coe v0))
name2264 = "Algebra.Construct.NaturalChoice.Min.⊓-band"
d2264 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Bundles.T138
d2264 v0 v1 v2 v3 = du2264 v3
du2264 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Bundles.T138
du2264 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C1567 (coe du1408 (coe v0))
      (coe du2248 (coe v0))
name2266 = "Algebra.Construct.NaturalChoice.Min.⊓-semilattice"
d2266 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Bundles.T266
d2266 v0 v1 v2 v3 = du2266 v3
du2266 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Bundles.T266
du2266 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C3011 (coe du1408 (coe v0))
      (coe du2250 (coe v0))
name2270 = "Algebra.Construct.NaturalChoice.Min.⊓-monoid"
d2270 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Algebra.Bundles.T422
d2270 v0 v1 v2 v3 v4 v5 = du2270 v3 v4 v5
du2270 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Algebra.Bundles.T422
du2270 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Bundles.C4689 (coe du1408 (coe v0)) v1
      (coe du2254 (coe v0) (coe v1) (coe v2))
name2274 = "Algebra.Construct.NaturalChoice.Min.⊓-selectiveMagma"
d2274 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Bundles.T336
d2274 v0 v1 v2 v3 = du2274 v3
du2274 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Bundles.T336
du2274 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C3765 (coe du1408 (coe v0))
      (coe du2258 (coe v0))
name2280 = "Algebra.Construct.NaturalChoice.Min.x⊓y≈y⇒y≤x"
d2280 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2280 v0 v1 v2 v3 v4 v5 v6 = du2280 v3 v4 v5 v6
du2280 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2280 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d350
              (MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)) v1 v2 in
    case coe v4 of
      MAlonzo.Code.Data.Sum.Base.C38 v5
        -> coe
             MAlonzo.Code.Relation.Binary.Structures.d82
             (MAlonzo.Code.Relation.Binary.Structures.d126
                (coe
                   MAlonzo.Code.Relation.Binary.Structures.d348
                   (coe MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0))))
             v2 v1
             (let v6
                    = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v0) in
              let v7 = coe MAlonzo.Code.Relation.Binary.Bundles.du248 (coe v6) in
              coe
                MAlonzo.Code.Relation.Binary.Structures.d36
                (MAlonzo.Code.Relation.Binary.Structures.d80
                   (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v7)))
                v1 v2 v3)
      MAlonzo.Code.Data.Sum.Base.C42 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name2310 = "Algebra.Construct.NaturalChoice.Min.x⊓y≈x⇒x≤y"
d2310 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2310 v0 v1 v2 v3 v4 v5 v6 = du2310 v3 v4 v5 v6
du2310 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2310 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d350
              (MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)) v1 v2 in
    case coe v4 of
      MAlonzo.Code.Data.Sum.Base.C38 v5 -> coe v5
      MAlonzo.Code.Data.Sum.Base.C42 v5
        -> coe
             MAlonzo.Code.Relation.Binary.Structures.d82
             (MAlonzo.Code.Relation.Binary.Structures.d126
                (coe
                   MAlonzo.Code.Relation.Binary.Structures.d348
                   (coe MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0))))
             v1 v2
             (let v6
                    = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v0) in
              let v7 = coe MAlonzo.Code.Relation.Binary.Bundles.du248 (coe v6) in
              coe
                MAlonzo.Code.Relation.Binary.Structures.d36
                (MAlonzo.Code.Relation.Binary.Structures.d80
                   (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v7)))
                v2 v1 v3)
      _ -> MAlonzo.RTE.mazUnreachableError
