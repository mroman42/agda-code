{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Algebra.Structures.Biased where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Consequences.Setoid
import qualified MAlonzo.Code.Algebra.Structures

name18 = "Algebra.Structures.Biased._._DistributesOver_"
d18 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d18 = erased
name20 = "Algebra.Structures.Biased._._DistributesOverʳ_"
d20 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d20 = erased
name22 = "Algebra.Structures.Biased._._DistributesOverˡ_"
d22 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d22 = erased
name32 = "Algebra.Structures.Biased._.Commutative"
d32 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d32 = erased
name44 = "Algebra.Structures.Biased._.Identity"
d44 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d44 = erased
name58 = "Algebra.Structures.Biased._.LeftIdentity"
d58 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d58 = erased
name62 = "Algebra.Structures.Biased._.LeftZero"
d62 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d62 = erased
name70 = "Algebra.Structures.Biased._.RightIdentity"
d70 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d70 = erased
name74 = "Algebra.Structures.Biased._.RightZero"
d74 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d74 = erased
name78 = "Algebra.Structures.Biased._.Zero"
d78 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d78 = erased
name82 = "Algebra.Structures.Biased._.IsAbelianGroup"
d82 a0 a1 a2 a3 a4 a5 a6 = ()
name90 = "Algebra.Structures.Biased._.IsCommutativeMonoid"
d90 a0 a1 a2 a3 a4 a5 = ()
name96 = "Algebra.Structures.Biased._.IsCommutativeSemiring"
d96 a0 a1 a2 a3 a4 a5 a6 a7 = ()
name110 = "Algebra.Structures.Biased._.IsMonoid"
d110 a0 a1 a2 a3 a4 a5 = ()
name114 = "Algebra.Structures.Biased._.IsRing"
d114 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
name118 = "Algebra.Structures.Biased._.IsSemigroup"
d118 a0 a1 a2 a3 a4 = ()
name1350 = "Algebra.Structures.Biased.IsCommutativeMonoidˡ"
d1350 a0 a1 a2 a3 a4 a5 = ()
data T1350
  = C13611 MAlonzo.Code.Algebra.Structures.T116 (AgdaAny -> AgdaAny)
           (AgdaAny -> AgdaAny -> AgdaAny)
name1362
  = "Algebra.Structures.Biased.IsCommutativeMonoidˡ.isSemigroup"
d1362 :: T1350 -> MAlonzo.Code.Algebra.Structures.T116
d1362 v0
  = case coe v0 of
      C13611 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1364
  = "Algebra.Structures.Biased.IsCommutativeMonoidˡ.identityˡ"
d1364 :: T1350 -> AgdaAny -> AgdaAny
d1364 v0
  = case coe v0 of
      C13611 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name1366 = "Algebra.Structures.Biased.IsCommutativeMonoidˡ.comm"
d1366 :: T1350 -> AgdaAny -> AgdaAny -> AgdaAny
d1366 v0
  = case coe v0 of
      C13611 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1394
  = "Algebra.Structures.Biased.IsCommutativeMonoidˡ.identityʳ"
d1394 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T1350 -> AgdaAny -> AgdaAny
d1394 v0 v1 v2 v3 v4 v5 v6 = du1394 v4 v5 v6
du1394 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T1350 -> AgdaAny -> AgdaAny
du1394 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du168
      (let v3 = d1362 (coe v2) in
       coe
         MAlonzo.Code.Algebra.Structures.du104
         (coe MAlonzo.Code.Algebra.Structures.d124 (coe v3)))
      (coe v0) (coe d1366 (coe v2)) (coe v1) (coe d1364 (coe v2))
name1396
  = "Algebra.Structures.Biased.IsCommutativeMonoidˡ.identity"
d1396 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T1350 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1396 v0 v1 v2 v3 v4 v5 v6 = du1396 v4 v5 v6
du1396 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T1350 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1396 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe d1364 (coe v2))
      (coe du1394 (coe v0) (coe v1) (coe v2))
name1398
  = "Algebra.Structures.Biased.IsCommutativeMonoidˡ.isCommutativeMonoid"
d1398 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T1350 -> MAlonzo.Code.Algebra.Structures.T362
d1398 v0 v1 v2 v3 v4 v5 v6 = du1398 v4 v5 v6
du1398 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T1350 -> MAlonzo.Code.Algebra.Structures.T362
du1398 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C5263
      (coe
         MAlonzo.Code.Algebra.Structures.C4201 (coe d1362 (coe v2))
         (coe du1396 (coe v0) (coe v1) (coe v2)))
      (coe d1366 (coe v2))
