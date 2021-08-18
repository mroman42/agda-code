{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Nat.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Morphism
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Bool.Properties
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Injection
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Consequences
import qualified MAlonzo.Code.Relation.Binary.Definitions
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Core
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Relation.Nullary.Decidable
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

name8 = "Data.Nat.Properties._._Absorbs_"
d8 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d8 = erased
name10 = "Data.Nat.Properties._._DistributesOver_"
d10 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d10 = erased
name12 = "Data.Nat.Properties._._DistributesOverʳ_"
d12 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d12 = erased
name14 = "Data.Nat.Properties._._DistributesOverˡ_"
d14 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d14 = erased
name18 = "Data.Nat.Properties._.Absorptive"
d18 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d18 = erased
name20 = "Data.Nat.Properties._.Associative"
d20 :: (Integer -> Integer -> Integer) -> ()
d20 = erased
name22 = "Data.Nat.Properties._.Commutative"
d22 :: (Integer -> Integer -> Integer) -> ()
d22 = erased
name30 = "Data.Nat.Properties._.Idempotent"
d30 :: (Integer -> Integer -> Integer) -> ()
d30 = erased
name34 = "Data.Nat.Properties._.Identity"
d34 :: Integer -> (Integer -> Integer -> Integer) -> ()
d34 = erased
name46 = "Data.Nat.Properties._.LeftIdentity"
d46 :: Integer -> (Integer -> Integer -> Integer) -> ()
d46 = erased
name50 = "Data.Nat.Properties._.LeftZero"
d50 :: Integer -> (Integer -> Integer -> Integer) -> ()
d50 = erased
name56 = "Data.Nat.Properties._.RightIdentity"
d56 :: Integer -> (Integer -> Integer -> Integer) -> ()
d56 = erased
name60 = "Data.Nat.Properties._.RightZero"
d60 :: Integer -> (Integer -> Integer -> Integer) -> ()
d60 = erased
name62 = "Data.Nat.Properties._.Selective"
d62 :: (Integer -> Integer -> Integer) -> ()
d62 = erased
name64 = "Data.Nat.Properties._.Zero"
d64 :: Integer -> (Integer -> Integer -> Integer) -> ()
d64 = erased
name70 = "Data.Nat.Properties._.IsBand"
d70 a0 = ()
name76 = "Data.Nat.Properties._.IsCommutativeMonoid"
d76 a0 a1 = ()
name80 = "Data.Nat.Properties._.IsCommutativeSemigroup"
d80 a0 = ()
name82 = "Data.Nat.Properties._.IsCommutativeSemiring"
d82 a0 a1 a2 a3 = ()
name84 = "Data.Nat.Properties._.IsCommutativeSemiringWithoutOne"
d84 a0 a1 a2 = ()
name86 = "Data.Nat.Properties._.IsDistributiveLattice"
d86 a0 a1 = ()
name92 = "Data.Nat.Properties._.IsLattice"
d92 a0 a1 = ()
name94 = "Data.Nat.Properties._.IsMagma"
d94 a0 = ()
name96 = "Data.Nat.Properties._.IsMonoid"
d96 a0 a1 = ()
name104 = "Data.Nat.Properties._.IsSemigroup"
d104 a0 = ()
name106 = "Data.Nat.Properties._.IsSemilattice"
d106 a0 = ()
name108 = "Data.Nat.Properties._.IsSemiring"
d108 a0 a1 a2 a3 = ()
name112 = "Data.Nat.Properties._.IsSemiringWithoutOne"
d112 a0 a1 a2 = ()
name1336 = "Data.Nat.Properties.suc-injective"
d1336 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1336 = erased
name1342 = "Data.Nat.Properties.≡ᵇ⇒≡"
d1342 ::
  Integer ->
  Integer -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1342 = erased
name1354 = "Data.Nat.Properties.≡⇒≡ᵇ"
d1354 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1354 v0 v1 v2 = du1354 v0
du1354 :: Integer -> AgdaAny
du1354 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Agda.Builtin.Unit.C8
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe du1354 (coe v1)
name1364 = "Data.Nat.Properties._≟_"
d1364 :: Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T32
d1364 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du168 erased
      (coe
         MAlonzo.Code.Data.Bool.Properties.d2046
         (coe eqInt (coe v0) (coe v1)))
name1370 = "Data.Nat.Properties.≡-irrelevant"
d1370 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1370 = erased
name1378 = "Data.Nat.Properties.≟-diag"
d1378 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1378 = erased
name1380 = "Data.Nat.Properties.≡-isDecEquivalence"
d1380 :: MAlonzo.Code.Relation.Binary.Structures.T44
d1380
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C1529
      (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.du66)
      (coe d1364)
name1382 = "Data.Nat.Properties.≡-decSetoid"
d1382 :: MAlonzo.Code.Relation.Binary.Bundles.T84
d1382 = coe MAlonzo.Code.Relation.Binary.Bundles.C939 d1380
name1386 = "Data.Nat.Properties.0≢1+n"
d1386 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d1386 = erased
name1390 = "Data.Nat.Properties.1+n≢0"
d1390 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d1390 = erased
name1394 = "Data.Nat.Properties.1+n≢n"
d1394 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d1394 = erased
name1402 = "Data.Nat.Properties.<ᵇ⇒<"
d1402 ::
  Integer -> Integer -> AgdaAny -> MAlonzo.Code.Data.Nat.Base.T6
d1402 v0 v1 v2 = du1402 v0
du1402 :: Integer -> MAlonzo.Code.Data.Nat.Base.T6
du1402 v0
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Data.Nat.Base.C18 (coe MAlonzo.Code.Data.Nat.Base.C10)
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe MAlonzo.Code.Data.Nat.Base.C18 (coe du1402 (coe v1))
name1418 = "Data.Nat.Properties.<⇒<ᵇ"
d1418 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6 -> AgdaAny
d1418 v0 v1 v2 = du1418 v2
du1418 :: MAlonzo.Code.Data.Nat.Base.T6 -> AgdaAny
du1418 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C18 v3
        -> case coe v3 of
             MAlonzo.Code.Data.Nat.Base.C10
               -> coe MAlonzo.Code.Agda.Builtin.Unit.C8
             MAlonzo.Code.Data.Nat.Base.C18 v6
               -> coe du1418 (coe MAlonzo.Code.Data.Nat.Base.C18 v6)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name1426 = "Data.Nat.Properties.≤-pred"
d1426 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1426 v0 v1 v2 = du1426 v2
du1426 ::
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1426 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C18 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1430 = "Data.Nat.Properties.≤-reflexive"
d1430 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Nat.Base.T6
d1430 v0 v1 v2 = du1430 v0
du1430 :: Integer -> MAlonzo.Code.Data.Nat.Base.T6
du1430 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C10
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe MAlonzo.Code.Data.Nat.Base.C18 (coe du1430 (coe v1))
name1434 = "Data.Nat.Properties.≤-refl"
d1434 :: Integer -> MAlonzo.Code.Data.Nat.Base.T6
d1434 v0 = coe du1430 (coe v0)
name1436 = "Data.Nat.Properties.≤-antisym"
d1436 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1436 = erased
name1442 = "Data.Nat.Properties.≤-trans"
d1442 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1442 v0 v1 v2 v3 v4 = du1442 v3 v4
du1442 ::
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1442 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C10
        -> coe MAlonzo.Code.Data.Nat.Base.C10
      MAlonzo.Code.Data.Nat.Base.C18 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Nat.Base.C18 v7
               -> coe
                    MAlonzo.Code.Data.Nat.Base.C18 (coe du1442 (coe v4) (coe v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name1448 = "Data.Nat.Properties.≤-total"
d1448 :: Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T30
d1448 v0 v1
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Data.Sum.Base.C38 (coe MAlonzo.Code.Data.Nat.Base.C10)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe
                    MAlonzo.Code.Data.Sum.Base.C42 (coe MAlonzo.Code.Data.Nat.Base.C10)
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  let v4 = d1448 (coe v2) (coe v3) in
                  case coe v4 of
                    MAlonzo.Code.Data.Sum.Base.C38 v5
                      -> coe
                           MAlonzo.Code.Data.Sum.Base.C38
                           (coe MAlonzo.Code.Data.Nat.Base.C18 v5)
                    MAlonzo.Code.Data.Sum.Base.C42 v5
                      -> coe
                           MAlonzo.Code.Data.Sum.Base.C42
                           (coe MAlonzo.Code.Data.Nat.Base.C18 v5)
                    _ -> MAlonzo.RTE.mazUnreachableError
name1470 = "Data.Nat.Properties.≤-irrelevant"
d1470 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1470 = erased
name1476 = "Data.Nat.Properties._≤?_"
d1476 :: Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T32
d1476 v0 v1
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Relation.Nullary.C46
             (coe MAlonzo.Code.Agda.Builtin.Bool.C10)
             (coe
                MAlonzo.Code.Relation.Nullary.C22
                (coe MAlonzo.Code.Data.Nat.Base.C10))
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.du168
             (\ v3 -> coe du1402 (coe v2))
             (coe
                MAlonzo.Code.Data.Bool.Properties.d2046
                (coe ltInt (coe v2) (coe v1)))
name1482 = "Data.Nat.Properties._≥?_"
d1482 :: Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T32
d1482 v0 v1 = coe d1476 (coe v1) (coe v0)
name1484 = "Data.Nat.Properties.≤-isPreorder"
d1484 :: MAlonzo.Code.Relation.Binary.Structures.T70
d1484
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C2113
      (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.du66)
      (\ v0 v1 v2 -> coe du1430 v0)
      (\ v0 v1 v2 v3 v4 -> coe du1442 v3 v4)
name1486 = "Data.Nat.Properties.≤-isPartialOrder"
d1486 :: MAlonzo.Code.Relation.Binary.Structures.T118
d1486
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C4865 (coe d1484) erased
name1488 = "Data.Nat.Properties.≤-isTotalOrder"
d1488 :: MAlonzo.Code.Relation.Binary.Structures.T340
d1488
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C11665 (coe d1486)
      (coe d1448)
name1490 = "Data.Nat.Properties.≤-isDecTotalOrder"
d1490 :: MAlonzo.Code.Relation.Binary.Structures.T388
d1490
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C12739 (coe d1488)
      (coe d1364) (coe d1476)
name1492 = "Data.Nat.Properties.≤-preorder"
d1492 :: MAlonzo.Code.Relation.Binary.Bundles.T132
d1492 = coe MAlonzo.Code.Relation.Binary.Bundles.C1509 d1484
name1494 = "Data.Nat.Properties.≤-poset"
d1494 :: MAlonzo.Code.Relation.Binary.Bundles.T204
d1494 = coe MAlonzo.Code.Relation.Binary.Bundles.C2365 d1486
name1496 = "Data.Nat.Properties.≤-totalOrder"
d1496 :: MAlonzo.Code.Relation.Binary.Bundles.T574
d1496 = coe MAlonzo.Code.Relation.Binary.Bundles.C6779 d1488
name1498 = "Data.Nat.Properties.≤-decTotalOrder"
d1498 :: MAlonzo.Code.Relation.Binary.Bundles.T658
d1498 = coe MAlonzo.Code.Relation.Binary.Bundles.C7777 d1490
name1508 = "Data.Nat.Properties.s≤s-injective"
d1508 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1508 = erased
name1514 = "Data.Nat.Properties.≤-step"
d1514 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1514 v0 v1 v2 = du1514 v2
du1514 ::
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1514 v0 = coe v0
name1520 = "Data.Nat.Properties.n≤1+n"
d1520 :: Integer -> MAlonzo.Code.Data.Nat.Base.T6
d1520 v0 = coe d1434 (coe v0)
name1524 = "Data.Nat.Properties.1+n≰n"
d1524 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d1524 = erased
name1530 = "Data.Nat.Properties.n≤0⇒n≡0"
d1530 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1530 = erased
name1532 = "Data.Nat.Properties.<⇒≤"
d1532 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1532 v0 v1 v2 = du1532 v1 v2
du1532 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1532 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C18 v4
        -> let v5 = subInt (coe v0) (coe (1 :: Integer)) in
           coe du1442 (coe v4) (coe d1434 (coe v5))
      _ -> MAlonzo.RTE.mazUnreachableError
name1536 = "Data.Nat.Properties.<⇒≢"
d1536 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d1536 = erased
name1540 = "Data.Nat.Properties.≤⇒≯"
d1540 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d1540 = erased
name1546 = "Data.Nat.Properties.<⇒≱"
d1546 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d1546 = erased
name1552 = "Data.Nat.Properties.<⇒≯"
d1552 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d1552 = erased
name1558 = "Data.Nat.Properties.≰⇒≮"
d1558 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d1558 = erased
name1564 = "Data.Nat.Properties.≰⇒>"
d1564 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Nat.Base.T6
d1564 v0 v1 v2 = du1564 v0 v1
du1564 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
du1564 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Empty.d10 () erased erased
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe
                    MAlonzo.Code.Data.Nat.Base.C18 (coe MAlonzo.Code.Data.Nat.Base.C10)
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe MAlonzo.Code.Data.Nat.Base.C18 (coe du1564 (coe v2) (coe v3))
name1576 = "Data.Nat.Properties.≰⇒≥"
d1576 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Nat.Base.T6
d1576 v0 v1 v2 = du1576 v0 v1
du1576 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
du1576 v0 v1 = coe du1532 (coe v0) (coe du1564 (coe v0) (coe v1))
name1578 = "Data.Nat.Properties.≮⇒≥"
d1578 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Nat.Base.T6
d1578 v0 v1 v2 = du1578 v0 v1
du1578 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
du1578 v0 v1
  = case coe v1 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C10
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           case coe v0 of
             0 -> coe MAlonzo.Code.Data.Empty.d10 () erased erased
             _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
                  coe MAlonzo.Code.Data.Nat.Base.C18 (coe du1578 (coe v3) (coe v2))
name1594 = "Data.Nat.Properties.≤∧≢⇒<"
d1594 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Nat.Base.T6
d1594 v0 v1 v2 v3 = du1594 v1 v2
du1594 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1594 v0 v1
  = case coe v0 of
      0 -> coe
             seq (coe v1) (coe MAlonzo.Code.Data.Empty.d10 () erased erased)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             MAlonzo.Code.Data.Nat.Base.C10
               -> coe
                    MAlonzo.Code.Data.Nat.Base.C18 (coe MAlonzo.Code.Data.Nat.Base.C10)
             MAlonzo.Code.Data.Nat.Base.C18 v5
               -> coe
                    MAlonzo.Code.Data.Nat.Base.C18 (coe du1594 (coe v2) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
name1608 = "Data.Nat.Properties.≤-<-connex"
d1608 :: Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T30
d1608 v0 v1
  = let v2 = d1476 (coe v0) (coe v1) in
    case coe v2 of
      MAlonzo.Code.Relation.Nullary.C46 v3 v4
        -> if coe v3
             then case coe v4 of
                    MAlonzo.Code.Relation.Nullary.C22 v5
                      -> coe MAlonzo.Code.Data.Sum.Base.C38 (coe v5)
                    _ -> MAlonzo.RTE.mazUnreachableError
             else coe
                    seq (coe v4)
                    (coe MAlonzo.Code.Data.Sum.Base.C42 (coe du1564 (coe v0) (coe v1)))
      _ -> MAlonzo.RTE.mazUnreachableError
name1630 = "Data.Nat.Properties.≥->-connex"
d1630 :: Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T30
d1630 v0 v1 = coe d1608 (coe v1) (coe v0)
name1632 = "Data.Nat.Properties.<-≤-connex"
d1632 :: Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T30
d1632
  = coe MAlonzo.Code.Relation.Binary.Consequences.du726 (coe d1608)
name1634 = "Data.Nat.Properties.>-≥-connex"
d1634 :: Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T30
d1634
  = coe MAlonzo.Code.Relation.Binary.Consequences.du726 (coe d1630)
name1636 = "Data.Nat.Properties.<-irrefl"
d1636 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d1636 = erased
name1640 = "Data.Nat.Properties.<-asym"
d1640 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d1640 = erased
name1646 = "Data.Nat.Properties.<-trans"
d1646 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1646 v0 v1 v2 v3 v4 = du1646 v1 v3 v4
du1646 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1646 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C18 v5
        -> let v6 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v2 of
             MAlonzo.Code.Data.Nat.Base.C18 v9
               -> coe
                    MAlonzo.Code.Data.Nat.Base.C18
                    (coe du1442 (coe v5) (coe du1442 (coe d1520 (coe v6)) (coe v9)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name1652 = "Data.Nat.Properties.<-transʳ"
d1652 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1652 v0 v1 v2 v3 v4 = du1652 v3 v4
du1652 ::
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1652 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C18 v4
        -> coe
             MAlonzo.Code.Data.Nat.Base.C18 (coe du1442 (coe v0) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
name1658 = "Data.Nat.Properties.<-transˡ"
d1658 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1658 v0 v1 v2 v3 v4 = du1658 v3 v4
du1658 ::
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1658 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C18 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Nat.Base.C18 v7
               -> coe
                    MAlonzo.Code.Data.Nat.Base.C18 (coe du1442 (coe v4) (coe v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name1664 = "Data.Nat.Properties.<-cmp"
d1664 ::
  Integer -> Integer -> MAlonzo.Code.Relation.Binary.Definitions.T136
d1664 v0 v1
  = let v2 = d1364 (coe v0) (coe v1) in
    let v3
          = MAlonzo.Code.Data.Bool.Properties.d2046
              (coe ltInt (coe v0) (coe v1)) in
    case coe v2 of
      MAlonzo.Code.Relation.Nullary.C46 v4 v5
        -> if coe v4
             then case coe v5 of
                    MAlonzo.Code.Relation.Nullary.C22 v6
                      -> coe MAlonzo.Code.Relation.Binary.Definitions.C158 v6
                    _ -> MAlonzo.RTE.mazUnreachableError
             else coe
                    seq (coe v5)
                    (case coe v3 of
                       MAlonzo.Code.Relation.Nullary.C46 v6 v7
                         -> if coe v6
                              then coe
                                     seq (coe v7)
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Definitions.C150
                                        (coe du1402 (coe v0)))
                              else coe
                                     seq (coe v7)
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Definitions.C166
                                        (coe du1594 (coe v0) (coe du1578 (coe v0) (coe v1))))
                       _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
name1696 = "Data.Nat.Properties._<?_"
d1696 :: Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T32
d1696 v0 v1
  = coe d1476 (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1)
name1702 = "Data.Nat.Properties._>?_"
d1702 :: Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T32
d1702 v0 v1 = coe d1696 (coe v1) (coe v0)
name1704 = "Data.Nat.Properties.<-irrelevant"
d1704 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1704 = erased
name1706 = "Data.Nat.Properties.<-resp₂-≡"
d1706 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d1706
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe (\ v0 v1 v2 v3 v4 -> v4))
      (coe (\ v0 v1 v2 v3 v4 -> v4))
name1712 = "Data.Nat.Properties.<-isStrictPartialOrder"
d1712 :: MAlonzo.Code.Relation.Binary.Structures.T222
d1712
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C7193
      (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.du66)
      (\ v0 v1 v2 v3 v4 -> coe du1646 v1 v3 v4) d1706
name1714 = "Data.Nat.Properties.<-isStrictTotalOrder"
d1714 :: MAlonzo.Code.Relation.Binary.Structures.T454
d1714
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C14057
      (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.du66)
      (\ v0 v1 v2 v3 v4 -> coe du1646 v1 v3 v4) (coe d1664)
name1716 = "Data.Nat.Properties.<-strictPartialOrder"
d1716 :: MAlonzo.Code.Relation.Binary.Bundles.T394
d1716 = coe MAlonzo.Code.Relation.Binary.Bundles.C4625 d1712
name1718 = "Data.Nat.Properties.<-strictTotalOrder"
d1718 :: MAlonzo.Code.Relation.Binary.Bundles.T780
d1718 = coe MAlonzo.Code.Relation.Binary.Bundles.C9189 d1714
name1722 = "Data.Nat.Properties.n≮n"
d1722 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d1722 = erased
name1728 = "Data.Nat.Properties.0<1+n"
d1728 :: Integer -> MAlonzo.Code.Data.Nat.Base.T6
d1728 v0 = du1728
du1728 :: MAlonzo.Code.Data.Nat.Base.T6
du1728
  = coe
      MAlonzo.Code.Data.Nat.Base.C18 (coe MAlonzo.Code.Data.Nat.Base.C10)
name1732 = "Data.Nat.Properties.n<1+n"
d1732 :: Integer -> MAlonzo.Code.Data.Nat.Base.T6
d1732 v0 = coe d1434 (coe addInt (coe (1 :: Integer)) (coe v0))
name1738 = "Data.Nat.Properties.n≢0⇒n>0"
d1738 ::
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Nat.Base.T6
d1738 v0 v1 = du1738 v0
du1738 :: Integer -> MAlonzo.Code.Data.Nat.Base.T6
du1738 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Empty.d10 () erased erased
      _ -> coe du1728
name1748 = "Data.Nat.Properties.m<n⇒n≢0"
d1748 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d1748 = erased
name1756 = "Data.Nat.Properties.m<n⇒m≤1+n"
d1756 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1756 v0 v1 v2 = du1756 v2
du1756 ::
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1756 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C18 v3
        -> case coe v3 of
             MAlonzo.Code.Data.Nat.Base.C10
               -> coe MAlonzo.Code.Data.Nat.Base.C10
             MAlonzo.Code.Data.Nat.Base.C18 v6
               -> coe
                    MAlonzo.Code.Data.Nat.Base.C18
                    (coe du1756 (coe MAlonzo.Code.Data.Nat.Base.C18 v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name1766 = "Data.Nat.Properties.∀[m≤n⇒m≢o]⇒n<o"
d1766 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Data.Nat.Base.T6 ->
   MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Nat.Base.T6
d1766 v0 v1 v2 = du1766 v0 v1
du1766 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
du1766 v0 v1
  = case coe v1 of
      0 -> coe MAlonzo.Code.Data.Empty.d10 () erased erased
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           case coe v0 of
             0 -> coe du1728
             _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
                  coe MAlonzo.Code.Data.Nat.Base.C18 (coe du1766 (coe v3) (coe v2))
name1784 = "Data.Nat.Properties._.rec"
d1784 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Data.Nat.Base.T6 ->
   MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Data.Empty.T4) ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d1784 = erased
name1794 = "Data.Nat.Properties.∀[m<n⇒m≢o]⇒n≤o"
d1794 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Data.Nat.Base.T6 ->
   MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Nat.Base.T6
d1794 v0 v1 v2 = du1794 v0 v1
du1794 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
du1794 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C10
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe MAlonzo.Code.Data.Empty.d10 () erased erased
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe MAlonzo.Code.Data.Nat.Base.C18 (coe du1794 (coe v2) (coe v3))
name1814 = "Data.Nat.Properties._.rec"
d1814 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Data.Nat.Base.T6 ->
   MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Data.Empty.T4) ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d1814 = erased
name1822 = "Data.Nat.Properties.≤-Reasoning._._IsRelatedTo_"
d1822 a0 a1 = ()
name1824 = "Data.Nat.Properties.≤-Reasoning._._∎"
d1824 ::
  Integer -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70
d1824
  = let v0 = d1484 in
    coe
      (\ v1 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.C86
           (coe
              MAlonzo.Code.Relation.Binary.Structures.d34
              (MAlonzo.Code.Relation.Binary.Structures.d80 (coe v0)) v1))
name1826 = "Data.Nat.Properties.≤-Reasoning._._≡⟨⟩_"
d1826 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70
d1826 v0 = coe v0
name1828 = "Data.Nat.Properties.≤-Reasoning._.IsEquality"
d1828 a0 a1 a2 = ()
name1830 = "Data.Nat.Properties.≤-Reasoning._.IsEquality?"
d1830 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Relation.Nullary.T32
d1830 v0 v1 v2
  = coe MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du142 v2
name1832 = "Data.Nat.Properties.≤-Reasoning._.IsStrict"
d1832 a0 a1 a2 = ()
name1834 = "Data.Nat.Properties.≤-Reasoning._.IsStrict?"
d1834 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Relation.Nullary.T32
d1834 v0 v1 v2
  = coe MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du108 v2
name1836 = "Data.Nat.Properties.≤-Reasoning._.begin_"
d1836 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Data.Nat.Base.T6
d1836
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du160
      (coe d1484) (\ v0 v1 v2 -> coe du1532 v1 v2)
name1838 = "Data.Nat.Properties.≤-Reasoning._.begin-equality_"
d1838 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1838 = erased
name1840 = "Data.Nat.Properties.≤-Reasoning._.begin-strict_"
d1840 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  AgdaAny -> MAlonzo.Code.Data.Nat.Base.T6
d1840 v0 v1 v2 v3
  = coe MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du176 v2
name1844 = "Data.Nat.Properties.≤-Reasoning._.extractEquality"
d1844 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T126 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1844 = erased
name1846 = "Data.Nat.Properties.≤-Reasoning._.extractStrict"
d1846 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T92 ->
  MAlonzo.Code.Data.Nat.Base.T6
d1846 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du118 v2 v3
name1854 = "Data.Nat.Properties.≤-Reasoning._.step-<"
d1854 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70
d1854
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du202
      (\ v0 v1 v2 v3 v4 -> coe du1646 v1 v3 v4)
      (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du66)
      (\ v0 v1 v2 v3 v4 -> coe du1658 v3 v4)
name1856 = "Data.Nat.Properties.≤-Reasoning._.step-≡"
d1856 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70
d1856 v0 v1 v2 v3 v4 = du1856 v3
du1856 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70
du1856 v0 = coe v0
name1858 = "Data.Nat.Properties.≤-Reasoning._.step-≡˘"
d1858 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70
d1858 v0 v1 v2 v3 v4 = du1858 v3
du1858 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70
du1858 v0 = coe v0
name1860 = "Data.Nat.Properties.≤-Reasoning._.step-≤"
d1860 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70
d1860
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du228
      (coe d1484) (\ v0 v1 v2 v3 v4 -> coe du1652 v3 v4)
name1880 = "Data.Nat.Properties.pred-mono"
d1880 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1880 v0 v1 v2 = du1880 v2
du1880 ::
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1880 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C10
        -> coe MAlonzo.Code.Data.Nat.Base.C10
      MAlonzo.Code.Data.Nat.Base.C18 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1888 = "Data.Nat.Properties.≤pred⇒≤"
d1888 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1888 v0 v1 v2 = du1888 v1 v2
du1888 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1888 v0 v1 = coe seq (coe v0) (coe v1)
name1904 = "Data.Nat.Properties.≤⇒pred≤"
d1904 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1904 v0 v1 v2 = du1904 v0 v2
du1904 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1904 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe du1442 (coe d1520 (coe v2)) (coe v1)
name1916 = "Data.Nat.Properties.<⇒≤pred"
d1916 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1916 v0 v1 v2 = du1916 v2
du1916 ::
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1916 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C18 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1922 = "Data.Nat.Properties.suc[pred[n]]≡n"
d1922 ::
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1922 = erased
name1934 = "Data.Nat.Properties.+-suc"
d1934 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1934 = erased
name1942 = "Data.Nat.Properties.+-assoc"
d1942 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1942 = erased
name1950 = "Data.Nat.Properties.+-identityˡ"
d1950 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1950 = erased
name1952 = "Data.Nat.Properties.+-identityʳ"
d1952 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1952 = erased
name1956 = "Data.Nat.Properties.+-identity"
d1956 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d1956 = coe MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased
name1958 = "Data.Nat.Properties.+-comm"
d1958 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1958 = erased
name1966 = "Data.Nat.Properties.+-cancelˡ-≡"
d1966 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1966 = erased
name1974 = "Data.Nat.Properties.+-cancelʳ-≡"
d1974 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1974 = erased
name1976 = "Data.Nat.Properties.+-cancel-≡"
d1976 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d1976 = coe MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased
name1978 = "Data.Nat.Properties.+-isMagma"
d1978 :: MAlonzo.Code.Algebra.Structures.T80
d1978
  = coe
      MAlonzo.Code.Algebra.Structures.C423
      (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.du66)
      erased
name1980 = "Data.Nat.Properties.+-isSemigroup"
d1980 :: MAlonzo.Code.Algebra.Structures.T116
d1980
  = coe MAlonzo.Code.Algebra.Structures.C1721 (coe d1978) erased
name1982 = "Data.Nat.Properties.+-isCommutativeSemigroup"
d1982 :: MAlonzo.Code.Algebra.Structures.T192
d1982
  = coe MAlonzo.Code.Algebra.Structures.C2681 (coe d1980) erased
name1984 = "Data.Nat.Properties.+-0-isMonoid"
d1984 :: MAlonzo.Code.Algebra.Structures.T314
d1984
  = coe MAlonzo.Code.Algebra.Structures.C4201 (coe d1980) (coe d1956)
name1986 = "Data.Nat.Properties.+-0-isCommutativeMonoid"
d1986 :: MAlonzo.Code.Algebra.Structures.T362
d1986
  = coe MAlonzo.Code.Algebra.Structures.C5263 (coe d1984) erased
name1988 = "Data.Nat.Properties.+-rawMagma"
d1988 :: MAlonzo.Code.Algebra.Bundles.T8
d1988 = coe MAlonzo.Code.Algebra.Bundles.C47 addInt
name1990 = "Data.Nat.Properties.+-0-rawMonoid"
d1990 :: MAlonzo.Code.Algebra.Bundles.T394
d1990
  = coe MAlonzo.Code.Algebra.Bundles.C4379 addInt (0 :: Integer)
name1992 = "Data.Nat.Properties.+-magma"
d1992 :: MAlonzo.Code.Algebra.Bundles.T30
d1992 = coe MAlonzo.Code.Algebra.Bundles.C255 addInt d1978
name1994 = "Data.Nat.Properties.+-semigroup"
d1994 :: MAlonzo.Code.Algebra.Bundles.T80
d1994 = coe MAlonzo.Code.Algebra.Bundles.C877 addInt d1980
name1996 = "Data.Nat.Properties.+-commutativeSemigroup"
d1996 :: MAlonzo.Code.Algebra.Bundles.T202
d1996 = coe MAlonzo.Code.Algebra.Bundles.C2287 addInt d1982
name1998 = "Data.Nat.Properties.+-0-monoid"
d1998 :: MAlonzo.Code.Algebra.Bundles.T422
d1998
  = coe
      MAlonzo.Code.Algebra.Bundles.C4689 addInt (0 :: Integer) d1984
name2000 = "Data.Nat.Properties.+-0-commutativeMonoid"
d2000 :: MAlonzo.Code.Algebra.Bundles.T496
d2000
  = coe
      MAlonzo.Code.Algebra.Bundles.C5649 addInt (0 :: Integer) d1986
name2006 = "Data.Nat.Properties.m≢1+m+n"
d2006 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d2006 = erased
name2016 = "Data.Nat.Properties.m≢1+n+m"
d2016 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d2016 = erased
name2026 = "Data.Nat.Properties.m+1+n≢m"
d2026 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d2026 = erased
name2034 = "Data.Nat.Properties.m+1+n≢0"
d2034 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d2034 = erased
name2048 = "Data.Nat.Properties.m+n≡0⇒m≡0"
d2048 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d2048 = erased
name2056 = "Data.Nat.Properties.m+n≡0⇒n≡0"
d2056 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d2056 = erased
name2064 = "Data.Nat.Properties.+-cancelˡ-≤"
d2064 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2064 v0 v1 v2 v3 = du2064 v0 v3
du2064 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2064 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             MAlonzo.Code.Data.Nat.Base.C18 v5 -> coe du2064 (coe v2) (coe v5)
             _ -> MAlonzo.RTE.mazUnreachableError
name2072 = "Data.Nat.Properties.+-cancelʳ-≤"
d2072 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2072 v0 v1 v2 v3 = du2072 v0 v3
du2072 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2072 v0 v1 = coe du2064 (coe v0) (coe v1)
name2082 = "Data.Nat.Properties.+-cancel-≤"
d2082 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d2082
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32
      (\ v0 v1 v2 v3 -> coe du2064 v0 v3)
      (\ v0 v1 v2 v3 -> coe du2072 v0 v3)
name2084 = "Data.Nat.Properties.+-cancelˡ-<"
d2084 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2084 v0 v1 v2 v3 = du2084 v0 v3
du2084 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2084 v0 v1 = coe du2064 (coe v0) (coe v1)
name2094 = "Data.Nat.Properties.+-cancelʳ-<"
d2094 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2094 v0 v1 v2 v3 = du2094 v0 v3
du2094 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2094 v0 v1 = coe du2072 (coe v0) (coe v1)
name2102 = "Data.Nat.Properties.+-cancel-<"
d2102 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d2102
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32
      (\ v0 v1 v2 v3 -> coe du2084 v0 v3)
      (\ v0 v1 v2 v3 -> coe du2094 v0 v3)
name2110 = "Data.Nat.Properties.≤-stepsˡ"
d2110 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2110 v0 v1 v2 v3 = du2110 v3
du2110 ::
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2110 v0 = coe v0
name2124 = "Data.Nat.Properties.≤-stepsʳ"
d2124 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2124 v0 v1 v2 v3 = du2124 v3
du2124 ::
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2124 v0 = coe v0
name2138 = "Data.Nat.Properties.m≤m+n"
d2138 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d2138 v0 v1 = du2138 v0
du2138 :: Integer -> MAlonzo.Code.Data.Nat.Base.T6
du2138 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C10
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe MAlonzo.Code.Data.Nat.Base.C18 (coe du2138 (coe v1))
name2150 = "Data.Nat.Properties.m≤n+m"
d2150 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d2150 v0 v1 = du2150 v0
du2150 :: Integer -> MAlonzo.Code.Data.Nat.Base.T6
du2150 v0 = coe du2138 (coe v0)
name2162 = "Data.Nat.Properties.m≤n⇒m<n∨m≡n"
d2162 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Sum.Base.T30
d2162 v0 v1 v2
  = case coe v0 of
      0 -> case coe v1 of
             0 -> coe MAlonzo.Code.Data.Sum.Base.C42 erased
             _ -> coe MAlonzo.Code.Data.Sum.Base.C38 (coe du1728)
      _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
           let v4 = subInt (coe v1) (coe (1 :: Integer)) in
           case coe v2 of
             MAlonzo.Code.Data.Nat.Base.C18 v7
               -> let v8 = d2162 (coe v3) (coe v4) (coe v7) in
                  case coe v8 of
                    MAlonzo.Code.Data.Sum.Base.C38 v9
                      -> coe
                           MAlonzo.Code.Data.Sum.Base.C38
                           (coe MAlonzo.Code.Data.Nat.Base.C18 v9)
                    MAlonzo.Code.Data.Sum.Base.C42 v9
                      -> coe MAlonzo.Code.Data.Sum.Base.C42 erased
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
name2198 = "Data.Nat.Properties.m+n≤o⇒m≤o"
d2198 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2198 v0 v1 v2 v3 = du2198 v0 v3
du2198 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2198 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C10
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             MAlonzo.Code.Data.Nat.Base.C18 v5
               -> coe
                    MAlonzo.Code.Data.Nat.Base.C18 (coe du2198 (coe v2) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
name2212 = "Data.Nat.Properties.m+n≤o⇒n≤o"
d2212 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2212 v0 v1 v2 v3 = du2212 v0 v2 v3
du2212 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2212 v0 v1 v2
  = case coe v0 of
      0 -> coe v2
      _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
           coe du2212 (coe v3) (coe v1) (coe du1532 (coe v1) (coe v2))
name2220 = "Data.Nat.Properties.+-mono-≤"
d2220 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2220 v0 v1 v2 v3 v4 v5 = du2220 v3 v4 v5
du2220 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2220 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C10
        -> coe du1442 (coe v2) (coe du2150 (coe v0))
      MAlonzo.Code.Data.Nat.Base.C18 v5
        -> coe
             MAlonzo.Code.Data.Nat.Base.C18
             (coe du2220 (coe v0) (coe v5) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
name2234 = "Data.Nat.Properties.+-monoˡ-≤"
d2234 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2234 v0 v1 v2 v3 = du2234 v0 v3
du2234 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2234 v0 v1 = coe du2220 (coe v0) (coe v1) (coe d1434 (coe v0))
name2244 = "Data.Nat.Properties.+-monoʳ-≤"
d2244 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2244 v0 v1 v2 v3 = du2244 v0 v2 v3
du2244 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2244 v0 v1 v2 = coe du2220 (coe v1) (coe d1434 (coe v0)) (coe v2)
name2250 = "Data.Nat.Properties.+-mono-<-≤"
d2250 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2250 v0 v1 v2 v3 v4 v5 = du2250 v4 v5
du2250 ::
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2250 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C18 v4
        -> case coe v4 of
             MAlonzo.Code.Data.Nat.Base.C10
               -> coe MAlonzo.Code.Data.Nat.Base.C18 v1
             MAlonzo.Code.Data.Nat.Base.C18 v7
               -> coe
                    MAlonzo.Code.Data.Nat.Base.C18
                    (coe du2250 (coe MAlonzo.Code.Data.Nat.Base.C18 v7) (coe v1))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name2260 = "Data.Nat.Properties.+-mono-≤-<"
d2260 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2260 v0 v1 v2 v3 v4 v5 = du2260 v3 v4 v5
du2260 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2260 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C10
        -> coe du1442 (coe v2) (coe du2150 (coe v0))
      MAlonzo.Code.Data.Nat.Base.C18 v5
        -> coe
             MAlonzo.Code.Data.Nat.Base.C18
             (coe du2260 (coe v0) (coe v5) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
name2270 = "Data.Nat.Properties.+-mono-<"
d2270 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2270 v0 v1 v2 v3 v4 = du2270 v1 v3 v4
du2270 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2270 v0 v1 v2
  = coe du2260 (coe v1) (coe du1532 (coe v0) (coe v2))
name2278 = "Data.Nat.Properties.+-monoˡ-<"
d2278 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2278 v0 v1 v2 = du2278 v0
du2278 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2278 v0 = coe du2234 (coe v0)
name2286 = "Data.Nat.Properties.+-monoʳ-<"
d2286 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2286 v0 v1 v2 v3 = du2286 v0 v3
du2286 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2286 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe MAlonzo.Code.Data.Nat.Base.C18 (coe du2286 (coe v2) (coe v1))
name2298 = "Data.Nat.Properties.m+1+n≰m"
d2298 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d2298 = erased
name2308 = "Data.Nat.Properties.m<m+n"
d2308 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2308 v0 v1 v2 = du2308 v0 v2
du2308 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2308 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe MAlonzo.Code.Data.Nat.Base.C18 (coe du2308 (coe v2) (coe v1))
name2320 = "Data.Nat.Properties.m<n+m"
d2320 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2320 v0 v1 v2 = du2320 v0 v2
du2320 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2320 v0 v1 = coe du2308 (coe v0) (coe v1)
name2336 = "Data.Nat.Properties.m+n≮n"
d2336 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d2336 = erased
name2350 = "Data.Nat.Properties.m+n≮m"
d2350 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d2350 = erased
name2362 = "Data.Nat.Properties.*-suc"
d2362 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2362 = erased
name2374 = "Data.Nat.Properties.*-identityˡ"
d2374 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2374 = erased
name2378 = "Data.Nat.Properties.*-identityʳ"
d2378 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2378 = erased
name2382 = "Data.Nat.Properties.*-identity"
d2382 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d2382 = coe MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased
name2384 = "Data.Nat.Properties.*-zeroˡ"
d2384 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2384 = erased
name2386 = "Data.Nat.Properties.*-zeroʳ"
d2386 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2386 = erased
name2390 = "Data.Nat.Properties.*-zero"
d2390 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d2390 = coe MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased
name2392 = "Data.Nat.Properties.*-comm"
d2392 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2392 = erased
name2402 = "Data.Nat.Properties.*-distribʳ-+"
d2402 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2402 = erased
name2416 = "Data.Nat.Properties.*-distribˡ-+"
d2416 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2416 = erased
name2418 = "Data.Nat.Properties.*-distrib-+"
d2418 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d2418 = coe MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased
name2420 = "Data.Nat.Properties.*-assoc"
d2420 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2420 = erased
name2434 = "Data.Nat.Properties.*-isMagma"
d2434 :: MAlonzo.Code.Algebra.Structures.T80
d2434
  = coe
      MAlonzo.Code.Algebra.Structures.C423
      (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.du66)
      erased
name2436 = "Data.Nat.Properties.*-isSemigroup"
d2436 :: MAlonzo.Code.Algebra.Structures.T116
d2436
  = coe MAlonzo.Code.Algebra.Structures.C1721 (coe d2434) erased
name2438 = "Data.Nat.Properties.*-isCommutativeSemigroup"
d2438 :: MAlonzo.Code.Algebra.Structures.T192
d2438
  = coe MAlonzo.Code.Algebra.Structures.C2681 (coe d2436) erased
name2440 = "Data.Nat.Properties.*-1-isMonoid"
d2440 :: MAlonzo.Code.Algebra.Structures.T314
d2440
  = coe MAlonzo.Code.Algebra.Structures.C4201 (coe d2436) (coe d2382)
name2442 = "Data.Nat.Properties.*-1-isCommutativeMonoid"
d2442 :: MAlonzo.Code.Algebra.Structures.T362
d2442
  = coe MAlonzo.Code.Algebra.Structures.C5263 (coe d2440) erased
name2444 = "Data.Nat.Properties.*-+-isSemiring"
d2444 :: MAlonzo.Code.Algebra.Structures.T1176
d2444
  = coe
      MAlonzo.Code.Algebra.Structures.C21401
      (coe
         MAlonzo.Code.Algebra.Structures.C19373 (coe d1986) (coe d2440)
         (coe d2418))
      (coe d2390)
name2446 = "Data.Nat.Properties.*-+-isCommutativeSemiring"
d2446 :: MAlonzo.Code.Algebra.Structures.T1280
d2446
  = coe MAlonzo.Code.Algebra.Structures.C23247 (coe d2444) erased
name2448 = "Data.Nat.Properties.*-rawMagma"
d2448 :: MAlonzo.Code.Algebra.Bundles.T8
d2448 = coe MAlonzo.Code.Algebra.Bundles.C47 mulInt
name2450 = "Data.Nat.Properties.*-1-rawMonoid"
d2450 :: MAlonzo.Code.Algebra.Bundles.T394
d2450
  = coe MAlonzo.Code.Algebra.Bundles.C4379 mulInt (1 :: Integer)
name2452 = "Data.Nat.Properties.*-magma"
d2452 :: MAlonzo.Code.Algebra.Bundles.T30
d2452 = coe MAlonzo.Code.Algebra.Bundles.C255 mulInt d2434
name2454 = "Data.Nat.Properties.*-semigroup"
d2454 :: MAlonzo.Code.Algebra.Bundles.T80
d2454 = coe MAlonzo.Code.Algebra.Bundles.C877 mulInt d2436
name2456 = "Data.Nat.Properties.*-commutativeSemigroup"
d2456 :: MAlonzo.Code.Algebra.Bundles.T202
d2456 = coe MAlonzo.Code.Algebra.Bundles.C2287 mulInt d2438
name2458 = "Data.Nat.Properties.*-1-monoid"
d2458 :: MAlonzo.Code.Algebra.Bundles.T422
d2458
  = coe
      MAlonzo.Code.Algebra.Bundles.C4689 mulInt (1 :: Integer) d2440
name2460 = "Data.Nat.Properties.*-1-commutativeMonoid"
d2460 :: MAlonzo.Code.Algebra.Bundles.T496
d2460
  = coe
      MAlonzo.Code.Algebra.Bundles.C5649 mulInt (1 :: Integer) d2442
name2462 = "Data.Nat.Properties.*-+-semiring"
d2462 :: MAlonzo.Code.Algebra.Bundles.T1666
d2462
  = coe
      MAlonzo.Code.Algebra.Bundles.C18607 addInt mulInt (0 :: Integer)
      (1 :: Integer) d2444
name2464 = "Data.Nat.Properties.*-+-commutativeSemiring"
d2464 :: MAlonzo.Code.Algebra.Bundles.T1818
d2464
  = coe
      MAlonzo.Code.Algebra.Bundles.C20443 addInt mulInt (0 :: Integer)
      (1 :: Integer) d2446
name2472 = "Data.Nat.Properties.*-cancelʳ-≡"
d2472 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d2472 = erased
name2490 = "Data.Nat.Properties.*-cancelˡ-≡"
d2490 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d2490 = erased
name2504 = "Data.Nat.Properties.m*n≡0⇒m≡0∨n≡0"
d2504 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Sum.Base.T30
d2504 v0 v1 v2 = du2504 v0
du2504 :: Integer -> MAlonzo.Code.Data.Sum.Base.T30
du2504 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Sum.Base.C38 erased
      _ -> coe MAlonzo.Code.Data.Sum.Base.C42 erased
name2518 = "Data.Nat.Properties.m*n≡1⇒m≡1"
d2518 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d2518 = erased
name2532 = "Data.Nat.Properties.m*n≡1⇒n≡1"
d2532 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d2532 = erased
name2546 = "Data.Nat.Properties.*-cancelʳ-≤"
d2546 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2546 v0 v1 v2 v3 = du2546 v0
du2546 :: Integer -> MAlonzo.Code.Data.Nat.Base.T6
du2546 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C10
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe MAlonzo.Code.Data.Nat.Base.C18 (coe du2546 (coe v1))
name2562 = "Data.Nat.Properties.*-cancelˡ-≤"
d2562 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2562 v0 v1 v2 = du2562 v0
du2562 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2562 v0 v1 = coe du2546 (coe v0)
name2578 = "Data.Nat.Properties.*-mono-≤"
d2578 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2578 v0 v1 v2 v3 v4 v5 = du2578 v1 v3 v4 v5
du2578 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2578 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Data.Nat.Base.C10
        -> coe MAlonzo.Code.Data.Nat.Base.C10
      MAlonzo.Code.Data.Nat.Base.C18 v6
        -> let v7 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             du2220 (coe mulInt (coe v7) (coe v1)) (coe v3)
             (coe du2578 (coe v7) (coe v1) (coe v6) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
name2588 = "Data.Nat.Properties.*-monoˡ-≤"
d2588 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2588 v0 v1 v2 v3 = du2588 v0 v2 v3
du2588 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2588 v0 v1 v2
  = coe du2578 (coe v1) (coe v0) (coe v2) (coe d1434 (coe v0))
name2598 = "Data.Nat.Properties.*-monoʳ-≤"
d2598 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2598 v0 v1 v2 v3 = du2598 v0 v2 v3
du2598 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2598 v0 v1 v2
  = coe du2578 (coe v0) (coe v1) (coe d1434 (coe v0)) (coe v2)
name2604 = "Data.Nat.Properties.*-mono-<"
d2604 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2604 v0 v1 v2 v3 v4 v5 = du2604 v1 v3 v4 v5
du2604 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2604 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Data.Nat.Base.C18 v6
        -> case coe v6 of
             MAlonzo.Code.Data.Nat.Base.C10
               -> coe
                    seq (coe v3)
                    (coe
                       MAlonzo.Code.Data.Nat.Base.C18
                       (coe MAlonzo.Code.Data.Nat.Base.C10))
             MAlonzo.Code.Data.Nat.Base.C18 v9
               -> case coe v3 of
                    MAlonzo.Code.Data.Nat.Base.C18 v12
                      -> coe
                           du2270 v1
                           (mulInt (coe subInt (coe v0) (coe (1 :: Integer))) (coe v1))
                           (coe MAlonzo.Code.Data.Nat.Base.C18 v12)
                           (coe
                              du2604 (coe subInt (coe v0) (coe (1 :: Integer))) (coe v1)
                              (coe MAlonzo.Code.Data.Nat.Base.C18 v9)
                              (coe MAlonzo.Code.Data.Nat.Base.C18 v12))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name2616 = "Data.Nat.Properties.*-monoˡ-<"
d2616 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2616 v0 v1 v2 v3 = du2616 v0 v2 v3
du2616 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2616 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.Nat.Base.C18 v5
        -> case coe v5 of
             MAlonzo.Code.Data.Nat.Base.C10
               -> coe
                    MAlonzo.Code.Data.Nat.Base.C18 (coe MAlonzo.Code.Data.Nat.Base.C10)
             MAlonzo.Code.Data.Nat.Base.C18 v8
               -> coe
                    du2260
                    (coe
                       mulInt (coe subInt (coe v1) (coe (1 :: Integer)))
                       (coe addInt (coe (1 :: Integer)) (coe v0)))
                    (coe d1434 (coe addInt (coe (1 :: Integer)) (coe v0)))
                    (coe
                       du2616 (coe v0) (coe subInt (coe v1) (coe (1 :: Integer)))
                       (coe MAlonzo.Code.Data.Nat.Base.C18 v8))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name2628 = "Data.Nat.Properties.*-monoʳ-<"
d2628 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2628 v0 v1 v2 v3 = du2628 v0 v2 v3
du2628 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2628 v0 v1 v2
  = case coe v0 of
      0 -> case coe v2 of
             MAlonzo.Code.Data.Nat.Base.C18 v5
               -> coe
                    du2220 (coe (0 :: Integer)) (coe MAlonzo.Code.Data.Nat.Base.C18 v5)
                    (coe MAlonzo.Code.Data.Nat.Base.C10)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v2 of
             MAlonzo.Code.Data.Nat.Base.C18 v6
               -> coe
                    du2220 (coe mulInt (coe v0) (coe v1))
                    (coe MAlonzo.Code.Data.Nat.Base.C18 v6)
                    (coe
                       du1532 (coe mulInt (coe v0) (coe v1))
                       (coe
                          du2628 (coe v3) (coe v1) (coe MAlonzo.Code.Data.Nat.Base.C18 v6)))
             _ -> MAlonzo.RTE.mazUnreachableError
name2640 = "Data.Nat.Properties.m≤m*n"
d2640 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2640 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du160
      (coe d1484) (\ v3 v4 v5 -> coe du1532 v4 v5) (coe v0)
      (coe mulInt (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du228
         (coe d1484) (\ v3 v4 v5 v6 v7 -> coe du1652 v6 v7)
         (coe mulInt (coe v0) (coe (1 :: Integer)))
         (coe mulInt (coe v0) (coe v1)) (coe mulInt (coe v0) (coe v1))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.C86
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d34
               (MAlonzo.Code.Relation.Binary.Structures.d80 (coe d1484))
               (mulInt (coe v0) (coe v1))))
         (coe du2598 (coe v0) (coe v1) (coe v2)))
name2652 = "Data.Nat.Properties.m<m*n"
d2652 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2652 v0 v1 v2 v3
  = let v4 = subInt (coe v0) (coe (1 :: Integer)) in
    coe
      seq (coe v2)
      (case coe v3 of
         MAlonzo.Code.Data.Nat.Base.C18 v7
           -> coe
                seq (coe v7)
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du176
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du202
                      (\ v8 v9 v10 v11 v12 -> coe du1646 v9 v11 v12)
                      (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du66)
                      (\ v8 v9 v10 v11 v12 -> coe du1658 v11 v12) (coe v0)
                      (coe addInt (coe v1) (coe v4)) (coe mulInt (coe v0) (coe v1))
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du228
                         (coe d1484) (\ v8 v9 v10 v11 v12 -> coe du1652 v11 v12)
                         (coe addInt (coe v1) (coe v4))
                         (coe addInt (coe v1) (coe mulInt (coe v4) (coe v1)))
                         (coe mulInt (coe v0) (coe v1))
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.C86
                            (coe
                               MAlonzo.Code.Relation.Binary.Structures.d34
                               (MAlonzo.Code.Relation.Binary.Structures.d80 (coe d1484))
                               (mulInt (coe v0) (coe v1))))
                         (coe
                            du2244 (coe v1) (coe mulInt (coe v4) (coe v1))
                            (coe d2640 (coe v4) (coe v1) (coe du1728))))
                      (coe
                         MAlonzo.Code.Data.Nat.Base.C18
                         (coe MAlonzo.Code.Data.Nat.Base.C18 (coe du2150 (coe v4))))))
         _ -> MAlonzo.RTE.mazUnreachableError)
name2662 = "Data.Nat.Properties.*-cancelʳ-<"
d2662 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2662 v0 v1 v2 v3 = du2662 v0 v1 v2
du2662 ::
  Integer -> Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
du2662 v0 v1 v2
  = let v3
          = let v3 = subInt (coe v1) (coe (1 :: Integer)) in
            let v4 = subInt (coe v2) (coe (1 :: Integer)) in
            coe
              MAlonzo.Code.Data.Nat.Base.C18
              (coe du2662 (coe v0) (coe v3) (coe v4)) in
    coe
      seq (coe v0)
      (case coe v1 of
         0 -> case coe v2 of
                _ | coe geqInt (coe v2) (coe (1 :: Integer)) -> coe du1728
                _ -> coe v3
         _ -> let v4 = subInt (coe v1) (coe (1 :: Integer)) in
              case coe v2 of
                _ | coe geqInt (coe v2) (coe (1 :: Integer)) ->
                    let v5 = subInt (coe v2) (coe (1 :: Integer)) in
                    coe
                      MAlonzo.Code.Data.Nat.Base.C18
                      (coe du2662 (coe v0) (coe v4) (coe v5))
                _ -> coe v3)
name2678 = "Data.Nat.Properties.*-cancelˡ-<"
d2678 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2678 v0 v1 v2 v3 = coe du2662 (coe v0) (coe v1) (coe v2)
name2694 = "Data.Nat.Properties.*-cancel-<"
d2694 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d2694
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe d2678)
      (\ v0 v1 v2 v3 -> coe du2662 v0 v1 v2)
name2696 = "Data.Nat.Properties.^-identityʳ"
d2696 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2696 = erased
name2700 = "Data.Nat.Properties.^-zeroˡ"
d2700 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2700 = erased
name2710 = "Data.Nat.Properties.^-distribˡ-+-*"
d2710 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2710 = erased
name2728 = "Data.Nat.Properties.^-semigroup-morphism"
d2728 :: Integer -> MAlonzo.Code.Algebra.Morphism.T144
d2728 v0 = du2728
du2728 :: MAlonzo.Code.Algebra.Morphism.T144
du2728 = coe MAlonzo.Code.Algebra.Morphism.C771 erased erased
name2736 = "Data.Nat.Properties.^-monoid-morphism"
d2736 :: Integer -> MAlonzo.Code.Algebra.Morphism.T290
d2736 v0 = du2736
du2736 :: MAlonzo.Code.Algebra.Morphism.T290
du2736
  = coe MAlonzo.Code.Algebra.Morphism.C1525 (coe du2728) erased
name2744 = "Data.Nat.Properties.^-*-assoc"
d2744 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2744 = erased
name2766 = "Data.Nat.Properties.m^n≡0⇒m≡0"
d2766 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d2766 = erased
name2778 = "Data.Nat.Properties.m^n≡1⇒n≡0∨m≡1"
d2778 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Sum.Base.T30
d2778 v0 v1 v2 = du2778 v1
du2778 :: Integer -> MAlonzo.Code.Data.Sum.Base.T30
du2778 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Sum.Base.C38 erased
      _ -> coe MAlonzo.Code.Data.Sum.Base.C42 erased
name2788 = "Data.Nat.Properties.⊔-assoc"
d2788 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2788 = erased
name2804 = "Data.Nat.Properties.⊔-identityˡ"
d2804 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2804 = erased
name2806 = "Data.Nat.Properties.⊔-identityʳ"
d2806 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2806 = erased
name2810 = "Data.Nat.Properties.⊔-identity"
d2810 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d2810 = coe MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased
name2812 = "Data.Nat.Properties.⊔-comm"
d2812 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2812 = erased
name2822 = "Data.Nat.Properties.⊔-sel"
d2822 :: Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T30
d2822 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Sum.Base.C42 erased
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe MAlonzo.Code.Data.Sum.Base.C38 erased
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe d2822 (coe v2) (coe v3)
name2846 = "Data.Nat.Properties.⊔-idem"
d2846 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2846 = erased
name2854 = "Data.Nat.Properties.⊔-least"
d2854 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2854 v0 v1 v2 v3 v4 = du2854 v0 v1 v3 v4
du2854 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2854 v0 v1 v2 v3
  = let v4 = d2822 (coe v0) (coe v1) in
    case coe v4 of
      MAlonzo.Code.Data.Sum.Base.C38 v5 -> coe v2
      MAlonzo.Code.Data.Sum.Base.C42 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name2896 = "Data.Nat.Properties.⊔-isMagma"
d2896 :: MAlonzo.Code.Algebra.Structures.T80
d2896
  = coe
      MAlonzo.Code.Algebra.Structures.C423
      (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.du66)
      erased
name2898 = "Data.Nat.Properties.⊔-isSemigroup"
d2898 :: MAlonzo.Code.Algebra.Structures.T116
d2898
  = coe MAlonzo.Code.Algebra.Structures.C1721 (coe d2896) erased
name2900 = "Data.Nat.Properties.⊔-isBand"
d2900 :: MAlonzo.Code.Algebra.Structures.T152
d2900
  = coe MAlonzo.Code.Algebra.Structures.C2175 (coe d2898) erased
name2902 = "Data.Nat.Properties.⊔-isSemilattice"
d2902 :: MAlonzo.Code.Algebra.Structures.T232
d2902
  = coe MAlonzo.Code.Algebra.Structures.C3189 (coe d2900) erased
name2904 = "Data.Nat.Properties.⊔-0-isMonoid"
d2904 :: MAlonzo.Code.Algebra.Structures.T314
d2904
  = coe MAlonzo.Code.Algebra.Structures.C4201 (coe d2898) (coe d2810)
name2906 = "Data.Nat.Properties.⊔-0-isCommutativeMonoid"
d2906 :: MAlonzo.Code.Algebra.Structures.T362
d2906
  = coe MAlonzo.Code.Algebra.Structures.C5263 (coe d2904) erased
name2908 = "Data.Nat.Properties.⊔-magma"
d2908 :: MAlonzo.Code.Algebra.Bundles.T30
d2908
  = coe
      MAlonzo.Code.Algebra.Bundles.C255 MAlonzo.Code.Data.Nat.Base.d74
      d2896
name2910 = "Data.Nat.Properties.⊔-semigroup"
d2910 :: MAlonzo.Code.Algebra.Bundles.T80
d2910
  = coe
      MAlonzo.Code.Algebra.Bundles.C877 MAlonzo.Code.Data.Nat.Base.d74
      d2898
name2912 = "Data.Nat.Properties.⊔-band"
d2912 :: MAlonzo.Code.Algebra.Bundles.T138
d2912
  = coe
      MAlonzo.Code.Algebra.Bundles.C1567 MAlonzo.Code.Data.Nat.Base.d74
      d2900
name2914 = "Data.Nat.Properties.⊔-semilattice"
d2914 :: MAlonzo.Code.Algebra.Bundles.T266
d2914
  = coe
      MAlonzo.Code.Algebra.Bundles.C3011 MAlonzo.Code.Data.Nat.Base.d74
      d2902
name2916 = "Data.Nat.Properties.⊔-0-commutativeMonoid"
d2916 :: MAlonzo.Code.Algebra.Bundles.T496
d2916
  = coe
      MAlonzo.Code.Algebra.Bundles.C5649 MAlonzo.Code.Data.Nat.Base.d74
      (0 :: Integer) d2906
name2924 = "Data.Nat.Properties.⊔-triangulate"
d2924 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2924 = erased
name2940 = "Data.Nat.Properties.m≤m⊔n"
d2940 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d2940 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C10
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe d1434 (coe v0)
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe MAlonzo.Code.Data.Nat.Base.C18 (d2940 (coe v2) (coe v3))
name2952 = "Data.Nat.Properties.n≤m⊔n"
d2952 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d2952 v0 v1 = coe d2940 (coe v1) (coe v0)
name2964 = "Data.Nat.Properties.m≤n⇒n⊔m≡n"
d2964 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d2964 = erased
name2972 = "Data.Nat.Properties.m≤n⇒m⊔n≡n"
d2972 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d2972 = erased
name2982 = "Data.Nat.Properties.n⊔m≡m⇒n≤m"
d2982 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Nat.Base.T6
d2982 v0 v1 v2 = du2982 v0 v1
du2982 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
du2982 v0 v1 = coe d2940 (coe v1) (coe v0)
name2992 = "Data.Nat.Properties.n⊔m≡n⇒m≤n"
d2992 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Nat.Base.T6
d2992 v0 v1 v2 = du2992 v0 v1
du2992 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
du2992 v0 v1 = coe d2952 (coe v1) (coe v0)
name3004 = "Data.Nat.Properties.m≤n⇒m≤n⊔o"
d3004 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3004 v0 v1 v2 v3 = du3004 v1 v2 v3
du3004 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du3004 v0 v1 v2 = coe du1442 (coe v2) (coe d2940 (coe v0) (coe v1))
name3016 = "Data.Nat.Properties.m≤n⇒m≤o⊔n"
d3016 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3016 v0 v1 v2 v3 = du3016 v1 v2 v3
du3016 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du3016 v0 v1 v2 = coe du1442 (coe v2) (coe d2952 (coe v1) (coe v0))
name3028 = "Data.Nat.Properties.m⊔n≤o⇒m≤o"
d3028 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3028 v0 v1 v2 v3 = du3028 v0 v1 v3
du3028 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du3028 v0 v1 v2 = coe du1442 (coe d2940 (coe v0) (coe v1)) (coe v2)
name3042 = "Data.Nat.Properties.m⊔n≤o⇒n≤o"
d3042 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3042 v0 v1 v2 v3 = du3042 v0 v1 v3
du3042 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du3042 v0 v1 v2 = coe du1442 (coe d2952 (coe v0) (coe v1)) (coe v2)
name3056 = "Data.Nat.Properties.m<n⇒m<n⊔o"
d3056 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3056 v0 v1 = du3056 v1
du3056 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du3056 v0 = coe du3004 (coe v0)
name3064 = "Data.Nat.Properties.m<n⇒m<o⊔n"
d3064 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3064 v0 v1 = du3064 v1
du3064 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du3064 v0 = coe du3016 (coe v0)
name3072 = "Data.Nat.Properties.m⊔n<o⇒m<o"
d3072 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3072 v0 v1 v2 v3 = du3072 v0 v1 v3
du3072 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du3072 v0 v1 v2 = coe du1652 (coe d2940 (coe v0) (coe v1)) (coe v2)
name3086 = "Data.Nat.Properties.m⊔n<o⇒n<o"
d3086 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3086 v0 v1 v2 v3 = du3086 v0 v1 v3
du3086 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du3086 v0 v1 v2 = coe du1652 (coe d2952 (coe v0) (coe v1)) (coe v2)
name3094 = "Data.Nat.Properties.⊔-mono-≤"
d3094 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3094 v0 v1 v2 v3 v4 v5
  = let v6 = d2822 (coe v0) (coe v2) in
    case coe v6 of
      MAlonzo.Code.Data.Sum.Base.C38 v7
        -> coe du1442 (coe v4) (coe d2940 (coe v1) (coe v3))
      MAlonzo.Code.Data.Sum.Base.C42 v7
        -> coe du1442 (coe v5) (coe d2952 (coe v1) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
name3152 = "Data.Nat.Properties.⊔-monoˡ-≤"
d3152 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3152 v0 v1 v2 v3
  = coe
      d3094 (coe v1) (coe v2) (coe v0) (coe v0) (coe v3)
      (coe d1434 (coe v0))
name3162 = "Data.Nat.Properties.⊔-monoʳ-≤"
d3162 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3162 v0 v1 v2 v3
  = coe
      d3094 (coe v0) (coe v0) (coe v1) (coe v2) (coe d1434 (coe v0))
      (coe v3)
name3168 = "Data.Nat.Properties.⊔-mono-<"
d3168 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3168 v0 v1 v2 v3
  = coe
      d3094 (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1)
      (coe addInt (coe (1 :: Integer)) (coe v2)) (coe v3)
name3176 = "Data.Nat.Properties.⊔-pres-≤m"
d3176 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3176 v0 v1 v2 v3 v4
  = coe d3094 (coe v1) (coe v0) (coe v2) (coe v0) (coe v3) (coe v4)
name3192 = "Data.Nat.Properties.⊔-pres-<m"
d3192 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3192 v0 v1 v2 v3 v4 = coe d3168 v1 v0 v2 v0 v3 v4
name3202 = "Data.Nat.Properties.+-distribˡ-⊔"
d3202 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3202 = erased
name3214 = "Data.Nat.Properties.+-distribʳ-⊔"
d3214 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3214 = erased
name3216 = "Data.Nat.Properties.+-distrib-⊔"
d3216 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d3216 = coe MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased
name3222 = "Data.Nat.Properties.m⊔n≤m+n"
d3222 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d3222 v0 v1
  = let v2 = d2822 (coe v0) (coe v1) in
    case coe v2 of
      MAlonzo.Code.Data.Sum.Base.C38 v3 -> coe du2138 (coe v0)
      MAlonzo.Code.Data.Sum.Base.C42 v3 -> coe du2150 (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
name3252 = "Data.Nat.Properties.⊓-assoc"
d3252 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3252 = erased
name3268 = "Data.Nat.Properties.⊓-zeroˡ"
d3268 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3268 = erased
name3270 = "Data.Nat.Properties.⊓-zeroʳ"
d3270 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3270 = erased
name3274 = "Data.Nat.Properties.⊓-zero"
d3274 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d3274 = coe MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased
name3276 = "Data.Nat.Properties.⊓-comm"
d3276 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3276 = erased
name3286 = "Data.Nat.Properties.⊓-sel"
d3286 :: Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T30
d3286 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Sum.Base.C38 erased
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe MAlonzo.Code.Data.Sum.Base.C42 erased
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe d3286 (coe v2) (coe v3)
name3310 = "Data.Nat.Properties.⊓-idem"
d3310 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3310 = erased
name3318 = "Data.Nat.Properties.⊓-greatest"
d3318 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3318 v0 v1 v2 v3 v4 = du3318 v0 v1 v3 v4
du3318 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du3318 v0 v1 v2 v3
  = let v4 = d3286 (coe v0) (coe v1) in
    case coe v4 of
      MAlonzo.Code.Data.Sum.Base.C38 v5 -> coe v2
      MAlonzo.Code.Data.Sum.Base.C42 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name3360 = "Data.Nat.Properties.⊓-distribʳ-⊔"
d3360 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3360 = erased
name3380 = "Data.Nat.Properties.⊓-distribˡ-⊔"
d3380 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3380 = erased
name3382 = "Data.Nat.Properties.⊓-distrib-⊔"
d3382 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d3382 = coe MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased
name3384 = "Data.Nat.Properties.⊔-abs-⊓"
d3384 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3384 = erased
name3394 = "Data.Nat.Properties.⊓-abs-⊔"
d3394 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3394 = erased
name3406 = "Data.Nat.Properties.⊓-⊔-absorptive"
d3406 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d3406 = coe MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased
name3408 = "Data.Nat.Properties.⊓-isMagma"
d3408 :: MAlonzo.Code.Algebra.Structures.T80
d3408
  = coe
      MAlonzo.Code.Algebra.Structures.C423
      (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.du66)
      erased
name3410 = "Data.Nat.Properties.⊓-isSemigroup"
d3410 :: MAlonzo.Code.Algebra.Structures.T116
d3410
  = coe MAlonzo.Code.Algebra.Structures.C1721 (coe d3408) erased
name3412 = "Data.Nat.Properties.⊓-isBand"
d3412 :: MAlonzo.Code.Algebra.Structures.T152
d3412
  = coe MAlonzo.Code.Algebra.Structures.C2175 (coe d3410) erased
name3414 = "Data.Nat.Properties.⊓-isSemilattice"
d3414 :: MAlonzo.Code.Algebra.Structures.T232
d3414
  = coe MAlonzo.Code.Algebra.Structures.C3189 (coe d3412) erased
name3416 = "Data.Nat.Properties.⊔-⊓-isSemiringWithoutOne"
d3416 :: MAlonzo.Code.Algebra.Structures.T898
d3416
  = coe
      MAlonzo.Code.Algebra.Structures.C16303 (coe d2906) (coe d3410)
      (coe d3382) (coe d3274)
name3418
  = "Data.Nat.Properties.⊔-⊓-isCommutativeSemiringWithoutOne"
d3418 :: MAlonzo.Code.Algebra.Structures.T990
d3418
  = coe MAlonzo.Code.Algebra.Structures.C18233 (coe d3416) erased
name3420 = "Data.Nat.Properties.⊓-⊔-isLattice"
d3420 :: MAlonzo.Code.Algebra.Structures.T686
d3420
  = coe
      MAlonzo.Code.Algebra.Structures.C11495
      (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.du66)
      erased erased erased erased erased erased (coe d3406)
name3422 = "Data.Nat.Properties.⊓-⊔-isDistributiveLattice"
d3422 :: MAlonzo.Code.Algebra.Structures.T760
d3422
  = coe MAlonzo.Code.Algebra.Structures.C14283 (coe d3420) erased
name3424 = "Data.Nat.Properties.⊓-magma"
d3424 :: MAlonzo.Code.Algebra.Bundles.T30
d3424
  = coe
      MAlonzo.Code.Algebra.Bundles.C255 MAlonzo.Code.Data.Nat.Base.d84
      d3408
name3426 = "Data.Nat.Properties.⊓-semigroup"
d3426 :: MAlonzo.Code.Algebra.Bundles.T80
d3426
  = coe
      MAlonzo.Code.Algebra.Bundles.C877 MAlonzo.Code.Data.Nat.Base.d74
      d2898
name3428 = "Data.Nat.Properties.⊓-band"
d3428 :: MAlonzo.Code.Algebra.Bundles.T138
d3428
  = coe
      MAlonzo.Code.Algebra.Bundles.C1567 MAlonzo.Code.Data.Nat.Base.d84
      d3412
name3430 = "Data.Nat.Properties.⊓-semilattice"
d3430 :: MAlonzo.Code.Algebra.Bundles.T266
d3430
  = coe
      MAlonzo.Code.Algebra.Bundles.C3011 MAlonzo.Code.Data.Nat.Base.d84
      d3414
name3432 = "Data.Nat.Properties.⊔-⊓-commutativeSemiringWithoutOne"
d3432 :: MAlonzo.Code.Algebra.Bundles.T1370
d3432
  = coe
      MAlonzo.Code.Algebra.Bundles.C15573 MAlonzo.Code.Data.Nat.Base.d74
      MAlonzo.Code.Data.Nat.Base.d84 (0 :: Integer) d3418
name3434 = "Data.Nat.Properties.⊓-⊔-lattice"
d3434 :: MAlonzo.Code.Algebra.Bundles.T986
d3434
  = coe
      MAlonzo.Code.Algebra.Bundles.C10761 MAlonzo.Code.Data.Nat.Base.d84
      MAlonzo.Code.Data.Nat.Base.d74 d3420
name3436 = "Data.Nat.Properties.⊓-⊔-distributiveLattice"
d3436 :: MAlonzo.Code.Algebra.Bundles.T1058
d3436
  = coe
      MAlonzo.Code.Algebra.Bundles.C11687 MAlonzo.Code.Data.Nat.Base.d84
      MAlonzo.Code.Data.Nat.Base.d74 d3422
name3444 = "Data.Nat.Properties.⊓-triangulate"
d3444 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3444 = erased
name3460 = "Data.Nat.Properties.m⊓n≤m"
d3460 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d3460 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C10
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe MAlonzo.Code.Data.Nat.Base.C10
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe MAlonzo.Code.Data.Nat.Base.C18 (d3460 (coe v2) (coe v3))
name3472 = "Data.Nat.Properties.m⊓n≤n"
d3472 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d3472 v0 v1 = coe d3460 (coe v1) (coe v0)
name3484 = "Data.Nat.Properties.m≤n⇒m⊓n≡m"
d3484 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d3484 = erased
name3492 = "Data.Nat.Properties.m≤n⇒n⊓m≡m"
d3492 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d3492 = erased
name3502 = "Data.Nat.Properties.m⊓n≡m⇒m≤n"
d3502 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Nat.Base.T6
d3502 v0 v1 v2 = du3502 v0 v1
du3502 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
du3502 v0 v1 = coe d3472 (coe v0) (coe v1)
name3512 = "Data.Nat.Properties.m⊓n≡n⇒n≤m"
d3512 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Nat.Base.T6
d3512 v0 v1 v2 = du3512 v0 v1
du3512 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
du3512 v0 v1 = coe d3460 (coe v0) (coe v1)
name3524 = "Data.Nat.Properties.m≤n⇒m⊓o≤n"
d3524 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3524 v0 v1 v2 v3 = du3524 v0 v2 v3
du3524 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du3524 v0 v1 v2 = coe du1442 (coe d3460 (coe v0) (coe v1)) (coe v2)
name3536 = "Data.Nat.Properties.m≤n⇒o⊓m≤n"
d3536 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3536 v0 v1 v2 v3 = du3536 v0 v2 v3
du3536 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du3536 v0 v1 v2 = coe du1442 (coe d3472 (coe v1) (coe v0)) (coe v2)
name3548 = "Data.Nat.Properties.m≤n⊓o⇒m≤n"
d3548 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3548 v0 v1 v2 v3 = du3548 v1 v2 v3
du3548 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du3548 v0 v1 v2 = coe du1442 (coe v2) (coe d3460 (coe v0) (coe v1))
name3562 = "Data.Nat.Properties.m≤n⊓o⇒m≤o"
d3562 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3562 v0 v1 v2 v3 = du3562 v1 v2 v3
du3562 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du3562 v0 v1 v2 = coe du1442 (coe v2) (coe d3472 (coe v0) (coe v1))
name3576 = "Data.Nat.Properties.m<n⇒m⊓o<n"
d3576 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3576 v0 v1 v2 v3 = du3576 v0 v2 v3
du3576 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du3576 v0 v1 v2 = coe du1652 (coe d3460 (coe v0) (coe v1)) (coe v2)
name3588 = "Data.Nat.Properties.m<n⇒o⊓m<n"
d3588 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3588 v0 v1 v2 v3 = du3588 v0 v2 v3
du3588 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du3588 v0 v1 v2 = coe du1652 (coe d3472 (coe v1) (coe v0)) (coe v2)
name3600 = "Data.Nat.Properties.m<n⊓o⇒m<n"
d3600 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3600 v0 = du3600
du3600 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du3600 = coe du3548
name3608 = "Data.Nat.Properties.m<n⊓o⇒m<o"
d3608 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3608 v0 = du3608
du3608 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du3608 = coe du3562
name3610 = "Data.Nat.Properties.⊓-mono-≤"
d3610 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3610 v0 v1 v2 v3 v4 v5
  = let v6 = d3286 (coe v1) (coe v3) in
    case coe v6 of
      MAlonzo.Code.Data.Sum.Base.C38 v7
        -> coe du1442 (coe d3460 (coe v0) (coe v2)) (coe v4)
      MAlonzo.Code.Data.Sum.Base.C42 v7
        -> coe du1442 (coe d3472 (coe v0) (coe v2)) (coe v5)
      _ -> MAlonzo.RTE.mazUnreachableError
name3668 = "Data.Nat.Properties.⊓-monoˡ-≤"
d3668 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3668 v0 v1 v2 v3
  = coe
      d3610 (coe v1) (coe v2) (coe v0) (coe v0) (coe v3)
      (coe d1434 (coe v0))
name3678 = "Data.Nat.Properties.⊓-monoʳ-≤"
d3678 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3678 v0 v1 v2 v3
  = coe
      d3610 (coe v0) (coe v0) (coe v1) (coe v2) (coe d1434 (coe v0))
      (coe v3)
name3684 = "Data.Nat.Properties.⊓-mono-<"
d3684 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3684 v0 v1 v2 v3
  = coe
      d3610 (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1)
      (coe addInt (coe (1 :: Integer)) (coe v2)) (coe v3)
name3690 = "Data.Nat.Properties.m⊓n≤m⊔n"
d3690 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d3690 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C10
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe MAlonzo.Code.Data.Nat.Base.C10
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe MAlonzo.Code.Data.Nat.Base.C18 (d3690 (coe v2) (coe v3))
name3706 = "Data.Nat.Properties.⊓-pres-m≤"
d3706 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3706 v0 v1 v2 v3 v4
  = coe d3610 (coe v0) (coe v1) (coe v0) (coe v2) (coe v3) (coe v4)
name3722 = "Data.Nat.Properties.⊓-pres-m<"
d3722 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3722 v0 v1 v2 v3 v4 = coe d3684 v0 v1 v0 v2 v3 v4
name3732 = "Data.Nat.Properties.+-distribˡ-⊓"
d3732 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3732 = erased
name3744 = "Data.Nat.Properties.+-distribʳ-⊓"
d3744 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3744 = erased
name3746 = "Data.Nat.Properties.+-distrib-⊓"
d3746 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d3746 = coe MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased
name3752 = "Data.Nat.Properties.m⊓n≤m+n"
d3752 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d3752 v0 v1
  = let v2 = d3286 (coe v0) (coe v1) in
    case coe v2 of
      MAlonzo.Code.Data.Sum.Base.C38 v3 -> coe du2138 (coe v0)
      MAlonzo.Code.Data.Sum.Base.C42 v3 -> coe du2150 (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
name3782 = "Data.Nat.Properties.0∸n≡0"
d3782 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3782 = erased
name3786 = "Data.Nat.Properties.n∸n≡0"
d3786 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3786 = erased
name3794 = "Data.Nat.Properties.m∸n≤m"
d3794 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d3794 v0 v1
  = case coe v1 of
      0 -> coe
             d1434 (coe MAlonzo.Code.Agda.Builtin.Nat.d22 v0 (0 :: Integer))
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           case coe v0 of
             0 -> coe
                    d1434 (coe MAlonzo.Code.Agda.Builtin.Nat.d22 (0 :: Integer) v1)
             _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
                  coe du1442 (coe d3794 (coe v3) (coe v2)) (coe d1520 (coe v3))
name3808 = "Data.Nat.Properties.m≮m∸n"
d3808 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d3808 = erased
name3820 = "Data.Nat.Properties.1+m≢m∸n"
d3820 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d3820 = erased
name3828 = "Data.Nat.Properties.∸-mono"
d3828 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3828 v0 v1 v2 v3 v4 v5
  = let v6
          = seq
              (coe v5) (coe du1442 (coe d3794 (coe v0) (coe v2)) (coe v4)) in
    case coe v4 of
      MAlonzo.Code.Data.Nat.Base.C10
        -> case coe v5 of
             MAlonzo.Code.Data.Nat.Base.C18 v10
               -> case coe v2 of
                    _ | coe geqInt (coe v2) (coe (1 :: Integer)) ->
                        case coe v3 of
                          _ | coe geqInt (coe v3) (coe (1 :: Integer)) ->
                              coe MAlonzo.Code.Data.Nat.Base.C10
                          _ -> coe v6
                    _ -> coe v6
             MAlonzo.Code.Data.Nat.Base.C10
               -> coe
                    du1442 (coe d3794 (coe v0) (coe v2))
                    (coe MAlonzo.Code.Data.Nat.Base.C10)
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Nat.Base.C18 v9
        -> case coe v0 of
             _ | coe geqInt (coe v0) (coe (1 :: Integer)) ->
                 let v10 = subInt (coe v0) (coe (1 :: Integer)) in
                 case coe v1 of
                   _ | coe geqInt (coe v1) (coe (1 :: Integer)) ->
                       let v11 = subInt (coe v1) (coe (1 :: Integer)) in
                       case coe v5 of
                         MAlonzo.Code.Data.Nat.Base.C18 v14
                           -> case coe v2 of
                                _ | coe geqInt (coe v2) (coe (1 :: Integer)) ->
                                    let v15 = subInt (coe v2) (coe (1 :: Integer)) in
                                    case coe v3 of
                                      _ | coe geqInt (coe v3) (coe (1 :: Integer)) ->
                                          let v16 = subInt (coe v3) (coe (1 :: Integer)) in
                                          coe
                                            d3828 (coe v10) (coe v11) (coe v15) (coe v16) (coe v9)
                                            (coe v14)
                                      _ -> coe v6
                                _ -> coe v6
                         MAlonzo.Code.Data.Nat.Base.C10
                           -> coe
                                du1442 (coe d3794 (coe v0) (coe v2))
                                (coe MAlonzo.Code.Data.Nat.Base.C18 v9)
                         _ -> MAlonzo.RTE.mazUnreachableError
                   _ -> coe v6
             _ -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name3846 = "Data.Nat.Properties.∸-monoˡ-≤"
d3846 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3846 v0 v1 v2 v3
  = coe
      d3828 (coe v0) (coe v1) (coe v2) (coe v2) (coe v3)
      (coe d1434 (coe v2))
name3858 = "Data.Nat.Properties.∸-monoʳ-≤"
d3858 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3858 v0 v1 v2 v3
  = coe
      d3828 (coe v2) (coe v2) (coe v1) (coe v0) (coe d1434 (coe v2))
      (coe v3)
name3868 = "Data.Nat.Properties.∸-monoʳ-<"
d3868 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3868 v0 v1 v2 v3 v4
  = let v5 = subInt (coe v1) (coe (1 :: Integer)) in
    case coe v2 of
      0 -> coe
             seq (coe v3)
             (coe
                seq (coe v4)
                (coe
                   MAlonzo.Code.Data.Nat.Base.C18
                   (d3794 (coe subInt (coe v0) (coe (1 :: Integer))) (coe v5))))
      _ -> let v6 = subInt (coe v2) (coe (1 :: Integer)) in
           case coe v3 of
             MAlonzo.Code.Data.Nat.Base.C18 v9
               -> case coe v4 of
                    MAlonzo.Code.Data.Nat.Base.C18 v12
                      -> let v13 = subInt (coe v0) (coe (1 :: Integer)) in
                         coe d3868 (coe v13) (coe v5) (coe v6) (coe v9) (coe v12)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
name3890 = "Data.Nat.Properties.∸-cancelʳ-≤"
d3890 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3890 v0 v1 v2 v3 v4 = du3890 v1 v3
du3890 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du3890 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C10
        -> coe MAlonzo.Code.Data.Nat.Base.C10
      MAlonzo.Code.Data.Nat.Base.C18 v4
        -> case coe v0 of
             0 -> coe MAlonzo.Code.Data.Empty.d10 () erased erased
             _ -> let v5 = subInt (coe v0) (coe (1 :: Integer)) in
                  coe MAlonzo.Code.Data.Nat.Base.C18 (coe du3890 (coe v5) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
name3910 = "Data.Nat.Properties.∸-cancelʳ-<"
d3910 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3910 v0 v1 v2 v3 = du3910 v0 v1
du3910 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
du3910 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Empty.d10 () erased erased
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe du1728
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe MAlonzo.Code.Data.Nat.Base.C18 (coe du3910 (coe v2) (coe v3))
name3936 = "Data.Nat.Properties.∸-cancelˡ-≡"
d3936 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d3936 = erased
name3958 = "Data.Nat.Properties.∸-cancelʳ-≡"
d3958 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d3958 = erased
name3972 = "Data.Nat.Properties.m∸n≡0⇒m≤n"
d3972 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Nat.Base.T6
d3972 v0 v1 v2 = du3972 v0
du3972 :: Integer -> MAlonzo.Code.Data.Nat.Base.T6
du3972 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C10
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe MAlonzo.Code.Data.Nat.Base.C18 (coe du3972 (coe v1))
name3984 = "Data.Nat.Properties.m≤n⇒m∸n≡0"
d3984 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d3984 = erased
name3994 = "Data.Nat.Properties.m<n⇒0<n∸m"
d3994 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3994 v0 v1 v2 = du3994 v0 v2
du3994 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du3994 v0 v1
  = case coe v0 of
      0 -> coe du1728
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             MAlonzo.Code.Data.Nat.Base.C18 v5 -> coe du3994 (coe v2) (coe v5)
             _ -> MAlonzo.RTE.mazUnreachableError
name4008 = "Data.Nat.Properties.m∸n≢0⇒n<m"
d4008 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Nat.Base.T6
d4008 v0 v1 v2 = du4008 v0 v1
du4008 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
du4008 v0 v1
  = let v2 = d1696 (coe v1) (coe v0) in
    case coe v2 of
      MAlonzo.Code.Relation.Nullary.C46 v3 v4
        -> if coe v3
             then case coe v4 of
                    MAlonzo.Code.Relation.Nullary.C22 v5 -> coe v5
                    _ -> MAlonzo.RTE.mazUnreachableError
             else coe
                    seq (coe v4) (coe MAlonzo.Code.Data.Empty.d10 () erased erased)
      _ -> MAlonzo.RTE.mazUnreachableError
name4040 = "Data.Nat.Properties.m>n⇒m∸n≢0"
d4040 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d4040 = erased
name4052 = "Data.Nat.Properties.+-∸-comm"
d4052 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4052 = erased
name4070 = "Data.Nat.Properties.∸-+-assoc"
d4070 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4070 = erased
name4094 = "Data.Nat.Properties.+-∸-assoc"
d4094 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4094 = erased
name4114 = "Data.Nat.Properties.m≤n+m∸n"
d4114 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d4114 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C10
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe d1434 (coe v0)
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe MAlonzo.Code.Data.Nat.Base.C18 (d4114 (coe v2) (coe v3))
name4128 = "Data.Nat.Properties.m+n∸n≡m"
d4128 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4128 = erased
name4140 = "Data.Nat.Properties.m+n∸m≡n"
d4140 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4140 = erased
name4152 = "Data.Nat.Properties.m+[n∸m]≡n"
d4152 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4152 = erased
name4166 = "Data.Nat.Properties.m∸n+n≡m"
d4166 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4166 = erased
name4178 = "Data.Nat.Properties.m∸[m∸n]≡n"
d4178 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4178 = erased
name4194 = "Data.Nat.Properties.[m+n]∸[m+o]≡n∸o"
d4194 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4194 = erased
name4206 = "Data.Nat.Properties.*-distribʳ-∸"
d4206 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4206 = erased
name4226 = "Data.Nat.Properties.*-distribˡ-∸"
d4226 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4226 = erased
name4228 = "Data.Nat.Properties.*-distrib-∸"
d4228 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d4228 = coe MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased
name4234 = "Data.Nat.Properties.even≢odd"
d4234 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d4234 = erased
name4250 = "Data.Nat.Properties.m⊓n+n∸m≡n"
d4250 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4250 = erased
name4264 = "Data.Nat.Properties.[m∸n]⊓[n∸m]≡0"
d4264 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4264 = erased
name4280 = "Data.Nat.Properties.∸-distribˡ-⊓-⊔"
d4280 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4280 = erased
name4306 = "Data.Nat.Properties.∸-distribʳ-⊓"
d4306 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4306 = erased
name4332 = "Data.Nat.Properties.∸-distribˡ-⊔-⊓"
d4332 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4332 = erased
name4356 = "Data.Nat.Properties.∸-distribʳ-⊔"
d4356 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4356 = erased
name4380 = "Data.Nat.Properties.m≡n⇒∣m-n∣≡0"
d4380 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4380 = erased
name4388 = "Data.Nat.Properties.∣m-n∣≡0⇒m≡n"
d4388 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4388 = erased
name4402 = "Data.Nat.Properties.m≤n⇒∣n-m∣≡n∸m"
d4402 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4402 = erased
name4412 = "Data.Nat.Properties.∣m-n∣≡m∸n⇒n≤m"
d4412 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Nat.Base.T6
d4412 v0 v1 v2 = du4412 v0 v1
du4412 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
du4412 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C10
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe MAlonzo.Code.Data.Nat.Base.C10
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe MAlonzo.Code.Data.Nat.Base.C18 (coe du4412 (coe v2) (coe v3))
name4428 = "Data.Nat.Properties.∣n-n∣≡0"
d4428 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4428 = erased
name4436 = "Data.Nat.Properties.∣m-m+n∣≡n"
d4436 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4436 = erased
name4450 = "Data.Nat.Properties.∣m+n-m+o∣≡∣n-o|"
d4450 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4450 = erased
name4466 = "Data.Nat.Properties.m∸n≤∣m-n∣"
d4466 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d4466 v0 v1
  = let v2 = d1448 (coe v0) (coe v1) in
    case coe v2 of
      MAlonzo.Code.Data.Sum.Base.C38 v3
        -> coe MAlonzo.Code.Data.Nat.Base.C10
      MAlonzo.Code.Data.Sum.Base.C42 v3
        -> coe d1434 (coe MAlonzo.Code.Agda.Builtin.Nat.d22 v0 v1)
      _ -> MAlonzo.RTE.mazUnreachableError
name4496 = "Data.Nat.Properties.∣m-n∣≤m⊔n"
d4496 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d4496 v0 v1
  = case coe v0 of
      0 -> coe
             d1434
             (coe MAlonzo.Code.Data.Nat.Base.d110 (coe (0 :: Integer)) (coe v1))
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe
                    d1434
                    (coe MAlonzo.Code.Data.Nat.Base.d110 (coe v0) (coe (0 :: Integer)))
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe d4496 (coe v2) (coe v3)
name4506 = "Data.Nat.Properties.∣-∣-identityˡ"
d4506 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4506 = erased
name4510 = "Data.Nat.Properties.∣-∣-identityʳ"
d4510 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4510 = erased
name4514 = "Data.Nat.Properties.∣-∣-identity"
d4514 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d4514 = coe MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased
name4516 = "Data.Nat.Properties.∣-∣-comm"
d4516 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4516 = erased
name4530 = "Data.Nat.Properties.∣m-n∣≡[m∸n]∨[n∸m]"
d4530 :: Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T30
d4530 v0 v1
  = let v2 = d1448 (coe v0) (coe v1) in
    case coe v2 of
      MAlonzo.Code.Data.Sum.Base.C38 v3
        -> coe
             MAlonzo.Code.Data.Sum.Base.C42
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du190
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.C86
                   (coe
                      MAlonzo.Code.Relation.Binary.Structures.d34
                      (MAlonzo.Code.Relation.Binary.Structures.d80 (coe d1484))
                      (coe MAlonzo.Code.Agda.Builtin.Nat.d22 v1 v0))))
      MAlonzo.Code.Data.Sum.Base.C42 v3
        -> coe MAlonzo.Code.Data.Sum.Base.C38 erased
      _ -> MAlonzo.RTE.mazUnreachableError
name4558 = "Data.Nat.Properties.*-distribˡ-∣-∣-aux"
d4558 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4558 = erased
name4570 = "Data.Nat.Properties.*-distribˡ-∣-∣"
d4570 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4570 = erased
name4600 = "Data.Nat.Properties.*-distribʳ-∣-∣"
d4600 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4600 = erased
name4602 = "Data.Nat.Properties.*-distrib-∣-∣"
d4602 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d4602 = coe MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased
name4608 = "Data.Nat.Properties.m≤n+∣n-m∣"
d4608 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d4608 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C10
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe d1434 (coe v0)
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe MAlonzo.Code.Data.Nat.Base.C18 (d4608 (coe v2) (coe v3))
name4622 = "Data.Nat.Properties.m≤n+∣m-n∣"
d4622 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d4622 v0 v1 = coe d4608 (coe v0) (coe v1)
name4636 = "Data.Nat.Properties.m≤∣m-n∣+n"
d4636 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d4636 v0 v1 = coe d4622 (coe v0) (coe v1)
name4644 = "Data.Nat.Properties.⌊n/2⌋-mono"
d4644 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d4644 v0 v1 v2 = du4644 v2
du4644 ::
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du4644 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C10
        -> coe MAlonzo.Code.Data.Nat.Base.C10
      MAlonzo.Code.Data.Nat.Base.C18 v3
        -> case coe v3 of
             MAlonzo.Code.Data.Nat.Base.C10
               -> coe MAlonzo.Code.Data.Nat.Base.C10
             MAlonzo.Code.Data.Nat.Base.C18 v6
               -> coe MAlonzo.Code.Data.Nat.Base.C18 (coe du4644 (coe v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name4648 = "Data.Nat.Properties.⌈n/2⌉-mono"
d4648 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d4648 v0 v1 v2 = du4648 v2
du4648 ::
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du4648 v0 = coe du4644 (coe MAlonzo.Code.Data.Nat.Base.C18 v0)
name4654 = "Data.Nat.Properties.⌊n/2⌋≤⌈n/2⌉"
d4654 :: Integer -> MAlonzo.Code.Data.Nat.Base.T6
d4654 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C10
      1 -> coe MAlonzo.Code.Data.Nat.Base.C10
      _ -> let v1 = subInt (coe v0) (coe (2 :: Integer)) in
           coe MAlonzo.Code.Data.Nat.Base.C18 (d4654 (coe v1))
name4660 = "Data.Nat.Properties.⌊n/2⌋+⌈n/2⌉≡n"
d4660 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4660 = erased
name4666 = "Data.Nat.Properties.⌊n/2⌋≤n"
d4666 :: Integer -> MAlonzo.Code.Data.Nat.Base.T6
d4666 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C10
      1 -> coe MAlonzo.Code.Data.Nat.Base.C10
      _ -> let v1 = subInt (coe v0) (coe (2 :: Integer)) in
           coe MAlonzo.Code.Data.Nat.Base.C18 (d4666 (coe v1))
name4672 = "Data.Nat.Properties.⌊n/2⌋<n"
d4672 :: Integer -> MAlonzo.Code.Data.Nat.Base.T6
d4672 v0
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Data.Nat.Base.C18 (coe MAlonzo.Code.Data.Nat.Base.C10)
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             MAlonzo.Code.Data.Nat.Base.C18
             (coe MAlonzo.Code.Data.Nat.Base.C18 (d4666 (coe v1)))
name4678 = "Data.Nat.Properties.⌈n/2⌉≤n"
d4678 :: Integer -> MAlonzo.Code.Data.Nat.Base.T6
d4678 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C10
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe MAlonzo.Code.Data.Nat.Base.C18 (d4666 (coe v1))
name4684 = "Data.Nat.Properties.⌈n/2⌉<n"
d4684 :: Integer -> MAlonzo.Code.Data.Nat.Base.T6
d4684 v0 = coe MAlonzo.Code.Data.Nat.Base.C18 (d4672 (coe v0))
name4688 = "Data.Nat.Properties.≤′-trans"
d4688 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T122 ->
  MAlonzo.Code.Data.Nat.Base.T122 -> MAlonzo.Code.Data.Nat.Base.T122
d4688 v0 v1 v2 v3 v4 = du4688 v3 v4
du4688 ::
  MAlonzo.Code.Data.Nat.Base.T122 ->
  MAlonzo.Code.Data.Nat.Base.T122 -> MAlonzo.Code.Data.Nat.Base.T122
du4688 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C126 -> coe v0
      MAlonzo.Code.Data.Nat.Base.C132 v3
        -> coe
             MAlonzo.Code.Data.Nat.Base.C132 (coe du4688 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
name4698 = "Data.Nat.Properties.z≤′n"
d4698 :: Integer -> MAlonzo.Code.Data.Nat.Base.T122
d4698 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C126
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe MAlonzo.Code.Data.Nat.Base.C132 (d4698 (coe v1))
name4706 = "Data.Nat.Properties.s≤′s"
d4706 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T122 -> MAlonzo.Code.Data.Nat.Base.T122
d4706 v0 v1 v2 = du4706 v2
du4706 ::
  MAlonzo.Code.Data.Nat.Base.T122 -> MAlonzo.Code.Data.Nat.Base.T122
du4706 v0 = coe v0
name4710 = "Data.Nat.Properties.≤′⇒≤"
d4710 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T122 -> MAlonzo.Code.Data.Nat.Base.T6
d4710 v0 v1 v2 = du4710 v0 v2
du4710 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T122 -> MAlonzo.Code.Data.Nat.Base.T6
du4710 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C126 -> coe d1434 (coe v0)
      MAlonzo.Code.Data.Nat.Base.C132 v3 -> coe du4710 (coe v0) (coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
name4714 = "Data.Nat.Properties.≤⇒≤′"
d4714 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T122
d4714 v0 v1 v2 = du4714 v1 v2
du4714 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T122
du4714 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C10 -> coe d4698 (coe v0)
      MAlonzo.Code.Data.Nat.Base.C18 v4
        -> let v5 = subInt (coe v0) (coe (1 :: Integer)) in
           coe du4714 (coe v5) (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
name4726 = "Data.Nat.Properties.≤′-step-injective"
d4726 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T122 ->
  MAlonzo.Code.Data.Nat.Base.T122 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4726 = erased
name4728 = "Data.Nat.Properties._≤′?_"
d4728 :: Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T32
d4728 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du168
      (coe du4714 (coe v1)) (coe d1476 (coe v0) (coe v1))
name4734 = "Data.Nat.Properties._<′?_"
d4734 :: Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T32
d4734 v0 v1
  = coe d4728 (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1)
name4740 = "Data.Nat.Properties._≥′?_"
d4740 :: Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T32
d4740 v0 v1 = coe d4728 (coe v1) (coe v0)
name4742 = "Data.Nat.Properties._>′?_"
d4742 :: Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T32
d4742 v0 v1 = coe d4734 (coe v1) (coe v0)
name4748 = "Data.Nat.Properties.m≤′m+n"
d4748 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T122
d4748 v0 v1
  = coe du4714 (coe addInt (coe v0) (coe v1)) (coe du2138 (coe v0))
name4758 = "Data.Nat.Properties.n≤′m+n"
d4758 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T122
d4758 v0 v1 = du4758 v0
du4758 :: Integer -> MAlonzo.Code.Data.Nat.Base.T122
du4758 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C126
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe MAlonzo.Code.Data.Nat.Base.C132 (coe du4758 (coe v1))
name4768 = "Data.Nat.Properties.⌈n/2⌉≤′n"
d4768 :: Integer -> MAlonzo.Code.Data.Nat.Base.T122
d4768 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C126
      1 -> coe MAlonzo.Code.Data.Nat.Base.C126
      _ -> let v1 = subInt (coe v0) (coe (2 :: Integer)) in
           coe MAlonzo.Code.Data.Nat.Base.C132 (d4768 (coe v1))
name4774 = "Data.Nat.Properties.⌊n/2⌋≤′n"
d4774 :: Integer -> MAlonzo.Code.Data.Nat.Base.T122
d4774 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C126
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe MAlonzo.Code.Data.Nat.Base.C132 (d4768 (coe v1))
name4782 = "Data.Nat.Properties.m<ᵇn⇒1+m+[n-1+m]≡n"
d4782 ::
  Integer ->
  Integer -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4782 = erased
name4794 = "Data.Nat.Properties.m<ᵇ1+m+n"
d4794 :: Integer -> Integer -> AgdaAny
d4794 v0 v1 = du4794 v0
du4794 :: Integer -> AgdaAny
du4794 v0
  = coe
      du1418 (coe du2138 (coe addInt (coe (1 :: Integer)) (coe v0)))
name4802 = "Data.Nat.Properties.<ᵇ⇒<″"
d4802 ::
  Integer -> Integer -> AgdaAny -> MAlonzo.Code.Data.Nat.Base.T156
d4802 v0 v1 v2 = du4802 v0 v1
du4802 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T156
du4802 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.Base.C170
      (coe
         MAlonzo.Code.Agda.Builtin.Nat.d22 v1
         (addInt (coe (1 :: Integer)) (coe v0)))
name4814 = "Data.Nat.Properties.<″⇒<ᵇ"
d4814 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T156 -> AgdaAny
d4814 v0 v1 v2 = du4814 v0 v2
du4814 :: Integer -> MAlonzo.Code.Data.Nat.Base.T156 -> AgdaAny
du4814 v0 v1
  = coe
      seq (coe v1)
      (coe
         du1418 (coe du2138 (coe addInt (coe (1 :: Integer)) (coe v0))))
name4818 = "Data.Nat.Properties.≤″⇒≤"
d4818 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T156 -> MAlonzo.Code.Data.Nat.Base.T6
d4818 v0 v1 v2 = du4818 v0 v2
du4818 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T156 -> MAlonzo.Code.Data.Nat.Base.T6
du4818 v0 v1
  = case coe v0 of
      0 -> coe seq (coe v1) (coe MAlonzo.Code.Data.Nat.Base.C10)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             MAlonzo.Code.Data.Nat.Base.C170 v3
               -> coe
                    MAlonzo.Code.Data.Nat.Base.C18
                    (coe du4818 (coe v2) (coe MAlonzo.Code.Data.Nat.Base.C170 v3))
             _ -> MAlonzo.RTE.mazUnreachableError
name4822 = "Data.Nat.Properties.≤⇒≤″"
d4822 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T156
d4822 v0 v1 v2 = du4822 v0 v1
du4822 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T156
du4822 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.Base.C170
      (coe MAlonzo.Code.Agda.Builtin.Nat.d22 v1 v0)
name4824 = "Data.Nat.Properties._<″?_"
d4824 :: Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T32
d4824 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du168
      (\ v2 -> coe du4802 (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Data.Bool.Properties.d2046
         (coe ltInt (coe v0) (coe v1)))
name4830 = "Data.Nat.Properties._≤″?_"
d4830 :: Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T32
d4830 v0 v1
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Relation.Nullary.C46
             (coe MAlonzo.Code.Agda.Builtin.Bool.C10)
             (coe
                MAlonzo.Code.Relation.Nullary.C22
                (coe MAlonzo.Code.Data.Nat.Base.C170 v1))
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe d4824 (coe v2) (coe v1)
name4838 = "Data.Nat.Properties._≥″?_"
d4838 :: Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T32
d4838 v0 v1 = coe d4830 (coe v1) (coe v0)
name4840 = "Data.Nat.Properties._>″?_"
d4840 :: Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T32
d4840 v0 v1 = coe d4824 (coe v1) (coe v0)
name4842 = "Data.Nat.Properties.≤″-irrelevant"
d4842 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T156 ->
  MAlonzo.Code.Data.Nat.Base.T156 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4842 = erased
name4860 = "Data.Nat.Properties.<″-irrelevant"
d4860 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T156 ->
  MAlonzo.Code.Data.Nat.Base.T156 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4860 = erased
name4862 = "Data.Nat.Properties.>″-irrelevant"
d4862 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T156 ->
  MAlonzo.Code.Data.Nat.Base.T156 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4862 = erased
name4864 = "Data.Nat.Properties.≥″-irrelevant"
d4864 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T156 ->
  MAlonzo.Code.Data.Nat.Base.T156 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4864 = erased
name4870 = "Data.Nat.Properties.≤‴⇒≤″"
d4870 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T190 -> MAlonzo.Code.Data.Nat.Base.T156
d4870 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.Nat.Base.C194
        -> coe MAlonzo.Code.Data.Nat.Base.C170 (0 :: Integer)
      MAlonzo.Code.Data.Nat.Base.C200 v5
        -> coe
             MAlonzo.Code.Data.Nat.Base.C170
             (addInt
                (coe (1 :: Integer))
                (coe
                   MAlonzo.Code.Data.Nat.Base.d166
                   (coe d4882 (coe v0) (coe v1) (coe v5))))
      _ -> MAlonzo.RTE.mazUnreachableError
name4882 = "Data.Nat.Properties._.ind"
d4882 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T190 -> MAlonzo.Code.Data.Nat.Base.T156
d4882 v0 v1 v2
  = coe
      d4870 (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1) (coe v2)
name4890 = "Data.Nat.Properties.m≤‴m+k"
d4890 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Nat.Base.T190
d4890 v0 v1 v2 v3 = du4890 v2
du4890 :: Integer -> MAlonzo.Code.Data.Nat.Base.T190
du4890 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C194
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe MAlonzo.Code.Data.Nat.Base.C200 (coe du4890 (coe v1))
name4906 = "Data.Nat.Properties.≤″⇒≤‴"
d4906 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T156 -> MAlonzo.Code.Data.Nat.Base.T190
d4906 v0 v1 v2 = du4906 v2
du4906 ::
  MAlonzo.Code.Data.Nat.Base.T156 -> MAlonzo.Code.Data.Nat.Base.T190
du4906 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C170 v1 -> coe du4890 (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
name4916 = "Data.Nat.Properties.eq?"
d4916 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Function.Injection.T88 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
d4916 v0 v1 v2 = du4916 v2
du4916 ::
  MAlonzo.Code.Function.Injection.T88 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
du4916 v0
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.du68 (coe v0) (coe d1364)
name4920 = "Data.Nat.Properties._*-mono_"
d4920 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d4920 v0 v1 v2 v3 v4 v5 = coe du2578 v1 v3 v4 v5
name4922 = "Data.Nat.Properties._+-mono_"
d4922 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d4922 v0 v1 v2 v3 v4 v5 = coe du2220 v3 v4 v5
name4924 = "Data.Nat.Properties.+-right-identity"
d4924 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4924 = erased
name4926 = "Data.Nat.Properties.*-right-zero"
d4926 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4926 = erased
name4928 = "Data.Nat.Properties.distribʳ-*-+"
d4928 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4928 = erased
name4930 = "Data.Nat.Properties.*-distrib-∸ʳ"
d4930 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4930 = erased
name4932 = "Data.Nat.Properties.cancel-+-left"
d4932 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4932 = erased
name4934 = "Data.Nat.Properties.cancel-+-left-≤"
d4934 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d4934 v0 v1 v2 v3 = coe du2064 v0 v3
name4936 = "Data.Nat.Properties.cancel-*-right"
d4936 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4936 = erased
name4938 = "Data.Nat.Properties.cancel-*-right-≤"
d4938 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d4938 v0 v1 v2 v3 = coe du2546 v0
name4940 = "Data.Nat.Properties.strictTotalOrder"
d4940 :: MAlonzo.Code.Relation.Binary.Bundles.T780
d4940 = coe d1718
name4942 = "Data.Nat.Properties.isCommutativeSemiring"
d4942 :: MAlonzo.Code.Algebra.Structures.T1280
d4942 = coe d2446
name4944 = "Data.Nat.Properties.commutativeSemiring"
d4944 :: MAlonzo.Code.Algebra.Bundles.T1818
d4944 = coe d2464
name4946 = "Data.Nat.Properties.isDistributiveLattice"
d4946 :: MAlonzo.Code.Algebra.Structures.T760
d4946 = coe d3422
name4948 = "Data.Nat.Properties.distributiveLattice"
d4948 :: MAlonzo.Code.Algebra.Bundles.T1058
d4948 = coe d3436
name4950 = "Data.Nat.Properties.⊔-⊓-0-isSemiringWithoutOne"
d4950 :: MAlonzo.Code.Algebra.Structures.T898
d4950 = coe d3416
name4952
  = "Data.Nat.Properties.⊔-⊓-0-isCommutativeSemiringWithoutOne"
d4952 :: MAlonzo.Code.Algebra.Structures.T990
d4952 = coe d3418
name4954
  = "Data.Nat.Properties.⊔-⊓-0-commutativeSemiringWithoutOne"
d4954 :: MAlonzo.Code.Algebra.Bundles.T1370
d4954 = coe d3432
name4956 = "Data.Nat.Properties.¬i+1+j≤i"
d4956 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d4956 = erased
name4958 = "Data.Nat.Properties.≤-steps"
d4958 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d4958 v0 v1 v2 v3 = du4958 v3
du4958 ::
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du4958 v0 = coe v0
name4966 = "Data.Nat.Properties.i∸k∸j+j∸k≡i+j∸k"
d4966 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4966 = erased
name5002 = "Data.Nat.Properties.im≡jm+n⇒[i∸j]m≡n"
d5002 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d5002 = erased
name5018 = "Data.Nat.Properties.≤+≢⇒<"
d5018 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Nat.Base.T6
d5018 v0 v1 v2 v3 = coe du1594 v1 v2
name5020 = "Data.Nat.Properties.≤-irrelevance"
d5020 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d5020 = erased
name5022 = "Data.Nat.Properties.<-irrelevance"
d5022 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d5022 = erased
name5024 = "Data.Nat.Properties.i+1+j≢i"
d5024 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d5024 = erased
name5026 = "Data.Nat.Properties.i+j≡0⇒i≡0"
d5026 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d5026 = erased
name5028 = "Data.Nat.Properties.i+j≡0⇒j≡0"
d5028 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d5028 = erased
name5030 = "Data.Nat.Properties.i+1+j≰i"
d5030 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d5030 = erased
name5032 = "Data.Nat.Properties.i*j≡0⇒i≡0∨j≡0"
d5032 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Sum.Base.T30
d5032 v0 v1 v2 = coe du2504 v0
name5034 = "Data.Nat.Properties.i*j≡1⇒i≡1"
d5034 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d5034 = erased
name5036 = "Data.Nat.Properties.i*j≡1⇒j≡1"
d5036 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d5036 = erased
name5038 = "Data.Nat.Properties.i^j≡0⇒i≡0"
d5038 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d5038 = erased
name5040 = "Data.Nat.Properties.i^j≡1⇒j≡0∨i≡1"
d5040 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Sum.Base.T30
d5040 v0 v1 v2 = coe du2778 v1
name5042 = "Data.Nat.Properties.[i+j]∸[i+k]≡j∸k"
d5042 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d5042 = erased
name5044 = "Data.Nat.Properties.m≢0⇒suc[pred[m]]≡m"
d5044 ::
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d5044 = erased
name5046 = "Data.Nat.Properties.n≡m⇒∣n-m∣≡0"
d5046 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d5046 = erased
name5048 = "Data.Nat.Properties.∣n-m∣≡0⇒n≡m"
d5048 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d5048 = erased
name5050 = "Data.Nat.Properties.∣n-m∣≡n∸m⇒m≤n"
d5050 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Nat.Base.T6
d5050 v0 v1 v2 = coe du4412 v0 v1
name5052 = "Data.Nat.Properties.∣n-n+m∣≡m"
d5052 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d5052 = erased
name5054 = "Data.Nat.Properties.∣n+m-n+o∣≡∣m-o|"
d5054 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d5054 = erased
name5056 = "Data.Nat.Properties.n∸m≤∣n-m∣"
d5056 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d5056 = coe d4466
name5058 = "Data.Nat.Properties.∣n-m∣≤n⊔m"
d5058 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d5058 = coe d4496
name5064 = "Data.Nat.Properties.n≤m+n"
d5064 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d5064 v0 v1 = du5064 v1
du5064 :: Integer -> MAlonzo.Code.Data.Nat.Base.T6
du5064 v0 = coe du2138 (coe v0)
name5076 = "Data.Nat.Properties.n≤m+n∸m"
d5076 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d5076 v0 v1
  = case coe v1 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C10
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           case coe v0 of
             0 -> coe d1434 (coe v1)
             _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
                  coe MAlonzo.Code.Data.Nat.Base.C18 (d5076 (coe v3) (coe v2))
name5090 = "Data.Nat.Properties.∣n-m∣≡[n∸m]∨[m∸n]"
d5090 :: Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T30
d5090 v0 v1
  = let v2 = d1448 (coe v0) (coe v1) in
    case coe v2 of
      MAlonzo.Code.Data.Sum.Base.C38 v3
        -> coe MAlonzo.Code.Data.Sum.Base.C38 erased
      MAlonzo.Code.Data.Sum.Base.C42 v3
        -> coe
             MAlonzo.Code.Data.Sum.Base.C42
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du190
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.C86
                   (coe
                      MAlonzo.Code.Relation.Binary.Structures.d34
                      (MAlonzo.Code.Relation.Binary.Structures.d80 (coe d1484))
                      (coe MAlonzo.Code.Agda.Builtin.Nat.d22 v0 v1))))
      _ -> MAlonzo.RTE.mazUnreachableError
name5112 = "Data.Nat.Properties.+-*-suc"
d5112 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d5112 = erased
name5118 = "Data.Nat.Properties.n∸m≤n"
d5118 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d5118 v0 v1 = coe d3794 (coe v1) (coe v0)
name5130 = "Data.Nat.Properties.∀[m≤n⇒m≢o]⇒o<n"
d5130 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Data.Nat.Base.T6 ->
   MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Nat.Base.T6
d5130 v0 v1 v2 = coe du1766 v0 v1
name5138 = "Data.Nat.Properties.∀[m<n⇒m≢o]⇒o≤n"
d5138 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Data.Nat.Base.T6 ->
   MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Nat.Base.T6
d5138 v0 v1 v2 = coe du1794 v0 v1
name36769 = "Data.Nat.Properties..absurdlambda"
d36769 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d36769 = erased
name53765 = "Data.Nat.Properties..absurdlambda"
d53765 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d53765 = erased
