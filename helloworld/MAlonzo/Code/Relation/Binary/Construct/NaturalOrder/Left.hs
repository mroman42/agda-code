{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Binary.Construct.NaturalOrder.Left where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial
import qualified MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary

name38
  = "Relation.Binary.Construct.NaturalOrder.Left._.Commutative"
d38 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d38 = erased
name46 = "Relation.Binary.Construct.NaturalOrder.Left._.Idempotent"
d46 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d46 = erased
name82 = "Relation.Binary.Construct.NaturalOrder.Left._.Selective"
d82 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d82 = erased
name90 = "Relation.Binary.Construct.NaturalOrder.Left._.IsBand"
d90 a0 a1 a2 a3 a4 a5 = ()
name114 = "Relation.Binary.Construct.NaturalOrder.Left._.IsMagma"
d114 a0 a1 a2 a3 a4 a5 = ()
name124
  = "Relation.Binary.Construct.NaturalOrder.Left._.IsSemigroup"
d124 a0 a1 a2 a3 a4 a5 = ()
name126
  = "Relation.Binary.Construct.NaturalOrder.Left._.IsSemilattice"
d126 a0 a1 a2 a3 a4 a5 = ()
name1352 = "Relation.Binary.Construct.NaturalOrder.Left._≤_"
d1352 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d1352 = erased
name1358 = "Relation.Binary.Construct.NaturalOrder.Left.reflexive"
d1358 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T80 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1358 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1358 v4 v5 v6 v7 v8 v9
du1358 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T80 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1358 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du74
            (coe MAlonzo.Code.Algebra.Structures.du104 (coe v1)))
         v3 (coe v0 v3 v3) (coe v0 v3 v4)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du74
               (coe MAlonzo.Code.Algebra.Structures.du104 (coe v1)))
            (coe v0 v3 v3) (coe v0 v3 v4) (coe v0 v3 v4)
            (let v6
                   = MAlonzo.Code.Relation.Binary.Structures.d34
                       (coe MAlonzo.Code.Algebra.Structures.d88 (coe v1)) in
             let v7 = coe v0 v3 v4 in
             coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
               (coe v6 v7))
            (coe
               MAlonzo.Code.Algebra.Structures.d90 v1 v3 v3 v3 v4
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d34
                  (MAlonzo.Code.Algebra.Structures.d88 (coe v1)) v3)
               v5))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d36
            (MAlonzo.Code.Algebra.Structures.d88 (coe v1)) (coe v0 v3 v3) v3
            (coe v2 v3)))
name1422 = "Relation.Binary.Construct.NaturalOrder.Left.refl"
d1422 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d1422 v0 v1 v2 v3 v4 v5 v6 v7 = du1422 v4 v5 v6 v7
du1422 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du1422 v0 v1 v2 v3 = coe v1 (coe v0 v3 v3) v3 (coe v2 v3)
name1430 = "Relation.Binary.Construct.NaturalOrder.Left.antisym"
d1430 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1430 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = du1430 v4 v5 v6 v7 v8 v9 v10
du1430 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1430 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du74
            (coe MAlonzo.Code.Relation.Binary.Bundles.C501 v1))
         v3 (coe v0 v3 v4) v4
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du74
               (coe MAlonzo.Code.Relation.Binary.Bundles.C501 v1))
            (coe v0 v3 v4) (coe v0 v4 v3) v4
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.du74
                  (coe MAlonzo.Code.Relation.Binary.Bundles.C501 v1))
               (coe v0 v4 v3) v4 v4
               (let v7 = MAlonzo.Code.Relation.Binary.Structures.d34 (coe v1) in
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                  (coe v7 v4))
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d36 v1 v4 (coe v0 v4 v3)
                  v6))
            (coe v2 v3 v4))
         v5)