name1404 = "Algebra.Structures.Biased.IsCommutativeMonoidʳ"
d1404 a0 a1 a2 a3 a4 a5 = ()
data T1404
  = C14729 MAlonzo.Code.Algebra.Structures.T116 (AgdaAny -> AgdaAny)
           (AgdaAny -> AgdaAny -> AgdaAny)
name1416
  = "Algebra.Structures.Biased.IsCommutativeMonoidʳ.isSemigroup"
d1416 :: T1404 -> MAlonzo.Code.Algebra.Structures.T116
d1416 v0
  = case coe v0 of
      C14729 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1418
  = "Algebra.Structures.Biased.IsCommutativeMonoidʳ.identityʳ"
d1418 :: T1404 -> AgdaAny -> AgdaAny
d1418 v0
  = case coe v0 of
      C14729 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name1420 = "Algebra.Structures.Biased.IsCommutativeMonoidʳ.comm"
d1420 :: T1404 -> AgdaAny -> AgdaAny -> AgdaAny
d1420 v0
  = case coe v0 of
      C14729 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1448
  = "Algebra.Structures.Biased.IsCommutativeMonoidʳ.identityˡ"
d1448 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T1404 -> AgdaAny -> AgdaAny
d1448 v0 v1 v2 v3 v4 v5 v6 = du1448 v4 v5 v6
du1448 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T1404 -> AgdaAny -> AgdaAny
du1448 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du174
      (let v3 = d1416 (coe v2) in
       coe
         MAlonzo.Code.Algebra.Structures.du104
         (coe MAlonzo.Code.Algebra.Structures.d124 (coe v3)))
      (coe v0) (coe d1420 (coe v2)) (coe v1) (coe d1418 (coe v2))
name1450
  = "Algebra.Structures.Biased.IsCommutativeMonoidʳ.identity"
d1450 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T1404 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1450 v0 v1 v2 v3 v4 v5 v6 = du1450 v4 v5 v6
du1450 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T1404 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1450 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32
      (coe du1448 (coe v0) (coe v1) (coe v2)) (coe d1418 (coe v2))
name1452
  = "Algebra.Structures.Biased.IsCommutativeMonoidʳ.isCommutativeMonoid"
d1452 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T1404 -> MAlonzo.Code.Algebra.Structures.T362
d1452 v0 v1 v2 v3 v4 v5 v6 = du1452 v4 v5 v6
du1452 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T1404 -> MAlonzo.Code.Algebra.Structures.T362
du1452 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C5263
      (coe
         MAlonzo.Code.Algebra.Structures.C4201 (coe d1416 (coe v2))
         (coe du1450 (coe v0) (coe v1) (coe v2)))
      (coe d1420 (coe v2))
name1462 = "Algebra.Structures.Biased.IsCommutativeSemiringˡ"
d1462 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T1462
  = C15865 MAlonzo.Code.Algebra.Structures.T362
           MAlonzo.Code.Algebra.Structures.T362
           (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny)
name1480
  = "Algebra.Structures.Biased.IsCommutativeSemiringˡ.+-isCommutativeMonoid"
d1480 :: T1462 -> MAlonzo.Code.Algebra.Structures.T362
d1480 v0
  = case coe v0 of
      C15865 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1482
  = "Algebra.Structures.Biased.IsCommutativeSemiringˡ.*-isCommutativeMonoid"
d1482 :: T1462 -> MAlonzo.Code.Algebra.Structures.T362
d1482 v0
  = case coe v0 of
      C15865 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name1484
  = "Algebra.Structures.Biased.IsCommutativeSemiringˡ.distribʳ"
d1484 :: T1462 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1484 v0
  = case coe v0 of
      C15865 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1486 = "Algebra.Structures.Biased.IsCommutativeSemiringˡ.zeroˡ"
d1486 :: T1462 -> AgdaAny -> AgdaAny
d1486 v0
  = case coe v0 of
      C15865 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1532
  = "Algebra.Structures.Biased.IsCommutativeSemiringˡ.*-CM.comm"
d1532 :: T1462 -> AgdaAny -> AgdaAny -> AgdaAny
d1532 v0
  = coe MAlonzo.Code.Algebra.Structures.d374 (coe d1482 (coe v0))
