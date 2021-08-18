{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Bool.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Properties.BooleanAlgebra
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Equivalence
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Definitions
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary

name8 = "Data.Bool.Properties._._Absorbs_"
d8 :: (Bool -> Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d8 = erased
name10 = "Data.Bool.Properties._._DistributesOver_"
d10 :: (Bool -> Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d10 = erased
name12 = "Data.Bool.Properties._._DistributesOverʳ_"
d12 :: (Bool -> Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d12 = erased
name14 = "Data.Bool.Properties._._DistributesOverˡ_"
d14 :: (Bool -> Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d14 = erased
name18 = "Data.Bool.Properties._.Absorptive"
d18 :: (Bool -> Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d18 = erased
name20 = "Data.Bool.Properties._.Associative"
d20 :: (Bool -> Bool -> Bool) -> ()
d20 = erased
name24 = "Data.Bool.Properties._.Commutative"
d24 :: (Bool -> Bool -> Bool) -> ()
d24 = erased
name32 = "Data.Bool.Properties._.Idempotent"
d32 :: (Bool -> Bool -> Bool) -> ()
d32 = erased
name36 = "Data.Bool.Properties._.Identity"
d36 :: Bool -> (Bool -> Bool -> Bool) -> ()
d36 = erased
name40 = "Data.Bool.Properties._.Inverse"
d40 :: Bool -> (Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d40 = erased
name42 = "Data.Bool.Properties._.Involutive"
d42 :: (Bool -> Bool) -> ()
d42 = erased
name50 = "Data.Bool.Properties._.LeftIdentity"
d50 :: Bool -> (Bool -> Bool -> Bool) -> ()
d50 = erased
name52 = "Data.Bool.Properties._.LeftInverse"
d52 :: Bool -> (Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d52 = erased
name54 = "Data.Bool.Properties._.LeftZero"
d54 :: Bool -> (Bool -> Bool -> Bool) -> ()
d54 = erased
name62 = "Data.Bool.Properties._.RightIdentity"
d62 :: Bool -> (Bool -> Bool -> Bool) -> ()
d62 = erased
name64 = "Data.Bool.Properties._.RightInverse"
d64 :: Bool -> (Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d64 = erased
name66 = "Data.Bool.Properties._.RightZero"
d66 :: Bool -> (Bool -> Bool -> Bool) -> ()
d66 = erased
name68 = "Data.Bool.Properties._.Selective"
d68 :: (Bool -> Bool -> Bool) -> ()
d68 = erased
name70 = "Data.Bool.Properties._.Zero"
d70 :: Bool -> (Bool -> Bool -> Bool) -> ()
d70 = erased
name76 = "Data.Bool.Properties._.IsBand"
d76 a0 = ()
name78 = "Data.Bool.Properties._.IsBooleanAlgebra"
d78 a0 a1 a2 a3 a4 = ()
name82 = "Data.Bool.Properties._.IsCommutativeMonoid"
d82 a0 a1 = ()
name88 = "Data.Bool.Properties._.IsCommutativeSemiring"
d88 a0 a1 a2 a3 = ()
name92 = "Data.Bool.Properties._.IsDistributiveLattice"
d92 a0 a1 = ()
name96 = "Data.Bool.Properties._.IsIdempotentCommutativeMonoid"
d96 a0 a1 = ()
name98 = "Data.Bool.Properties._.IsLattice"
d98 a0 a1 = ()
name100 = "Data.Bool.Properties._.IsMagma"
d100 a0 = ()
name102 = "Data.Bool.Properties._.IsMonoid"
d102 a0 a1 = ()
name110 = "Data.Bool.Properties._.IsSemigroup"
d110 a0 = ()
name112 = "Data.Bool.Properties._.IsSemilattice"
d112 a0 = ()
name114 = "Data.Bool.Properties._.IsSemiring"
d114 a0 a1 a2 a3 = ()
name1346 = "Data.Bool.Properties._≟_"
d1346 :: Bool -> Bool -> MAlonzo.Code.Relation.Nullary.T32
d1346 v0 v1
  = if coe v0
      then if coe v1
             then coe
                    MAlonzo.Code.Relation.Nullary.C46 (coe v1)
                    (coe MAlonzo.Code.Relation.Nullary.C22 erased)
             else coe
                    MAlonzo.Code.Relation.Nullary.C46 (coe v1)
                    (coe MAlonzo.Code.Relation.Nullary.C26)
      else (if coe v1
              then coe
                     MAlonzo.Code.Relation.Nullary.C46 (coe v0)
                     (coe MAlonzo.Code.Relation.Nullary.C26)
              else coe
                     MAlonzo.Code.Relation.Nullary.C46
                     (coe MAlonzo.Code.Agda.Builtin.Bool.C10)
                     (coe MAlonzo.Code.Relation.Nullary.C22 erased))
name1348 = "Data.Bool.Properties.≡-setoid"
d1348 :: MAlonzo.Code.Relation.Binary.Bundles.T44
d1348 = coe MAlonzo.Code.Relation.Binary.PropositionalEquality.du74
name1350 = "Data.Bool.Properties.≡-decSetoid"
d1350 :: MAlonzo.Code.Relation.Binary.Bundles.T84
d1350
  = coe
      MAlonzo.Code.Relation.Binary.PropositionalEquality.du78 (coe d1346)
name1352 = "Data.Bool.Properties.≤-reflexive"
d1352 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Bool.Base.T10
d1352 v0 v1 v2 = du1352
du1352 :: MAlonzo.Code.Data.Bool.Base.T10
du1352 = coe MAlonzo.Code.Data.Bool.Base.C16
name1354 = "Data.Bool.Properties.≤-refl"
d1354 :: Bool -> MAlonzo.Code.Data.Bool.Base.T10
d1354 v0 = du1354
du1354 :: MAlonzo.Code.Data.Bool.Base.T10
du1354 = coe du1352
name1356 = "Data.Bool.Properties.≤-trans"
d1356 ::
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T10 ->
  MAlonzo.Code.Data.Bool.Base.T10 -> MAlonzo.Code.Data.Bool.Base.T10
d1356 v0 v1 v2 v3 v4 = du1356 v3 v4
du1356 ::
  MAlonzo.Code.Data.Bool.Base.T10 ->
  MAlonzo.Code.Data.Bool.Base.T10 -> MAlonzo.Code.Data.Bool.Base.T10
du1356 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Bool.Base.C12 -> coe seq (coe v1) (coe v0)
      MAlonzo.Code.Data.Bool.Base.C16 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1360 = "Data.Bool.Properties.≤-antisym"
d1360 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T10 ->
  MAlonzo.Code.Data.Bool.Base.T10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1360 = erased
name1362 = "Data.Bool.Properties.≤-minimum"
d1362 :: Bool -> MAlonzo.Code.Data.Bool.Base.T10
d1362 v0
  = if coe v0
      then coe MAlonzo.Code.Data.Bool.Base.C12
      else coe MAlonzo.Code.Data.Bool.Base.C16
name1364 = "Data.Bool.Properties.≤-maximum"
d1364 :: Bool -> MAlonzo.Code.Data.Bool.Base.T10
d1364 v0
  = if coe v0
      then coe MAlonzo.Code.Data.Bool.Base.C16
      else coe MAlonzo.Code.Data.Bool.Base.C12
name1366 = "Data.Bool.Properties.≤-total"
d1366 :: Bool -> Bool -> MAlonzo.Code.Data.Sum.Base.T30
d1366 v0 v1
  = if coe v0
      then coe MAlonzo.Code.Data.Sum.Base.C42 (coe d1364 (coe v1))
      else coe MAlonzo.Code.Data.Sum.Base.C38 (coe d1362 (coe v1))
name1372 = "Data.Bool.Properties._≤?_"
d1372 :: Bool -> Bool -> MAlonzo.Code.Relation.Nullary.T32
d1372 v0 v1
  = if coe v0
      then if coe v1
             then coe
                    MAlonzo.Code.Relation.Nullary.C46 (coe v1)
                    (coe
                       MAlonzo.Code.Relation.Nullary.C22
                       (coe MAlonzo.Code.Data.Bool.Base.C16))
             else coe
                    MAlonzo.Code.Relation.Nullary.C46 (coe v1)
                    (coe MAlonzo.Code.Relation.Nullary.C26)
      else coe
             MAlonzo.Code.Relation.Nullary.C46
             (coe MAlonzo.Code.Agda.Builtin.Bool.C10)
             (coe MAlonzo.Code.Relation.Nullary.C22 (coe d1362 (coe v1)))
name1376 = "Data.Bool.Properties.≤-irrelevant"
d1376 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T10 ->
  MAlonzo.Code.Data.Bool.Base.T10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1376 = erased
name1378 = "Data.Bool.Properties.≤-isPreorder"
d1378 :: MAlonzo.Code.Relation.Binary.Structures.T70
d1378
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C2113
      (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.du66)
      (\ v0 v1 v2 -> coe du1352) (\ v0 v1 v2 v3 v4 -> coe du1356 v3 v4)
name1380 = "Data.Bool.Properties.≤-isPartialOrder"
d1380 :: MAlonzo.Code.Relation.Binary.Structures.T118
d1380
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C4865 (coe d1378) erased
name1382 = "Data.Bool.Properties.≤-isTotalOrder"
d1382 :: MAlonzo.Code.Relation.Binary.Structures.T340
d1382
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C11665 (coe d1380)
      (coe d1366)
name1384 = "Data.Bool.Properties.≤-isDecTotalOrder"
d1384 :: MAlonzo.Code.Relation.Binary.Structures.T388
d1384
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C12739 (coe d1382)
      (coe d1346) (coe d1372)
name1386 = "Data.Bool.Properties.≤-poset"
d1386 :: MAlonzo.Code.Relation.Binary.Bundles.T204
d1386 = coe MAlonzo.Code.Relation.Binary.Bundles.C2365 d1380
name1388 = "Data.Bool.Properties.≤-preorder"
d1388 :: MAlonzo.Code.Relation.Binary.Bundles.T132
d1388 = coe MAlonzo.Code.Relation.Binary.Bundles.C1509 d1378
name1390 = "Data.Bool.Properties.≤-totalOrder"
d1390 :: MAlonzo.Code.Relation.Binary.Bundles.T574
d1390 = coe MAlonzo.Code.Relation.Binary.Bundles.C6779 d1382
name1392 = "Data.Bool.Properties.≤-decTotalOrder"
d1392 :: MAlonzo.Code.Relation.Binary.Bundles.T658
d1392 = coe MAlonzo.Code.Relation.Binary.Bundles.C7777 d1384
name1394 = "Data.Bool.Properties.<-irrefl"
d1394 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Bool.Base.T18 -> MAlonzo.Code.Data.Empty.T4
d1394 = erased
name1396 = "Data.Bool.Properties.<-asym"
d1396 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T18 ->
  MAlonzo.Code.Data.Bool.Base.T18 -> MAlonzo.Code.Data.Empty.T4
d1396 = erased
name1398 = "Data.Bool.Properties.<-trans"
d1398 ::
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T18 ->
  MAlonzo.Code.Data.Bool.Base.T18 -> MAlonzo.Code.Data.Bool.Base.T18
d1398 = erased
name1400 = "Data.Bool.Properties.<-transʳ"
d1400 ::
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T10 ->
  MAlonzo.Code.Data.Bool.Base.T18 -> MAlonzo.Code.Data.Bool.Base.T18
d1400 = erased
name1402 = "Data.Bool.Properties.<-transˡ"
d1402 ::
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T18 ->
  MAlonzo.Code.Data.Bool.Base.T10 -> MAlonzo.Code.Data.Bool.Base.T18
d1402 = erased
name1404 = "Data.Bool.Properties.<-cmp"
d1404 ::
  Bool -> Bool -> MAlonzo.Code.Relation.Binary.Definitions.T136
d1404 v0 v1
  = if coe v0
      then if coe v1
             then coe MAlonzo.Code.Relation.Binary.Definitions.C158 erased
             else coe MAlonzo.Code.Relation.Binary.Definitions.C166 erased
      else (if coe v1
              then coe MAlonzo.Code.Relation.Binary.Definitions.C150 erased
              else coe MAlonzo.Code.Relation.Binary.Definitions.C158 erased)
name1406 = "Data.Bool.Properties._<?_"
d1406 :: Bool -> Bool -> MAlonzo.Code.Relation.Nullary.T32
d1406 v0 v1
  = if coe v0
      then coe
             MAlonzo.Code.Relation.Nullary.C46
             (coe MAlonzo.Code.Agda.Builtin.Bool.C8)
             (coe MAlonzo.Code.Relation.Nullary.C26)
      else (if coe v1
              then coe
                     MAlonzo.Code.Relation.Nullary.C46 (coe v1)
                     (coe MAlonzo.Code.Relation.Nullary.C22 erased)
              else coe
                     MAlonzo.Code.Relation.Nullary.C46 (coe v1)
                     (coe MAlonzo.Code.Relation.Nullary.C26))
name1408 = "Data.Bool.Properties.<-resp₂-≡"
d1408 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d1408
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe (\ v0 v1 v2 v3 v4 -> v4))
      (coe (\ v0 v1 v2 v3 v4 -> v4))
name1414 = "Data.Bool.Properties.<-irrelevant"
d1414 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T18 ->
  MAlonzo.Code.Data.Bool.Base.T18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1414 = erased
name1416 = "Data.Bool.Properties.<-isStrictPartialOrder"
d1416 :: MAlonzo.Code.Relation.Binary.Structures.T222
d1416
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C7193
      (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.du66)
      erased d1408
name1418 = "Data.Bool.Properties.<-isStrictTotalOrder"
d1418 :: MAlonzo.Code.Relation.Binary.Structures.T454
d1418
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C14057
      (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.du66)
      erased (coe d1404)
name1420 = "Data.Bool.Properties.<-strictPartialOrder"
d1420 :: MAlonzo.Code.Relation.Binary.Bundles.T394
d1420 = coe MAlonzo.Code.Relation.Binary.Bundles.C4625 d1416
name1422 = "Data.Bool.Properties.<-strictTotalOrder"
d1422 :: MAlonzo.Code.Relation.Binary.Bundles.T780
d1422 = coe MAlonzo.Code.Relation.Binary.Bundles.C9189 d1418
name1424 = "Data.Bool.Properties.∨-assoc"
d1424 ::
  Bool -> Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1424 = erased
name1434 = "Data.Bool.Properties.∨-comm"
d1434 :: Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1434 = erased
name1436 = "Data.Bool.Properties.∨-identityˡ"
d1436 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1436 = erased
name1438 = "Data.Bool.Properties.∨-identityʳ"
d1438 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1438 = erased
name1440 = "Data.Bool.Properties.∨-identity"
d1440 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d1440 = coe MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased
name1442 = "Data.Bool.Properties.∨-zeroˡ"
d1442 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1442 = erased
name1444 = "Data.Bool.Properties.∨-zeroʳ"
d1444 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1444 = erased
name1446 = "Data.Bool.Properties.∨-zero"
d1446 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d1446 = coe MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased
name1448 = "Data.Bool.Properties.∨-inverseˡ"
d1448 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1448 = erased
name1450 = "Data.Bool.Properties.∨-inverseʳ"
d1450 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1450 = erased
name1454 = "Data.Bool.Properties.∨-inverse"
d1454 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d1454 = coe MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased
name1456 = "Data.Bool.Properties.∨-idem"
d1456 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1456 = erased
name1458 = "Data.Bool.Properties.∨-sel"
d1458 :: Bool -> Bool -> MAlonzo.Code.Data.Sum.Base.T30
d1458 v0 v1 = du1458 v0
du1458 :: Bool -> MAlonzo.Code.Data.Sum.Base.T30
du1458 v0
  = if coe v0
      then coe MAlonzo.Code.Data.Sum.Base.C38 erased
      else coe MAlonzo.Code.Data.Sum.Base.C42 erased
name1464 = "Data.Bool.Properties.∨-isMagma"
d1464 :: MAlonzo.Code.Algebra.Structures.T80
d1464
  = coe
      MAlonzo.Code.Algebra.Structures.C423
      (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.du66)
      erased
name1466 = "Data.Bool.Properties.∨-magma"
d1466 :: MAlonzo.Code.Algebra.Bundles.T30
d1466
  = coe
      MAlonzo.Code.Algebra.Bundles.C255 MAlonzo.Code.Data.Bool.Base.d30
      d1464
name1468 = "Data.Bool.Properties.∨-isSemigroup"
d1468 :: MAlonzo.Code.Algebra.Structures.T116
d1468
  = coe MAlonzo.Code.Algebra.Structures.C1721 (coe d1464) erased
name1470 = "Data.Bool.Properties.∨-semigroup"
d1470 :: MAlonzo.Code.Algebra.Bundles.T80
d1470
  = coe
      MAlonzo.Code.Algebra.Bundles.C877 MAlonzo.Code.Data.Bool.Base.d30
      d1468
name1472 = "Data.Bool.Properties.∨-isBand"
d1472 :: MAlonzo.Code.Algebra.Structures.T152
d1472
  = coe MAlonzo.Code.Algebra.Structures.C2175 (coe d1468) erased
name1474 = "Data.Bool.Properties.∨-band"
d1474 :: MAlonzo.Code.Algebra.Bundles.T138
d1474
  = coe
      MAlonzo.Code.Algebra.Bundles.C1567 MAlonzo.Code.Data.Bool.Base.d30
      d1472
name1476 = "Data.Bool.Properties.∨-isSemilattice"
d1476 :: MAlonzo.Code.Algebra.Structures.T232
d1476
  = coe MAlonzo.Code.Algebra.Structures.C3189 (coe d1472) erased
name1478 = "Data.Bool.Properties.∨-semilattice"
d1478 :: MAlonzo.Code.Algebra.Bundles.T266
d1478
  = coe
      MAlonzo.Code.Algebra.Bundles.C3011 MAlonzo.Code.Data.Bool.Base.d30
      d1476
name1480 = "Data.Bool.Properties.∨-isMonoid"
d1480 :: MAlonzo.Code.Algebra.Structures.T314
d1480
  = coe MAlonzo.Code.Algebra.Structures.C4201 (coe d1468) (coe d1440)
name1482 = "Data.Bool.Properties.∨-isCommutativeMonoid"
d1482 :: MAlonzo.Code.Algebra.Structures.T362
d1482
  = coe MAlonzo.Code.Algebra.Structures.C5263 (coe d1480) erased
name1484 = "Data.Bool.Properties.∨-commutativeMonoid"
d1484 :: MAlonzo.Code.Algebra.Bundles.T496
d1484
  = coe
      MAlonzo.Code.Algebra.Bundles.C5649 MAlonzo.Code.Data.Bool.Base.d30
      (coe MAlonzo.Code.Agda.Builtin.Bool.C8) d1482
name1486 = "Data.Bool.Properties.∨-isIdempotentCommutativeMonoid"
d1486 :: MAlonzo.Code.Algebra.Structures.T416
d1486
  = coe MAlonzo.Code.Algebra.Structures.C6067 (coe d1482) erased
name1488 = "Data.Bool.Properties.∨-idempotentCommutativeMonoid"
d1488 :: MAlonzo.Code.Algebra.Bundles.T580
d1488
  = coe
      MAlonzo.Code.Algebra.Bundles.C6733 MAlonzo.Code.Data.Bool.Base.d30
      (coe MAlonzo.Code.Agda.Builtin.Bool.C8) d1486
name1490 = "Data.Bool.Properties.∧-assoc"
d1490 ::
  Bool -> Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1490 = erased
name1500 = "Data.Bool.Properties.∧-comm"
d1500 :: Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1500 = erased
name1502 = "Data.Bool.Properties.∧-identityˡ"
d1502 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1502 = erased
name1504 = "Data.Bool.Properties.∧-identityʳ"
d1504 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1504 = erased
name1506 = "Data.Bool.Properties.∧-identity"
d1506 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d1506 = coe MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased
name1508 = "Data.Bool.Properties.∧-zeroˡ"
d1508 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1508 = erased
name1510 = "Data.Bool.Properties.∧-zeroʳ"
d1510 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1510 = erased
name1512 = "Data.Bool.Properties.∧-zero"
d1512 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d1512 = coe MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased
name1514 = "Data.Bool.Properties.∧-inverseˡ"
d1514 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1514 = erased
name1516 = "Data.Bool.Properties.∧-inverseʳ"
d1516 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1516 = erased
name1520 = "Data.Bool.Properties.∧-inverse"
d1520 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d1520 = coe MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased
name1522 = "Data.Bool.Properties.∧-idem"
d1522 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1522 = erased
name1524 = "Data.Bool.Properties.∧-sel"
d1524 :: Bool -> Bool -> MAlonzo.Code.Data.Sum.Base.T30
d1524 v0 v1 = du1524 v0
du1524 :: Bool -> MAlonzo.Code.Data.Sum.Base.T30
du1524 v0
  = if coe v0
      then coe MAlonzo.Code.Data.Sum.Base.C42 erased
      else coe MAlonzo.Code.Data.Sum.Base.C38 erased
name1530 = "Data.Bool.Properties.∧-distribˡ-∨"
d1530 ::
  Bool -> Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1530 = erased
name1540 = "Data.Bool.Properties.∧-distribʳ-∨"
d1540 ::
  Bool -> Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1540 = erased
name1548 = "Data.Bool.Properties.∧-distrib-∨"
d1548 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d1548 = coe MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased
name1550 = "Data.Bool.Properties.∨-distribˡ-∧"
d1550 ::
  Bool -> Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1550 = erased
name1560 = "Data.Bool.Properties.∨-distribʳ-∧"
d1560 ::
  Bool -> Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1560 = erased
name1568 = "Data.Bool.Properties.∨-distrib-∧"
d1568 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d1568 = coe MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased
name1570 = "Data.Bool.Properties.∧-abs-∨"
d1570 :: Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1570 = erased
name1576 = "Data.Bool.Properties.∨-abs-∧"
d1576 :: Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1576 = erased
name1582 = "Data.Bool.Properties.∨-∧-absorptive"
d1582 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d1582 = coe MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased
name1584 = "Data.Bool.Properties.∧-isMagma"
d1584 :: MAlonzo.Code.Algebra.Structures.T80
d1584
  = coe
      MAlonzo.Code.Algebra.Structures.C423
      (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.du66)
      erased
name1586 = "Data.Bool.Properties.∧-magma"
d1586 :: MAlonzo.Code.Algebra.Bundles.T30
d1586
  = coe
      MAlonzo.Code.Algebra.Bundles.C255 MAlonzo.Code.Data.Bool.Base.d24
      d1584
name1588 = "Data.Bool.Properties.∧-isSemigroup"
d1588 :: MAlonzo.Code.Algebra.Structures.T116
d1588
  = coe MAlonzo.Code.Algebra.Structures.C1721 (coe d1584) erased
name1590 = "Data.Bool.Properties.∧-semigroup"
d1590 :: MAlonzo.Code.Algebra.Bundles.T80
d1590
  = coe
      MAlonzo.Code.Algebra.Bundles.C877 MAlonzo.Code.Data.Bool.Base.d24
      d1588
name1592 = "Data.Bool.Properties.∧-isBand"
d1592 :: MAlonzo.Code.Algebra.Structures.T152
d1592
  = coe MAlonzo.Code.Algebra.Structures.C2175 (coe d1588) erased
name1594 = "Data.Bool.Properties.∧-band"
d1594 :: MAlonzo.Code.Algebra.Bundles.T138
d1594
  = coe
      MAlonzo.Code.Algebra.Bundles.C1567 MAlonzo.Code.Data.Bool.Base.d24
      d1592
name1596 = "Data.Bool.Properties.∧-isSemilattice"
d1596 :: MAlonzo.Code.Algebra.Structures.T232
d1596
  = coe MAlonzo.Code.Algebra.Structures.C3189 (coe d1592) erased
name1598 = "Data.Bool.Properties.∧-semilattice"
d1598 :: MAlonzo.Code.Algebra.Bundles.T266
d1598
  = coe
      MAlonzo.Code.Algebra.Bundles.C3011 MAlonzo.Code.Data.Bool.Base.d24
      d1596
name1600 = "Data.Bool.Properties.∧-isMonoid"
d1600 :: MAlonzo.Code.Algebra.Structures.T314
d1600
  = coe MAlonzo.Code.Algebra.Structures.C4201 (coe d1588) (coe d1506)
name1602 = "Data.Bool.Properties.∧-isCommutativeMonoid"
d1602 :: MAlonzo.Code.Algebra.Structures.T362
d1602
  = coe MAlonzo.Code.Algebra.Structures.C5263 (coe d1600) erased
name1604 = "Data.Bool.Properties.∧-commutativeMonoid"
d1604 :: MAlonzo.Code.Algebra.Bundles.T496
d1604
  = coe
      MAlonzo.Code.Algebra.Bundles.C5649 MAlonzo.Code.Data.Bool.Base.d24
      (coe MAlonzo.Code.Agda.Builtin.Bool.C10) d1602
name1606 = "Data.Bool.Properties.∧-isIdempotentCommutativeMonoid"
d1606 :: MAlonzo.Code.Algebra.Structures.T416
d1606
  = coe MAlonzo.Code.Algebra.Structures.C6067 (coe d1602) erased
name1608 = "Data.Bool.Properties.∧-idempotentCommutativeMonoid"
d1608 :: MAlonzo.Code.Algebra.Bundles.T580
d1608
  = coe
      MAlonzo.Code.Algebra.Bundles.C6733 MAlonzo.Code.Data.Bool.Base.d24
      (coe MAlonzo.Code.Agda.Builtin.Bool.C10) d1606
name1610 = "Data.Bool.Properties.∨-∧-isSemiring"
d1610 :: MAlonzo.Code.Algebra.Structures.T1176
d1610
  = coe
      MAlonzo.Code.Algebra.Structures.C21401
      (coe
         MAlonzo.Code.Algebra.Structures.C19373 (coe d1482) (coe d1600)
         (coe d1548))
      (coe d1512)
name1612 = "Data.Bool.Properties.∨-∧-isCommutativeSemiring"
d1612 :: MAlonzo.Code.Algebra.Structures.T1280
d1612
  = coe MAlonzo.Code.Algebra.Structures.C23247 (coe d1610) erased
name1614 = "Data.Bool.Properties.∨-∧-commutativeSemiring"
d1614 :: MAlonzo.Code.Algebra.Bundles.T1818
d1614
  = coe
      MAlonzo.Code.Algebra.Bundles.C20443 MAlonzo.Code.Data.Bool.Base.d30
      MAlonzo.Code.Data.Bool.Base.d24
      (coe MAlonzo.Code.Agda.Builtin.Bool.C8)
      (coe MAlonzo.Code.Agda.Builtin.Bool.C10) d1612
name1616 = "Data.Bool.Properties.∧-∨-isSemiring"
d1616 :: MAlonzo.Code.Algebra.Structures.T1176
d1616
  = coe
      MAlonzo.Code.Algebra.Structures.C21401
      (coe
         MAlonzo.Code.Algebra.Structures.C19373 (coe d1602) (coe d1480)
         (coe d1568))
      (coe d1446)
name1618 = "Data.Bool.Properties.∧-∨-isCommutativeSemiring"
d1618 :: MAlonzo.Code.Algebra.Structures.T1280
d1618
  = coe MAlonzo.Code.Algebra.Structures.C23247 (coe d1616) erased
name1620 = "Data.Bool.Properties.∧-∨-commutativeSemiring"
d1620 :: MAlonzo.Code.Algebra.Bundles.T1818
d1620
  = coe
      MAlonzo.Code.Algebra.Bundles.C20443 MAlonzo.Code.Data.Bool.Base.d24
      MAlonzo.Code.Data.Bool.Base.d30
      (coe MAlonzo.Code.Agda.Builtin.Bool.C10)
      (coe MAlonzo.Code.Agda.Builtin.Bool.C8) d1618
name1622 = "Data.Bool.Properties.∨-∧-isLattice"
d1622 :: MAlonzo.Code.Algebra.Structures.T686
d1622
  = coe
      MAlonzo.Code.Algebra.Structures.C11495
      (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.du66)
      erased erased erased erased erased erased (coe d1582)
name1624 = "Data.Bool.Properties.∨-∧-lattice"
d1624 :: MAlonzo.Code.Algebra.Bundles.T986
d1624
  = coe
      MAlonzo.Code.Algebra.Bundles.C10761 MAlonzo.Code.Data.Bool.Base.d30
      MAlonzo.Code.Data.Bool.Base.d24 d1622
name1626 = "Data.Bool.Properties.∨-∧-isDistributiveLattice"
d1626 :: MAlonzo.Code.Algebra.Structures.T760
d1626
  = coe MAlonzo.Code.Algebra.Structures.C14283 (coe d1622) erased
name1628 = "Data.Bool.Properties.∨-∧-distributiveLattice"
d1628 :: MAlonzo.Code.Algebra.Bundles.T1058
d1628
  = coe
      MAlonzo.Code.Algebra.Bundles.C11687 MAlonzo.Code.Data.Bool.Base.d30
      MAlonzo.Code.Data.Bool.Base.d24 d1626
name1630 = "Data.Bool.Properties.∨-∧-isBooleanAlgebra"
d1630 :: MAlonzo.Code.Algebra.Structures.T1666
d1630
  = coe
      MAlonzo.Code.Algebra.Structures.C31487 (coe d1626) erased erased
      erased
name1632 = "Data.Bool.Properties.∨-∧-booleanAlgebra"
d1632 :: MAlonzo.Code.Algebra.Bundles.T2410
d1632
  = coe
      MAlonzo.Code.Algebra.Bundles.C27217 MAlonzo.Code.Data.Bool.Base.d30
      MAlonzo.Code.Data.Bool.Base.d24 MAlonzo.Code.Data.Bool.Base.d22
      (coe MAlonzo.Code.Agda.Builtin.Bool.C10)
      (coe MAlonzo.Code.Agda.Builtin.Bool.C8) d1630
name1638 = "Data.Bool.Properties.xor-is-ok"
d1638 :: Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1638 = erased
name1644 = "Data.Bool.Properties.xor-∧-commutativeRing"
d1644 :: MAlonzo.Code.Algebra.Bundles.T2210
d1644
  = coe
      MAlonzo.Code.Algebra.Properties.BooleanAlgebra.du1914 (coe d1632)
      (coe MAlonzo.Code.Data.Bool.Base.d36) erased
name1976 = "Data.Bool.Properties.not-involutive"
d1976 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1976 = erased
name1982 = "Data.Bool.Properties.not-injective"
d1982 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1982 = erased
name1992 = "Data.Bool.Properties.not-¬"
d1992 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d1992 = erased
name1998 = "Data.Bool.Properties.¬-not"
d1998 ::
  Bool ->
  Bool ->
  (MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1998 = erased
name2010 = "Data.Bool.Properties.⇔→≡"
d2010 ::
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Function.Equivalence.T16 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d2010 = erased
name2026 = "Data.Bool.Properties.T-≡"
d2026 :: Bool -> MAlonzo.Code.Function.Equivalence.T16
d2026 v0
  = if coe v0
      then coe
             MAlonzo.Code.Function.Equivalence.du56 erased
             (coe (\ v1 -> coe MAlonzo.Code.Agda.Builtin.Unit.C8))
      else coe MAlonzo.Code.Function.Equivalence.du56 erased erased
name2030 = "Data.Bool.Properties.T-not-≡"
d2030 :: Bool -> MAlonzo.Code.Function.Equivalence.T16
d2030 v0
  = if coe v0
      then coe MAlonzo.Code.Function.Equivalence.du56 erased erased
      else coe
             MAlonzo.Code.Function.Equivalence.du56 erased
             (coe (\ v1 -> coe MAlonzo.Code.Agda.Builtin.Unit.C8))
name2036 = "Data.Bool.Properties.T-∧"
d2036 :: Bool -> Bool -> MAlonzo.Code.Function.Equivalence.T16
d2036 v0 v1
  = if coe v0
      then if coe v1
             then coe
                    MAlonzo.Code.Function.Equivalence.du56
                    (coe
                       (\ v2 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C32
                            (coe MAlonzo.Code.Agda.Builtin.Unit.C8)
                            (coe MAlonzo.Code.Agda.Builtin.Unit.C8)))
                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C8))
             else coe
                    MAlonzo.Code.Function.Equivalence.du56 erased
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d30)
      else coe
             MAlonzo.Code.Function.Equivalence.du56 erased
             (coe MAlonzo.Code.Agda.Builtin.Sigma.d28)
name2042 = "Data.Bool.Properties.T-∨"
d2042 :: Bool -> Bool -> MAlonzo.Code.Function.Equivalence.T16
d2042 v0 v1
  = if coe v0
      then coe
             MAlonzo.Code.Function.Equivalence.du56
             (coe MAlonzo.Code.Data.Sum.Base.C38)
             (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C8))
      else (if coe v1
              then coe
                     MAlonzo.Code.Function.Equivalence.du56
                     (coe MAlonzo.Code.Data.Sum.Base.C42)
                     (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C8))
              else coe
                     MAlonzo.Code.Function.Equivalence.du56
                     (coe MAlonzo.Code.Data.Sum.Base.C38)
                     (coe
                        MAlonzo.Code.Data.Sum.Base.du52 (coe (\ v2 -> v2))
                        (coe (\ v2 -> v2))))
name2044 = "Data.Bool.Properties.T-irrelevant"
d2044 ::
  Bool ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2044 = erased
name2046 = "Data.Bool.Properties.T?"
d2046 :: Bool -> MAlonzo.Code.Relation.Nullary.T32
d2046 v0
  = coe
      MAlonzo.Code.Relation.Nullary.C46 (coe v0)
      (if coe v0
         then coe
                MAlonzo.Code.Relation.Nullary.C22
                (coe MAlonzo.Code.Agda.Builtin.Unit.C8)
         else coe MAlonzo.Code.Relation.Nullary.C26)
name2052 = "Data.Bool.Properties.T?-diag"
d2052 :: Bool -> AgdaAny -> AgdaAny
d2052 v0 v1 = du2052 v0
du2052 :: Bool -> AgdaAny
du2052 v0
  = coe seq (coe v0) (coe MAlonzo.Code.Agda.Builtin.Unit.C8)
name2062 = "Data.Bool.Properties.push-function-into-if"
d2062 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  Bool ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2062 = erased
name2064 = "Data.Bool.Properties.∧-∨-distˡ"
d2064 ::
  Bool -> Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2064 = erased
name2066 = "Data.Bool.Properties.∧-∨-distʳ"
d2066 ::
  Bool -> Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2066 = erased
name2068 = "Data.Bool.Properties.distrib-∧-∨"
d2068 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d2068 = coe d1548
name2070 = "Data.Bool.Properties.∨-∧-distˡ"
d2070 ::
  Bool -> Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2070 = erased
name2072 = "Data.Bool.Properties.∨-∧-distʳ"
d2072 ::
  Bool -> Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2072 = erased
name2074 = "Data.Bool.Properties.∨-∧-distrib"
d2074 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d2074 = coe d1568
name2076 = "Data.Bool.Properties.∨-∧-abs"
d2076 :: Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2076 = erased
name2078 = "Data.Bool.Properties.∧-∨-abs"
d2078 :: Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2078 = erased
name2080 = "Data.Bool.Properties.not-∧-inverseˡ"
d2080 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2080 = erased
name2082 = "Data.Bool.Properties.not-∧-inverseʳ"
d2082 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2082 = erased
name2084 = "Data.Bool.Properties.not-∧-inverse"
d2084 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d2084 = coe d1520
name2086 = "Data.Bool.Properties.not-∨-inverseˡ"
d2086 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2086 = erased
name2088 = "Data.Bool.Properties.not-∨-inverseʳ"
d2088 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2088 = erased
name2090 = "Data.Bool.Properties.not-∨-inverse"
d2090 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d2090 = coe d1454
name2092 = "Data.Bool.Properties.isCommutativeSemiring-∨-∧"
d2092 :: MAlonzo.Code.Algebra.Structures.T1280
d2092 = coe d1612
name2094 = "Data.Bool.Properties.commutativeSemiring-∨-∧"
d2094 :: MAlonzo.Code.Algebra.Bundles.T1818
d2094 = coe d1614
name2096 = "Data.Bool.Properties.isCommutativeSemiring-∧-∨"
d2096 :: MAlonzo.Code.Algebra.Structures.T1280
d2096 = coe d1618
name2098 = "Data.Bool.Properties.commutativeSemiring-∧-∨"
d2098 :: MAlonzo.Code.Algebra.Bundles.T1818
d2098 = coe d1620
name2100 = "Data.Bool.Properties.isBooleanAlgebra"
d2100 :: MAlonzo.Code.Algebra.Structures.T1666
d2100 = coe d1630
name2102 = "Data.Bool.Properties.booleanAlgebra"
d2102 :: MAlonzo.Code.Algebra.Bundles.T2410
d2102 = coe d1632
name2104 = "Data.Bool.Properties.commutativeRing-xor-∧"
d2104 :: MAlonzo.Code.Algebra.Bundles.T2210
d2104 = coe d1644
name2106 = "Data.Bool.Properties.proof-irrelevance"
d2106 ::
  Bool ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2106 = erased
name2108 = "Data.Bool.Properties.T-irrelevance"
d2108 ::
  Bool ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2108 = erased
name4833 = "Data.Bool.Properties..absurdlambda"
d4833 ::
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d4833 = erased
name4863 = "Data.Bool.Properties..absurdlambda"
d4863 ::
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d4863 = erased
name6011 = "Data.Bool.Properties..absurdlambda"
d6011 ::
  MAlonzo.Code.Data.Bool.Base.T10 -> MAlonzo.Code.Data.Empty.T4
d6011 = erased
name8133 = "Data.Bool.Properties..absurdlambda"
d8133 ::
  MAlonzo.Code.Data.Bool.Base.T18 -> MAlonzo.Code.Data.Empty.T4
d8133 = erased
name8145 = "Data.Bool.Properties..absurdlambda"
d8145 ::
  MAlonzo.Code.Data.Bool.Base.T18 -> MAlonzo.Code.Data.Empty.T4
d8145 = erased
name8175 = "Data.Bool.Properties..absurdlambda"
d8175 ::
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d8175 = erased
name8187 = "Data.Bool.Properties..absurdlambda"
d8187 ::
  MAlonzo.Code.Data.Bool.Base.T18 -> MAlonzo.Code.Data.Empty.T4
d8187 = erased
name8221 = "Data.Bool.Properties..absurdlambda"
d8221 ::
  MAlonzo.Code.Data.Bool.Base.T18 -> MAlonzo.Code.Data.Empty.T4
d8221 = erased
name8229 = "Data.Bool.Properties..absurdlambda"
d8229 ::
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d8229 = erased
name8267 = "Data.Bool.Properties..absurdlambda"
d8267 ::
  MAlonzo.Code.Data.Bool.Base.T18 -> MAlonzo.Code.Data.Empty.T4
d8267 = erased
name8283 = "Data.Bool.Properties..absurdlambda"
d8283 ::
  MAlonzo.Code.Data.Bool.Base.T18 -> MAlonzo.Code.Data.Empty.T4
d8283 = erased
name8335 = "Data.Bool.Properties..absurdlambda"
d8335 ::
  MAlonzo.Code.Data.Bool.Base.T18 -> MAlonzo.Code.Data.Empty.T4
d8335 = erased
name8407 = "Data.Bool.Properties..absurdlambda"
d8407 ::
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T18 -> MAlonzo.Code.Data.Empty.T4
d8407 = erased
name16073 = "Data.Bool.Properties..absurdlambda"
d16073 ::
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d16073 = erased
name16077 = "Data.Bool.Properties..absurdlambda"
d16077 ::
  MAlonzo.Code.Data.Empty.T4 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d16077 = erased
name16257 = "Data.Bool.Properties..absurdlambda"
d16257 ::
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d16257 = erased
name16261 = "Data.Bool.Properties..absurdlambda"
d16261 ::
  MAlonzo.Code.Data.Empty.T4 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d16261 = erased
name16523 = "Data.Bool.Properties..absurdlambda"
d16523 ::
  MAlonzo.Code.Data.Empty.T4 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d16523 = erased
name16679 = "Data.Bool.Properties..absurdlambda"
d16679 ::
  Bool ->
  MAlonzo.Code.Data.Empty.T4 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d16679 = erased
name17193 = "Data.Bool.Properties..absurdlambda"
d17193 :: MAlonzo.Code.Data.Empty.T4 -> MAlonzo.Code.Data.Empty.T4
d17193 = erased