name1486 = "Relation.Binary.Construct.NaturalOrder.Left.total"
d1486 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30
d1486 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = du1486 v4 v5 v6 v7 v8 v9 v10
du1486 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30
du1486 v0 v1 v2 v3 v4 v5 v6
  = let v7 = coe v3 v5 v6 in
    case coe v7 of
      MAlonzo.Code.Data.Sum.Base.C38 v8
        -> coe MAlonzo.Code.Data.Sum.Base.C38 (coe v1 (coe v0 v5 v6) v5 v8)
      MAlonzo.Code.Data.Sum.Base.C42 v8
        -> coe
             MAlonzo.Code.Data.Sum.Base.C42
             (coe
                v1 (coe v0 v6 v5) v6
                (coe v2 (coe v0 v6 v5) (coe v0 v5 v6) v6 (coe v4 v6 v5) v8))
      _ -> MAlonzo.RTE.mazUnreachableError
name1532 = "Relation.Binary.Construct.NaturalOrder.Left.trans"
d1532 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T116 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1532 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = du1532 v4 v5 v6 v7 v8 v9 v10
du1532 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T116 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1532 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du74
            (coe
               MAlonzo.Code.Algebra.Structures.du104
               (coe MAlonzo.Code.Algebra.Structures.d124 (coe v1))))
         v2 (coe v0 v2 v3) (coe v0 v2 v4)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du74
               (coe
                  MAlonzo.Code.Algebra.Structures.du104
                  (coe MAlonzo.Code.Algebra.Structures.d124 (coe v1))))
            (coe v0 v2 v3) (coe v0 v2 (coe v0 v3 v4)) (coe v0 v2 v4)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.du74
                  (coe
                     MAlonzo.Code.Algebra.Structures.du104
                     (coe MAlonzo.Code.Algebra.Structures.d124 (coe v1))))
               (coe v0 v2 (coe v0 v3 v4)) (coe v0 (coe v0 v2 v3) v4)
               (coe v0 v2 v4)
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.du74
                     (coe
                        MAlonzo.Code.Algebra.Structures.du104
                        (coe MAlonzo.Code.Algebra.Structures.d124 (coe v1))))
                  (coe v0 (coe v0 v2 v3) v4) (coe v0 v2 v4) (coe v0 v2 v4)
                  (let v7
                         = MAlonzo.Code.Relation.Binary.Structures.d34
                             (coe
                                MAlonzo.Code.Relation.Binary.Bundles.d60
                                (coe
                                   MAlonzo.Code.Algebra.Structures.du104
                                   (coe MAlonzo.Code.Algebra.Structures.d124 (coe v1)))) in
                   let v8 = coe v0 v2 v4 in
                   coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                     (coe v7 v8))
                  (coe
                     MAlonzo.Code.Algebra.Structures.d90
                     (MAlonzo.Code.Algebra.Structures.d124 (coe v1)) (coe v0 v2 v3) v2
                     v4 v4
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d36
                        (MAlonzo.Code.Algebra.Structures.d88
                           (coe MAlonzo.Code.Algebra.Structures.d124 (coe v1)))
                        v2 (coe v0 v2 v3) v5)
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d34
                        (MAlonzo.Code.Algebra.Structures.d88
                           (coe MAlonzo.Code.Algebra.Structures.d124 (coe v1)))
                        v4)))
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d36
                  (MAlonzo.Code.Algebra.Structures.d88
                     (coe MAlonzo.Code.Algebra.Structures.d124 (coe v1)))
                  (coe v0 (coe v0 v2 v3) v4) (coe v0 v2 (coe v0 v3 v4))
                  (coe MAlonzo.Code.Algebra.Structures.d126 v1 v2 v3 v4)))
            (coe
               MAlonzo.Code.Algebra.Structures.d90
               (MAlonzo.Code.Algebra.Structures.d124 (coe v1)) v2 v2 v3
               (coe v0 v3 v4)
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d34
                  (MAlonzo.Code.Algebra.Structures.d88
                     (coe MAlonzo.Code.Algebra.Structures.d124 (coe v1)))
                  v2)
               v6))
         v5)