name1568
  = "Algebra.Structures.Biased.IsCommutativeSemiringˡ.distribˡ"
d1568 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1462 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1568 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1568 v4 v5 v8
du1568 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T1462 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1568 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du290
      (let v3 = d1480 (coe v2) in
       let v4 = MAlonzo.Code.Algebra.Structures.d372 (coe v3) in
       let v5 = MAlonzo.Code.Algebra.Structures.d324 (coe v4) in
       coe
         MAlonzo.Code.Algebra.Structures.du104
         (coe MAlonzo.Code.Algebra.Structures.d124 (coe v5)))
      (coe v1) (coe v0)
      (coe
         MAlonzo.Code.Algebra.Structures.d90
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe MAlonzo.Code.Algebra.Structures.d372 (coe d1480 (coe v2))))))
      (coe MAlonzo.Code.Algebra.Structures.d374 (coe d1482 (coe v2)))
      (coe d1484 (coe v2))
name1570
  = "Algebra.Structures.Biased.IsCommutativeSemiringˡ.distrib"
d1570 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1462 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1570 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1570 v4 v5 v8
du1570 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T1462 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1570 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32
      (coe du1568 (coe v0) (coe v1) (coe v2)) (coe d1484 (coe v2))
name1572 = "Algebra.Structures.Biased.IsCommutativeSemiringˡ.zeroʳ"
d1572 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1462 -> AgdaAny -> AgdaAny
d1572 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1572 v5 v6 v8
du1572 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T1462 -> AgdaAny -> AgdaAny
du1572 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du180
      (let v3 = d1480 (coe v2) in
       let v4 = MAlonzo.Code.Algebra.Structures.d372 (coe v3) in
       let v5 = MAlonzo.Code.Algebra.Structures.d324 (coe v4) in
       coe
         MAlonzo.Code.Algebra.Structures.du104
         (coe MAlonzo.Code.Algebra.Structures.d124 (coe v5)))
      (coe v0)
      (coe MAlonzo.Code.Algebra.Structures.d374 (coe d1482 (coe v2)))
      (coe v1) (coe d1486 (coe v2))
name1574 = "Algebra.Structures.Biased.IsCommutativeSemiringˡ.zero"
d1574 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1462 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1574 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1574 v5 v6 v8
du1574 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T1462 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1574 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe d1486 (coe v2))
      (coe du1572 (coe v0) (coe v1) (coe v2))
name1576
  = "Algebra.Structures.Biased.IsCommutativeSemiringˡ.isCommutativeSemiring"
d1576 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1462 -> MAlonzo.Code.Algebra.Structures.T1280
d1576 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1576 v4 v5 v6 v8
du1576 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T1462 -> MAlonzo.Code.Algebra.Structures.T1280
du1576 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.C23247
      (coe
         MAlonzo.Code.Algebra.Structures.C21401
         (coe
            MAlonzo.Code.Algebra.Structures.C19373 (coe d1480 (coe v3))
            (coe MAlonzo.Code.Algebra.Structures.d372 (coe d1482 (coe v3)))
            (coe du1570 (coe v0) (coe v1) (coe v3)))
         (coe du1574 (coe v1) (coe v2) (coe v3)))
      (coe MAlonzo.Code.Algebra.Structures.d374 (coe d1482 (coe v3)))
name1586 = "Algebra.Structures.Biased.IsCommutativeSemiringʳ"
d1586 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T1586
  = C19035 MAlonzo.Code.Algebra.Structures.T362
           MAlonzo.Code.Algebra.Structures.T362
           (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny)
name1604
  = "Algebra.Structures.Biased.IsCommutativeSemiringʳ.+-isCommutativeMonoid"
d1604 :: T1586 -> MAlonzo.Code.Algebra.Structures.T362
d1604 v0
  = case coe v0 of
      C19035 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1606
  = "Algebra.Structures.Biased.IsCommutativeSemiringʳ.*-isCommutativeMonoid"
d1606 :: T1586 -> MAlonzo.Code.Algebra.Structures.T362
d1606 v0
  = case coe v0 of
      C19035 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name1608
  = "Algebra.Structures.Biased.IsCommutativeSemiringʳ.distribˡ"
d1608 :: T1586 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1608 v0
  = case coe v0 of
      C19035 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1610 = "Algebra.Structures.Biased.IsCommutativeSemiringʳ.zeroʳ"
