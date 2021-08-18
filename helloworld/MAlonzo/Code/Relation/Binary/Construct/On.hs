{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Binary.Construct.On where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Definitions
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary

name30 = "Relation.Binary.Construct.On._.implies"
d30 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d30 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du30 v4 v9 v10 v11
du30 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du30 v0 v1 v2 v3 = coe v1 (coe v0 v2) (coe v0 v3)
name38 = "Relation.Binary.Construct.On._.reflexive"
d38 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d38 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du38 v4 v7 v8
du38 ::
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du38 v0 v1 v2 = coe v1 (coe v0 v2)
name50 = "Relation.Binary.Construct.On._.irreflexive"
d50 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d50 = erased
name58 = "Relation.Binary.Construct.On._.symmetric"
d58 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d58 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du58 v4 v7 v8 v9
du58 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du58 v0 v1 v2 v3 = coe v1 (coe v0 v2) (coe v0 v3)
name66 = "Relation.Binary.Construct.On._.transitive"
d66 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d66 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du66 v4 v7 v8 v9 v10
du66 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du66 v0 v1 v2 v3 v4 = coe v1 (coe v0 v2) (coe v0 v3) (coe v0 v4)
name78 = "Relation.Binary.Construct.On._.antisymmetric"
d78 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d78 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du78 v4 v9 v10 v11
du78 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du78 v0 v1 v2 v3 = coe v1 (coe v0 v2) (coe v0 v3)
name86 = "Relation.Binary.Construct.On._.asymmetric"
d86 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d86 = erased
name98 = "Relation.Binary.Construct.On._.respects"
d98 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d98 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du98 v4 v9 v10 v11
du98 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du98 v0 v1 v2 v3 = coe v1 (coe v0 v2) (coe v0 v3)
name110 = "Relation.Binary.Construct.On._.respects₂"
d110 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d110 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du110 v4 v9
du110 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du110 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C32
             (coe (\ v4 v5 v6 -> coe v2 (coe v0 v4) (coe v0 v5) (coe v0 v6)))
             (coe (\ v4 v5 v6 -> coe v3 (coe v0 v4) (coe v0 v5) (coe v0 v6)))
      _ -> MAlonzo.RTE.mazUnreachableError
name132 = "Relation.Binary.Construct.On._.decidable"
d132 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
d132 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du132 v4 v7 v8 v9
du132 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
du132 v0 v1 v2 v3 = coe v1 (coe v0 v2) (coe v0 v3)
name144 = "Relation.Binary.Construct.On._.total"
d144 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30
d144 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du144 v4 v7 v8 v9
du144 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30
du144 v0 v1 v2 v3 = coe v1 (coe v0 v2) (coe v0 v3)
name160 = "Relation.Binary.Construct.On._.trichotomous"
d160 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T136) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T136
d160 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du160 v4 v9 v10 v11
du160 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T136) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T136
du160 v0 v1 v2 v3 = coe v1 (coe v0 v2) (coe v0 v3)
name172 = "Relation.Binary.Construct.On._.isEquivalence"
d172 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  MAlonzo.Code.Relation.Binary.Structures.T26
d172 v0 v1 v2 v3 v4 v5 v6 v7 = du172 v4 v7
du172 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  MAlonzo.Code.Relation.Binary.Structures.T26
du172 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C483
      (coe
         (\ v2 ->
            coe MAlonzo.Code.Relation.Binary.Structures.d34 v1 (coe v0 v2)))
      (coe
         du58 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d36 (coe v1)))
      (coe
         du66 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d38 (coe v1)))
name202 = "Relation.Binary.Construct.On._.isPreorder"
d202 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T70 ->
  MAlonzo.Code.Relation.Binary.Structures.T70
d202 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du202 v4 v9
du202 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T70 ->
  MAlonzo.Code.Relation.Binary.Structures.T70
du202 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C2113
      (coe
         du172 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d80 (coe v1)))
      (coe
         du30 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d82 (coe v1)))
      (coe
         du66 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d84 (coe v1)))
name246 = "Relation.Binary.Construct.On._.isDecEquivalence"
d246 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T44 ->
  MAlonzo.Code.Relation.Binary.Structures.T44
d246 v0 v1 v2 v3 v4 v5 v6 v7 = du246 v4 v7
du246 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T44 ->
  MAlonzo.Code.Relation.Binary.Structures.T44
du246 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C1529
      (coe
         du172 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d50 (coe v1)))
      (coe
         du132 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d52 (coe v1)))
name280 = "Relation.Binary.Construct.On._.isPartialOrder"
d280 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T118 ->
  MAlonzo.Code.Relation.Binary.Structures.T118
d280 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du280 v4 v9
du280 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T118 ->
  MAlonzo.Code.Relation.Binary.Structures.T118
du280 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C4865
      (coe
         du202 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v1)))
      (coe
         du78 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d128 (coe v1)))
name332 = "Relation.Binary.Construct.On._.isDecPartialOrder"
d332 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T162 ->
  MAlonzo.Code.Relation.Binary.Structures.T162
d332 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du332 v4 v9
du332 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T162 ->
  MAlonzo.Code.Relation.Binary.Structures.T162
du332 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C5875
      (coe
         du280 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d172 (coe v1)))
      (coe
         du132 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d174 (coe v1)))
      (coe
         du132 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d176 (coe v1)))
name392 = "Relation.Binary.Construct.On._.isStrictPartialOrder"
d392 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T222 ->
  MAlonzo.Code.Relation.Binary.Structures.T222