name1602 = "Relation.Binary.Construct.NaturalOrder.Left.respʳ"
d1602 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T80 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1602 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = du1602 v4 v5 v6 v7 v8 v9 v10
du1602 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T80 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1602 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du74
            (coe MAlonzo.Code.Algebra.Structures.du104 (coe v1)))
         v2 (coe v0 v2 v3) (coe v0 v2 v4)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du74
               (coe MAlonzo.Code.Algebra.Structures.du104 (coe v1)))
            (coe v0 v2 v3) (coe v0 v2 v4) (coe v0 v2 v4)
            (let v7
                   = MAlonzo.Code.Relation.Binary.Structures.d34
                       (coe MAlonzo.Code.Algebra.Structures.d88 (coe v1)) in
             let v8 = coe v0 v2 v4 in
             coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
               (coe v7 v8))
            (coe
               MAlonzo.Code.Algebra.Structures.d90 v1 v2 v2 v3 v4
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d34
                  (MAlonzo.Code.Algebra.Structures.d88 (coe v1)) v2)
               v5))
         v6)
name1668 = "Relation.Binary.Construct.NaturalOrder.Left.respˡ"
d1668 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T80 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1668 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = du1668 v4 v5 v6 v7 v8 v9 v10
du1668 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T80 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1668 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du74
            (coe MAlonzo.Code.Algebra.Structures.du104 (coe v1)))
         v4 v3 (coe v0 v4 v2)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du74
               (coe MAlonzo.Code.Algebra.Structures.du104 (coe v1)))
            v3 (coe v0 v3 v2) (coe v0 v4 v2)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.du74
                  (coe MAlonzo.Code.Algebra.Structures.du104 (coe v1)))
               (coe v0 v3 v2) (coe v0 v4 v2) (coe v0 v4 v2)
               (let v7
                      = MAlonzo.Code.Relation.Binary.Structures.d34
                          (coe MAlonzo.Code.Algebra.Structures.d88 (coe v1)) in
                let v8 = coe v0 v4 v2 in
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                  (coe v7 v8))
               (coe
                  MAlonzo.Code.Algebra.Structures.d90 v1 v3 v4 v2 v2 v5
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d34
                     (MAlonzo.Code.Algebra.Structures.d88 (coe v1)) v2)))
            v6)
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d36
            (MAlonzo.Code.Algebra.Structures.d88 (coe v1)) v3 v4 v5))
name1734 = "Relation.Binary.Construct.NaturalOrder.Left.resp₂"
d1734 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T80 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d1734 v0 v1 v2 v3 v4 v5 = du1734 v4 v5
du1734 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T80 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du1734 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe du1602 (coe v0) (coe v1))
      (coe du1668 (coe v0) (coe v1))
name1738 = "Relation.Binary.Construct.NaturalOrder.Left.dec"
d1738 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
d1738 v0 v1 v2 v3 v4 v5 v6 v7 = du1738 v4 v5 v6 v7
du1738 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
du1738 v0 v1 v2 v3 = coe v1 v2 (coe v0 v2 v3)
name1816 = "Relation.Binary.Construct.NaturalOrder.Left._.x∙y≤x"
d1816 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T232 ->
  AgdaAny -> AgdaAny -> AgdaAny
d1816 v0 v1 v2 v3 v4 v5 v6 v7 = du1816 v4 v5 v6 v7
du1816 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T232 ->
  AgdaAny -> AgdaAny -> AgdaAny