d1610 :: T1586 -> AgdaAny -> AgdaAny
d1610 v0
  = case coe v0 of
      C19035 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1656
  = "Algebra.Structures.Biased.IsCommutativeSemiringʳ.*-CM.comm"
d1656 :: T1586 -> AgdaAny -> AgdaAny -> AgdaAny
d1656 v0
  = coe MAlonzo.Code.Algebra.Structures.d374 (coe d1606 (coe v0))
name1692
  = "Algebra.Structures.Biased.IsCommutativeSemiringʳ.distribʳ"
d1692 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1586 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1692 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1692 v4 v5 v8
du1692 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T1586 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1692 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du280
      (let v3 = d1604 (coe v2) in
       let v4 = MAlonzo.Code.Algebra.Structures.d372 (coe v3) in
       let v5 = MAlonzo.Code.Algebra.Structures.d324 (coe v4) in
       coe
         MAlonzo.Code.Algebra.Structures.du104
         (coe MAlonzo.Code.Algebra.Structures.d124 (coe v5)))
      (coe v1) (coe v0)
      (coe
         MAlonzo.Code.Algebra.Structures.d90
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe MAlonzo.Code.Algebra.Structures.d372 (coe d1604 (coe v2))))))
      (coe MAlonzo.Code.Algebra.Structures.d374 (coe d1606 (coe v2)))
      (coe d1608 (coe v2))
name1694
  = "Algebra.Structures.Biased.IsCommutativeSemiringʳ.distrib"
d1694 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1586 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1694 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1694 v4 v5 v8
du1694 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T1586 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1694 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe d1608 (coe v2))
      (coe du1692 (coe v0) (coe v1) (coe v2))
name1696 = "Algebra.Structures.Biased.IsCommutativeSemiringʳ.zeroˡ"
d1696 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1586 -> AgdaAny -> AgdaAny
d1696 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1696 v5 v6 v8
du1696 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T1586 -> AgdaAny -> AgdaAny
du1696 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du186
      (let v3 = d1604 (coe v2) in
       let v4 = MAlonzo.Code.Algebra.Structures.d372 (coe v3) in
       let v5 = MAlonzo.Code.Algebra.Structures.d324 (coe v4) in
       coe
         MAlonzo.Code.Algebra.Structures.du104
         (coe MAlonzo.Code.Algebra.Structures.d124 (coe v5)))
      (coe v0)
      (coe MAlonzo.Code.Algebra.Structures.d374 (coe d1606 (coe v2)))
      (coe v1) (coe d1610 (coe v2))
name1698 = "Algebra.Structures.Biased.IsCommutativeSemiringʳ.zero"
d1698 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1586 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1698 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1698 v5 v6 v8
du1698 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T1586 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1698 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32
      (coe du1696 (coe v0) (coe v1) (coe v2)) (coe d1610 (coe v2))
name1700
  = "Algebra.Structures.Biased.IsCommutativeSemiringʳ.isCommutativeSemiring"
d1700 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1586 -> MAlonzo.Code.Algebra.Structures.T1280
d1700 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1700 v4 v5 v6 v8
du1700 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T1586 -> MAlonzo.Code.Algebra.Structures.T1280
du1700 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.C23247
      (coe
         MAlonzo.Code.Algebra.Structures.C21401
         (coe
            MAlonzo.Code.Algebra.Structures.C19373 (coe d1604 (coe v3))
            (coe MAlonzo.Code.Algebra.Structures.d372 (coe d1606 (coe v3)))
            (coe du1694 (coe v0) (coe v1) (coe v3)))
         (coe du1698 (coe v1) (coe v2) (coe v3)))
      (coe MAlonzo.Code.Algebra.Structures.d374 (coe d1606 (coe v3)))
name1712
  = "Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero"
d1712 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T1712
  = C22231 MAlonzo.Code.Algebra.Structures.T610
           MAlonzo.Code.Algebra.Structures.T314
           MAlonzo.Code.Agda.Builtin.Sigma.T14
name1730
  = "Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+-isAbelianGroup"
d1730 :: T1712 -> MAlonzo.Code.Algebra.Structures.T610
d1730 v0
  = case coe v0 of
      C22231 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1732
  = "Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*-isMonoid"
d1732 :: T1712 -> MAlonzo.Code.Algebra.Structures.T314
d1732 v0
  = case coe v0 of
      C22231 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name1734
  = "Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.distrib"
d1734 :: T1712 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1734 v0
  = case coe v0 of
      C22231 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1828
  = "Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.zeroˡ"