d392 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du392 v4 v9
du392 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T222 ->
  MAlonzo.Code.Relation.Binary.Structures.T222
du392 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C7193
      (coe
         du172 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d234 (coe v1)))
      (coe
         du66 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d238 (coe v1)))
      (coe
         du110 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d240 (coe v1)))
name442 = "Relation.Binary.Construct.On._.isTotalOrder"
d442 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T340 ->
  MAlonzo.Code.Relation.Binary.Structures.T340
d442 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du442 v4 v9
du442 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T340 ->
  MAlonzo.Code.Relation.Binary.Structures.T340
du442 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C11665
      (coe
         du280 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d348 (coe v1)))
      (coe
         du144 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d350 (coe v1)))
name498 = "Relation.Binary.Construct.On._.isDecTotalOrder"
d498 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T388 ->
  MAlonzo.Code.Relation.Binary.Structures.T388
d498 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du498 v4 v9
du498 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T388 ->
  MAlonzo.Code.Relation.Binary.Structures.T388
du498 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C12739
      (coe
         du442 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d398 (coe v1)))
      (coe
         du132 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d400 (coe v1)))
      (coe
         du132 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d402 (coe v1)))
name568 = "Relation.Binary.Construct.On._.isStrictTotalOrder"
d568 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T454 ->
  MAlonzo.Code.Relation.Binary.Structures.T454
d568 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du568 v4 v9
du568 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T454 ->
  MAlonzo.Code.Relation.Binary.Structures.T454
du568 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C14057
      (coe
         du172 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d464 (coe v1)))
      (coe
         du66 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d466 (coe v1)))
      (coe
         du160 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d468 (coe v1)))
name636 = "Relation.Binary.Construct.On.preorder"
d636 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Binary.Bundles.T132 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Binary.Bundles.T132
d636 v0 v1 v2 v3 v4 v5 v6 = du636 v5 v6
du636 ::
  MAlonzo.Code.Relation.Binary.Bundles.T132 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Binary.Bundles.T132
du636 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C1509
      (coe
         du202 (coe v1)
         (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v0)))
name652 = "Relation.Binary.Construct.On.setoid"
d652 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Binary.Bundles.T44
d652 v0 v1 v2 v3 v4 v5 = du652 v4 v5
du652 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Binary.Bundles.T44
du652 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C501
      (coe
         du172 (coe v1)
         (coe MAlonzo.Code.Relation.Binary.Bundles.d60 (coe v0)))
name668 = "Relation.Binary.Construct.On.decSetoid"
d668 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Binary.Bundles.T84 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Binary.Bundles.T84
d668 v0 v1 v2 v3 v4 v5 = du668 v4 v5
du668 ::
  MAlonzo.Code.Relation.Binary.Bundles.T84 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Binary.Bundles.T84
du668 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C939
      (coe
         du246 (coe v1)
         (coe MAlonzo.Code.Relation.Binary.Bundles.d100 (coe v0)))
name686 = "Relation.Binary.Construct.On.poset"
d686 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Binary.Bundles.T204
d686 v0 v1 v2 v3 v4 v5 v6 = du686 v5 v6
du686 ::
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Binary.Bundles.T204
du686 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C2365
      (coe
         du280 (coe v1)
         (coe MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v0)))
name704 = "Relation.Binary.Construct.On.decPoset"
d704 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Binary.Bundles.T282 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Binary.Bundles.T282
d704 v0 v1 v2 v3 v4 v5 v6 = du704 v5 v6
du704 ::
  MAlonzo.Code.Relation.Binary.Bundles.T282 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Binary.Bundles.T282
du704 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C3319
      (coe
         du332 (coe v1)
         (coe MAlonzo.Code.Relation.Binary.Bundles.d304 (coe v0)))
name722 = "Relation.Binary.Construct.On.strictPartialOrder"
d722 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Binary.Bundles.T394 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Binary.Bundles.T394
d722 v0 v1 v2 v3 v4 v5 v6 = du722 v5 v6
du722 ::
  MAlonzo.Code.Relation.Binary.Bundles.T394 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Binary.Bundles.T394
du722 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C4625
      (coe
         du392 (coe v1)
         (coe MAlonzo.Code.Relation.Binary.Bundles.d416 (coe v0)))
name740 = "Relation.Binary.Construct.On.totalOrder"
d740 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Binary.Bundles.T574
d740 v0 v1 v2 v3 v4 v5 v6 = du740 v5 v6
du740 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Binary.Bundles.T574
du740 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C6779
      (coe
         du442 (coe v1)
         (coe MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)))
name758 = "Relation.Binary.Construct.On.decTotalOrder"
d758 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Binary.Bundles.T658
d758 v0 v1 v2 v3 v4 v5 v6 = du758 v5 v6
du758 ::
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Binary.Bundles.T658
du758 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C7777
      (coe
         du498 (coe v1)
         (coe MAlonzo.Code.Relation.Binary.Bundles.d680 (coe v0)))
name776 = "Relation.Binary.Construct.On.strictTotalOrder"
d776 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Binary.Bundles.T780 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Binary.Bundles.T780
d776 v0 v1 v2 v3 v4 v5 v6 = du776 v5 v6
du776 ::
  MAlonzo.Code.Relation.Binary.Bundles.T780 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Binary.Bundles.T780
du776 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C9189
      (coe
         du568 (coe v1)
         (coe MAlonzo.Code.Relation.Binary.Bundles.d802 (coe v0)))