du1816 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du74
            (let v4 = MAlonzo.Code.Algebra.Structures.d240 (coe v1) in
             let v5 = MAlonzo.Code.Algebra.Structures.d160 (coe v4) in
             coe
               MAlonzo.Code.Algebra.Structures.du104
               (coe MAlonzo.Code.Algebra.Structures.d124 (coe v5))))
         (coe v0 v2 v3) (coe v0 (coe v0 v2 v2) v3)
         (coe v0 (coe v0 v2 v3) v2)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du74
               (let v4 = MAlonzo.Code.Algebra.Structures.d240 (coe v1) in
                let v5 = MAlonzo.Code.Algebra.Structures.d160 (coe v4) in
                coe
                  MAlonzo.Code.Algebra.Structures.du104
                  (coe MAlonzo.Code.Algebra.Structures.d124 (coe v5))))
            (coe v0 (coe v0 v2 v2) v3) (coe v0 v2 (coe v0 v2 v3))
            (coe v0 (coe v0 v2 v3) v2)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.du74
                  (let v4 = MAlonzo.Code.Algebra.Structures.d240 (coe v1) in
                   let v5 = MAlonzo.Code.Algebra.Structures.d160 (coe v4) in
                   coe
                     MAlonzo.Code.Algebra.Structures.du104
                     (coe MAlonzo.Code.Algebra.Structures.d124 (coe v5))))
               (coe v0 v2 (coe v0 v2 v3)) (coe v0 (coe v0 v2 v3) v2)
               (coe v0 (coe v0 v2 v3) v2)
               (let v4
                      = MAlonzo.Code.Relation.Binary.Structures.d34
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d60
                             (let v4 = MAlonzo.Code.Algebra.Structures.d240 (coe v1) in
                              let v5 = MAlonzo.Code.Algebra.Structures.d160 (coe v4) in
                              coe
                                MAlonzo.Code.Algebra.Structures.du104
                                (coe MAlonzo.Code.Algebra.Structures.d124 (coe v5)))) in
                let v5 = coe v0 (coe v0 v2 v3) v2 in
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                  (coe v4 v5))
               (coe MAlonzo.Code.Algebra.Structures.d242 v1 v2 (coe v0 v2 v3)))
            (coe
               MAlonzo.Code.Algebra.Structures.d126
               (MAlonzo.Code.Algebra.Structures.d160
                  (coe MAlonzo.Code.Algebra.Structures.d240 (coe v1)))
               v2 v2 v3))
         (coe
            MAlonzo.Code.Algebra.Structures.d90
            (MAlonzo.Code.Algebra.Structures.d124
               (coe
                  MAlonzo.Code.Algebra.Structures.d160
                  (coe MAlonzo.Code.Algebra.Structures.d240 (coe v1))))
            v2 (coe v0 v2 v2) v3 v3
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d36
               (MAlonzo.Code.Algebra.Structures.d88
                  (coe
                     MAlonzo.Code.Algebra.Structures.d124
                     (coe
                        MAlonzo.Code.Algebra.Structures.d160
                        (coe MAlonzo.Code.Algebra.Structures.d240 (coe v1)))))
               (coe v0 v2 v2) v2
               (coe
                  MAlonzo.Code.Algebra.Structures.d162
                  (MAlonzo.Code.Algebra.Structures.d240 (coe v1)) v2))
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d34
               (MAlonzo.Code.Algebra.Structures.d88
                  (coe
                     MAlonzo.Code.Algebra.Structures.d124
                     (coe
                        MAlonzo.Code.Algebra.Structures.d160
                        (coe MAlonzo.Code.Algebra.Structures.d240 (coe v1)))))
               v3)))
name1826 = "Relation.Binary.Construct.NaturalOrder.Left._.x∙y≤y"
d1826 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T232 ->
  AgdaAny -> AgdaAny -> AgdaAny
d1826 v0 v1 v2 v3 v4 v5 v6 v7 = du1826 v4 v5 v6 v7
du1826 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T232 ->
  AgdaAny -> AgdaAny -> AgdaAny