d1828 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1712 -> AgdaAny -> AgdaAny
d1828 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1828 v4 v5 v6 v7 v9
du1828 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> T1712 -> AgdaAny -> AgdaAny
du1828 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du332
      (let v5 = d1730 (coe v4) in
       let v6 = MAlonzo.Code.Algebra.Structures.d622 (coe v5) in
       let v7 = MAlonzo.Code.Algebra.Structures.d542 (coe v6) in
       let v8 = MAlonzo.Code.Algebra.Structures.d324 (coe v7) in
       coe
         MAlonzo.Code.Algebra.Structures.du104
         (coe MAlonzo.Code.Algebra.Structures.d124 (coe v8)))
      (coe v0) (coe v1) (coe v2) (coe v3)
      (coe
         MAlonzo.Code.Algebra.Structures.d90
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d542
                  (coe MAlonzo.Code.Algebra.Structures.d622 (coe d1730 (coe v4)))))))
      (coe
         MAlonzo.Code.Algebra.Structures.d90
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe MAlonzo.Code.Algebra.Structures.d324 (coe d1732 (coe v4)))))
      (coe
         MAlonzo.Code.Algebra.Structures.d126
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d542
               (coe MAlonzo.Code.Algebra.Structures.d622 (coe d1730 (coe v4))))))
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d1734 (coe v4)))
      (let v5 = d1730 (coe v4) in
       let v6 = MAlonzo.Code.Algebra.Structures.d622 (coe v5) in
       let v7 = MAlonzo.Code.Algebra.Structures.d542 (coe v6) in
       coe
         MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe MAlonzo.Code.Algebra.Structures.d326 (coe v7)))
      (let v5 = d1730 (coe v4) in
       let v6 = MAlonzo.Code.Algebra.Structures.d622 (coe v5) in
       coe
         MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe MAlonzo.Code.Algebra.Structures.d544 (coe v6)))
name1830
  = "Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.zeroʳ"
d1830 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1712 -> AgdaAny -> AgdaAny
d1830 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1830 v4 v5 v6 v7 v9
du1830 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> T1712 -> AgdaAny -> AgdaAny
du1830 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du344
      (let v5 = d1730 (coe v4) in
       let v6 = MAlonzo.Code.Algebra.Structures.d622 (coe v5) in
       let v7 = MAlonzo.Code.Algebra.Structures.d542 (coe v6) in
       let v8 = MAlonzo.Code.Algebra.Structures.d324 (coe v7) in
       coe
         MAlonzo.Code.Algebra.Structures.du104
         (coe MAlonzo.Code.Algebra.Structures.d124 (coe v8)))
      (coe v0) (coe v1) (coe v2) (coe v3)
      (coe
         MAlonzo.Code.Algebra.Structures.d90
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d542
                  (coe MAlonzo.Code.Algebra.Structures.d622 (coe d1730 (coe v4)))))))
      (coe
         MAlonzo.Code.Algebra.Structures.d90
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe MAlonzo.Code.Algebra.Structures.d324 (coe d1732 (coe v4)))))
      (coe
         MAlonzo.Code.Algebra.Structures.d126
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d542
               (coe MAlonzo.Code.Algebra.Structures.d622 (coe d1730 (coe v4))))))
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d1734 (coe v4)))
      (let v5 = d1730 (coe v4) in
       let v6 = MAlonzo.Code.Algebra.Structures.d622 (coe v5) in
       let v7 = MAlonzo.Code.Algebra.Structures.d542 (coe v6) in
       coe
         MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe MAlonzo.Code.Algebra.Structures.d326 (coe v7)))
      (let v5 = d1730 (coe v4) in
       let v6 = MAlonzo.Code.Algebra.Structures.d622 (coe v5) in
       coe
         MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe MAlonzo.Code.Algebra.Structures.d544 (coe v6)))
name1832
  = "Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.zero"
d1832 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1712 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1832 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1832 v4 v5 v6 v7 v9
du1832 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T1712 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1832 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32
      (coe du1828 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
      (coe du1830 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
name1834
  = "Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.isRing"
d1834 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1712 -> MAlonzo.Code.Algebra.Structures.T1394
d1834 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1834 v4 v5 v6 v7 v9
du1834 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T1712 -> MAlonzo.Code.Algebra.Structures.T1394
du1834 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.C25405 (coe d1730 (coe v4))
      (coe d1732 (coe v4)) (coe d1734 (coe v4))
      (coe du1832 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