du1826 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du74
            (let v4 = MAlonzo.Code.Algebra.Structures.d240 (coe v1) in
             let v5 = MAlonzo.Code.Algebra.Structures.d160 (coe v4) in
             coe
               MAlonzo.Code.Algebra.Structures.du104
               (coe MAlonzo.Code.Algebra.Structures.d124 (coe v5))))
         (coe v0 v2 v3) (coe v0 v2 (coe v0 v3 v3))
         (coe v0 (coe v0 v2 v3) v3)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du74
               (let v4 = MAlonzo.Code.Algebra.Structures.d240 (coe v1) in
                let v5 = MAlonzo.Code.Algebra.Structures.d160 (coe v4) in
                coe
                  MAlonzo.Code.Algebra.Structures.du104
                  (coe MAlonzo.Code.Algebra.Structures.d124 (coe v5))))
            (coe v0 v2 (coe v0 v3 v3)) (coe v0 (coe v0 v2 v3) v3)
            (coe v0 (coe v0 v2 v3) v3)
            (let v4
                   = MAlonzo.Code.Relation.Binary.Structures.d34
                       (coe
                          MAlonzo.Code.Relation.Binary.Bundles.d60
                          (let v4 = MAlonzo.Code.Algebra.Structures.d240 (coe v1) in
                           let v5 = MAlonzo.Code.Algebra.Structures.d160 (coe v4) in
                           coe
                             MAlonzo.Code.Algebra.Structures.du104
                             (coe MAlonzo.Code.Algebra.Structures.d124 (coe v5)))) in
             let v5 = coe v0 (coe v0 v2 v3) v3 in
             coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
               (coe v4 v5))
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d36
               (MAlonzo.Code.Algebra.Structures.d88
                  (coe
                     MAlonzo.Code.Algebra.Structures.d124
                     (coe
                        MAlonzo.Code.Algebra.Structures.d160
                        (coe MAlonzo.Code.Algebra.Structures.d240 (coe v1)))))
               (coe v0 (coe v0 v2 v3) v3) (coe v0 v2 (coe v0 v3 v3))
               (coe
                  MAlonzo.Code.Algebra.Structures.d126
                  (MAlonzo.Code.Algebra.Structures.d160
                     (coe MAlonzo.Code.Algebra.Structures.d240 (coe v1)))
                  v2 v3 v3)))
         (coe
            MAlonzo.Code.Algebra.Structures.d90
            (MAlonzo.Code.Algebra.Structures.d124
               (coe
                  MAlonzo.Code.Algebra.Structures.d160
                  (coe MAlonzo.Code.Algebra.Structures.d240 (coe v1))))
            v2 v2 v3 (coe v0 v3 v3)
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d34
               (MAlonzo.Code.Algebra.Structures.d88
                  (coe
                     MAlonzo.Code.Algebra.Structures.d124
                     (coe
                        MAlonzo.Code.Algebra.Structures.d160
                        (coe MAlonzo.Code.Algebra.Structures.d240 (coe v1)))))
               v2)
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d36
               (MAlonzo.Code.Algebra.Structures.d88
                  (coe
                     MAlonzo.Code.Algebra.Structures.d124
                     (coe
                        MAlonzo.Code.Algebra.Structures.d160
                        (coe MAlonzo.Code.Algebra.Structures.d240 (coe v1)))))
               (coe v0 v3 v3) v3
               (coe
                  MAlonzo.Code.Algebra.Structures.d162
                  (MAlonzo.Code.Algebra.Structures.d240 (coe v1)) v3))))
name1838
  = "Relation.Binary.Construct.NaturalOrder.Left._.∙-presʳ-≤"
d1838 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T232 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1838 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = du1838 v4 v5 v6 v7 v8 v9 v10
du1838 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T232 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1838 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du74
            (let v7 = MAlonzo.Code.Algebra.Structures.d240 (coe v1) in
             let v8 = MAlonzo.Code.Algebra.Structures.d160 (coe v7) in
             coe
               MAlonzo.Code.Algebra.Structures.du104
               (coe MAlonzo.Code.Algebra.Structures.d124 (coe v8))))
         v4 (coe v0 v4 v3) (coe v0 v4 (coe v0 v2 v3))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du74
               (let v7 = MAlonzo.Code.Algebra.Structures.d240 (coe v1) in
                let v8 = MAlonzo.Code.Algebra.Structures.d160 (coe v7) in
                coe
                  MAlonzo.Code.Algebra.Structures.du104
                  (coe MAlonzo.Code.Algebra.Structures.d124 (coe v8))))
            (coe v0 v4 v3) (coe v0 (coe v0 v4 v2) v3)
            (coe v0 v4 (coe v0 v2 v3))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.du74
                  (let v7 = MAlonzo.Code.Algebra.Structures.d240 (coe v1) in
                   let v8 = MAlonzo.Code.Algebra.Structures.d160 (coe v7) in
                   coe
                     MAlonzo.Code.Algebra.Structures.du104
                     (coe MAlonzo.Code.Algebra.Structures.d124 (coe v8))))
               (coe v0 (coe v0 v4 v2) v3) (coe v0 v4 (coe v0 v2 v3))
               (coe v0 v4 (coe v0 v2 v3))
               (let v7
                      = MAlonzo.Code.Relation.Binary.Structures.d34
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d60
                             (let v7 = MAlonzo.Code.Algebra.Structures.d240 (coe v1) in
                              let v8 = MAlonzo.Code.Algebra.Structures.d160 (coe v7) in
                              coe
                                MAlonzo.Code.Algebra.Structures.du104
                                (coe MAlonzo.Code.Algebra.Structures.d124 (coe v8)))) in
                let v8 = coe v0 v4 (coe v0 v2 v3) in
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                  (coe v7 v8))
               (coe
                  MAlonzo.Code.Algebra.Structures.d126
                  (MAlonzo.Code.Algebra.Structures.d160
                     (coe MAlonzo.Code.Algebra.Structures.d240 (coe v1)))
                  v4 v2 v3))
            (coe
               MAlonzo.Code.Algebra.Structures.d90
               (MAlonzo.Code.Algebra.Structures.d124
                  (coe
                     MAlonzo.Code.Algebra.Structures.d160
                     (coe MAlonzo.Code.Algebra.Structures.d240 (coe v1))))
               v4 (coe v0 v4 v2) v3 v3 v5
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d34
                  (MAlonzo.Code.Algebra.Structures.d88
                     (coe
                        MAlonzo.Code.Algebra.Structures.d124
                        (coe
                           MAlonzo.Code.Algebra.Structures.d160
                           (coe MAlonzo.Code.Algebra.Structures.d240 (coe v1)))))
                  v3)))
         v6)
name1850 = "Relation.Binary.Construct.NaturalOrder.Left._.infimum"
d1850 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T232 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1850 v0 v1 v2 v3 v4 v5 v6 v7 = du1850 v4 v5 v6 v7
du1850 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T232 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1850 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32
      (coe du1816 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe du1826 (coe v0) (coe v1) (coe v2) (coe v3))
         (coe du1838 (coe v0) (coe v1) (coe v2) (coe v3)))
name1856 = "Relation.Binary.Construct.NaturalOrder.Left.isPreorder"
d1856 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T152 ->
  MAlonzo.Code.Relation.Binary.Structures.T70
d1856 v0 v1 v2 v3 v4 v5 = du1856 v4 v5
du1856 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T152 ->
  MAlonzo.Code.Relation.Binary.Structures.T70
du1856 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C2113
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe MAlonzo.Code.Algebra.Structures.d160 (coe v1))))
      (coe
         du1358 (coe v0)
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe MAlonzo.Code.Algebra.Structures.d160 (coe v1)))
         (coe MAlonzo.Code.Algebra.Structures.d162 (coe v1)))
      (coe
         du1532 (coe v0)
         (coe MAlonzo.Code.Algebra.Structures.d160 (coe v1)))
name1890
  = "Relation.Binary.Construct.NaturalOrder.Left.isPartialOrder"
d1890 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T232 ->
  MAlonzo.Code.Relation.Binary.Structures.T118
d1890 v0 v1 v2 v3 v4 v5 = du1890 v4 v5
du1890 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T232 ->
  MAlonzo.Code.Relation.Binary.Structures.T118
du1890 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C4865
      (coe
         du1856 (coe v0)
         (coe MAlonzo.Code.Algebra.Structures.d240 (coe v1)))
      (coe
         du1430 (coe v0)
         (coe
            MAlonzo.Code.Algebra.Structures.d88
            (coe
               MAlonzo.Code.Algebra.Structures.d124
               (coe
                  MAlonzo.Code.Algebra.Structures.d160
                  (coe MAlonzo.Code.Algebra.Structures.d240 (coe v1)))))
         (coe MAlonzo.Code.Algebra.Structures.d242 (coe v1)))
name1932
  = "Relation.Binary.Construct.NaturalOrder.Left.isDecPartialOrder"
d1932 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T232 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  MAlonzo.Code.Relation.Binary.Structures.T162
d1932 v0 v1 v2 v3 v4 v5 v6 = du1932 v4 v5 v6
du1932 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T232 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  MAlonzo.Code.Relation.Binary.Structures.T162
du1932 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C5875
      (coe du1890 (coe v0) (coe v1)) (coe v2)
      (coe du1738 (coe v0) (coe v2))
name1938
  = "Relation.Binary.Construct.NaturalOrder.Left.isTotalOrder"
d1938 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T232 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  MAlonzo.Code.Relation.Binary.Structures.T340
d1938 v0 v1 v2 v3 v4 v5 v6 = du1938 v4 v5 v6
du1938 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T232 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  MAlonzo.Code.Relation.Binary.Structures.T340
du1938 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C11665
      (coe du1890 (coe v0) (coe v1))
      (coe
         du1486 (coe v0)
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d36
            (coe
               MAlonzo.Code.Algebra.Structures.d88
               (coe
                  MAlonzo.Code.Algebra.Structures.d124
                  (coe
                     MAlonzo.Code.Algebra.Structures.d160
                     (coe MAlonzo.Code.Algebra.Structures.d240 (coe v1))))))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d38
            (coe
               MAlonzo.Code.Algebra.Structures.d88
               (coe
                  MAlonzo.Code.Algebra.Structures.d124
                  (coe
                     MAlonzo.Code.Algebra.Structures.d160
                     (coe MAlonzo.Code.Algebra.Structures.d240 (coe v1))))))
         (coe v2) (coe MAlonzo.Code.Algebra.Structures.d242 (coe v1)))
name1982
  = "Relation.Binary.Construct.NaturalOrder.Left.isDecTotalOrder"
d1982 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T232 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  MAlonzo.Code.Relation.Binary.Structures.T388
d1982 v0 v1 v2 v3 v4 v5 v6 v7 = du1982 v4 v5 v6 v7
du1982 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T232 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  MAlonzo.Code.Relation.Binary.Structures.T388
du1982 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C12739
      (coe du1938 (coe v0) (coe v1) (coe v2)) (coe v3)
      (coe du1738 (coe v0) (coe v3))
name1990 = "Relation.Binary.Construct.NaturalOrder.Left.preorder"
d1990 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T152 ->
  MAlonzo.Code.Relation.Binary.Bundles.T132
d1990 v0 v1 v2 v3 v4 v5 = du1990 v4 v5
du1990 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T152 ->
  MAlonzo.Code.Relation.Binary.Bundles.T132
du1990 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C1509
      (coe du1856 (coe v0) (coe v1))
name1994 = "Relation.Binary.Construct.NaturalOrder.Left.poset"
d1994 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T232 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204
d1994 v0 v1 v2 v3 v4 v5 = du1994 v4 v5
du1994 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T232 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204
du1994 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C2365
      (coe du1890 (coe v0) (coe v1))
name1998 = "Relation.Binary.Construct.NaturalOrder.Left.decPoset"
d1998 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T232 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  MAlonzo.Code.Relation.Binary.Bundles.T282
d1998 v0 v1 v2 v3 v4 v5 v6 = du1998 v4 v5 v6
du1998 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T232 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  MAlonzo.Code.Relation.Binary.Bundles.T282
du1998 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C3319
      (coe du1932 (coe v0) (coe v1) (coe v2))
name2004 = "Relation.Binary.Construct.NaturalOrder.Left.totalOrder"
d2004 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T232 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  MAlonzo.Code.Relation.Binary.Bundles.T574
d2004 v0 v1 v2 v3 v4 v5 v6 = du2004 v4 v5 v6
du2004 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T232 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  MAlonzo.Code.Relation.Binary.Bundles.T574
du2004 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C6779
      (coe du1938 (coe v0) (coe v1) (coe v2))
name2010
  = "Relation.Binary.Construct.NaturalOrder.Left.decTotalOrder"
d2010 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T232 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  MAlonzo.Code.Relation.Binary.Bundles.T658
d2010 v0 v1 v2 v3 v4 v5 v6 v7 = du2010 v4 v5 v6 v7
du2010 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T232 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  MAlonzo.Code.Relation.Binary.Bundles.T658
du2010 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C7777
      (coe du1982 (coe v0) (coe v1) (coe v2) (coe v3))
