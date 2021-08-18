{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Algebra.Properties.BooleanAlgebra where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Consequences.Setoid
import qualified MAlonzo.Code.Algebra.Properties.DistributiveLattice
import qualified MAlonzo.Code.Algebra.Properties.Lattice
import qualified MAlonzo.Code.Algebra.Properties.Semilattice
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Function.Equality
import qualified MAlonzo.Code.Function.Equivalence
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Lattice
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial
import qualified MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid
import qualified MAlonzo.Code.Relation.Binary.Structures

name90 = "Algebra.Properties.BooleanAlgebra._.IsAbelianGroup"
d90 a0 a1 a2 a3 a4 a5 = ()
name94 = "Algebra.Properties.BooleanAlgebra._.IsBooleanAlgebra"
d94 a0 a1 a2 a3 a4 a5 a6 a7 = ()
name98 = "Algebra.Properties.BooleanAlgebra._.IsCommutativeMonoid"
d98 a0 a1 a2 a3 a4 = ()
name100 = "Algebra.Properties.BooleanAlgebra._.IsCommutativeRing"
d100 a0 a1 a2 a3 a4 a5 a6 a7 = ()
name104
  = "Algebra.Properties.BooleanAlgebra._.IsCommutativeSemiring"
d104 a0 a1 a2 a3 a4 a5 a6 = ()
name110 = "Algebra.Properties.BooleanAlgebra._.IsGroup"
d110 a0 a1 a2 a3 a4 a5 = ()
name116 = "Algebra.Properties.BooleanAlgebra._.IsMagma"
d116 a0 a1 a2 a3 = ()
name118 = "Algebra.Properties.BooleanAlgebra._.IsMonoid"
d118 a0 a1 a2 a3 a4 = ()
name122 = "Algebra.Properties.BooleanAlgebra._.IsRing"
d122 a0 a1 a2 a3 a4 a5 a6 a7 = ()
name126 = "Algebra.Properties.BooleanAlgebra._.IsSemigroup"
d126 a0 a1 a2 a3 = ()
name130 = "Algebra.Properties.BooleanAlgebra._.IsSemiring"
d130 a0 a1 a2 a3 a4 a5 a6 = ()
name1358 = "Algebra.Properties.BooleanAlgebra._._DistributesOver_"
d1358 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1358 = erased
name1360 = "Algebra.Properties.BooleanAlgebra._._DistributesOverʳ_"
d1360 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1360 = erased
name1362 = "Algebra.Properties.BooleanAlgebra._._DistributesOverˡ_"
d1362 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1362 = erased
name1368 = "Algebra.Properties.BooleanAlgebra._.Associative"
d1368 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1368 = erased
name1372 = "Algebra.Properties.BooleanAlgebra._.Commutative"
d1372 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1372 = erased
name1376 = "Algebra.Properties.BooleanAlgebra._.Congruent₂"
d1376 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1376 = erased
name1384 = "Algebra.Properties.BooleanAlgebra._.Identity"
d1384 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1384 = erased
name1388 = "Algebra.Properties.BooleanAlgebra._.Inverse"
d1388 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1388 = erased
name1390 = "Algebra.Properties.BooleanAlgebra._.Involutive"
d1390 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 -> (AgdaAny -> AgdaAny) -> ()
d1390 = erased
name1398 = "Algebra.Properties.BooleanAlgebra._.LeftIdentity"
d1398 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1398 = erased
name1400 = "Algebra.Properties.BooleanAlgebra._.LeftInverse"
d1400 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1400 = erased
name1402 = "Algebra.Properties.BooleanAlgebra._.LeftZero"
d1402 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1402 = erased
name1410 = "Algebra.Properties.BooleanAlgebra._.RightIdentity"
d1410 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1410 = erased
name1412 = "Algebra.Properties.BooleanAlgebra._.RightInverse"
d1412 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1412 = erased
name1414 = "Algebra.Properties.BooleanAlgebra._.RightZero"
d1414 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1414 = erased
name1418 = "Algebra.Properties.BooleanAlgebra._.Zero"
d1418 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1418 = erased
name1488
  = "Algebra.Properties.BooleanAlgebra._.isOrderTheoreticLattice"
d1488 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Relation.Binary.Lattice.T810
d1488 v0 v1 v2 = du1488 v2
du1488 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Relation.Binary.Lattice.T810
du1488 v0
  = let v1 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Lattice.du1614
      (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v1))
name1490
  = "Algebra.Properties.BooleanAlgebra._.orderTheoreticLattice"
d1490 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Relation.Binary.Lattice.T898
d1490 v0 v1 v2 = du1490 v2
du1490 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Relation.Binary.Lattice.T898
du1490 v0
  = let v1 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Lattice.du1616
      (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v1))
name1492 = "Algebra.Properties.BooleanAlgebra._.poset"
d1492 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204
d1492 v0 v1 v2 = du1492 v2
du1492 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204
du1492 v0
  = let v1 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Properties.Semilattice.du164
      (coe MAlonzo.Code.Algebra.Properties.Lattice.du1434 (coe v2))
name1494 = "Algebra.Properties.BooleanAlgebra._.∧-distrib-∨"
d1494 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d1494 v0 v1 v2 = du1494 v2
du1494 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du1494 v0
  = coe
      MAlonzo.Code.Algebra.Properties.DistributiveLattice.du250
      (coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0))
name1496 = "Algebra.Properties.BooleanAlgebra._.∧-distribʳ-∨"
d1496 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1496 v0 v1 v2 = du1496 v2
du1496 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1496 v0
  = coe
      MAlonzo.Code.Algebra.Properties.DistributiveLattice.du242
      (coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0))
name1498 = "Algebra.Properties.BooleanAlgebra._.∧-distribˡ-∨"
d1498 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1498 v0 v1 v2 = du1498 v2
du1498 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1498 v0
  = coe
      MAlonzo.Code.Algebra.Properties.DistributiveLattice.du234
      (coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0))
name1500 = "Algebra.Properties.BooleanAlgebra._.∧-idem"
d1500 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny
d1500 v0 v1 v2 = du1500 v2
du1500 :: MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny
du1500 v0
  = let v1 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Lattice.du1422
      (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v1))
name1502 = "Algebra.Properties.BooleanAlgebra._.∧-idempotent"
d1502 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny
d1502 v0 v1 v2 = du1502 v2
du1502 :: MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny
du1502 v0
  = let v1 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Lattice.du1610
      (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v1))
name1504 = "Algebra.Properties.BooleanAlgebra._.∧-isBand"
d1504 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Structures.T152
d1504 v0 v1 v2 = du1504 v2
du1504 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Structures.T152
du1504 v0
  = let v1 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Lattice.du1430
      (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v1))
name1506 = "Algebra.Properties.BooleanAlgebra._.∧-isMagma"
d1506 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Structures.T80
d1506 v0 v1 v2 = du1506 v2
du1506 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Structures.T80
du1506 v0
  = let v1 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Lattice.du1426
      (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v1))
name1508
  = "Algebra.Properties.BooleanAlgebra._.∧-isOrderTheoreticJoinSemilattice"
d1508 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Relation.Binary.Lattice.T68
d1508 v0 v1 v2 = du1508 v2
du1508 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Relation.Binary.Lattice.T68
du1508 v0
  = let v1 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Properties.Semilattice.du180
      (coe MAlonzo.Code.Algebra.Properties.Lattice.du1434 (coe v2))
name1510
  = "Algebra.Properties.BooleanAlgebra._.∧-isOrderTheoreticMeetSemilattice"
d1510 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Relation.Binary.Lattice.T438
d1510 v0 v1 v2 = du1510 v2
du1510 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Relation.Binary.Lattice.T438
du1510 v0
  = let v1 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Properties.Semilattice.du178
      (coe MAlonzo.Code.Algebra.Properties.Lattice.du1434 (coe v2))
name1512 = "Algebra.Properties.BooleanAlgebra._.∧-isSemigroup"
d1512 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Structures.T116
d1512 v0 v1 v2 = du1512 v2
du1512 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Structures.T116
du1512 v0
  = let v1 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Lattice.du1428
      (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v1))
name1514 = "Algebra.Properties.BooleanAlgebra._.∧-isSemilattice"
d1514 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Structures.T232
d1514 v0 v1 v2 = du1514 v2
du1514 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Structures.T232
du1514 v0
  = let v1 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Lattice.du1432
      (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v1))
name1516
  = "Algebra.Properties.BooleanAlgebra._.∧-orderTheoreticJoinSemilattice"
d1516 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Relation.Binary.Lattice.T170
d1516 v0 v1 v2 = du1516 v2
du1516 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Relation.Binary.Lattice.T170
du1516 v0
  = let v1 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Properties.Semilattice.du184
      (coe MAlonzo.Code.Algebra.Properties.Lattice.du1434 (coe v2))
name1518
  = "Algebra.Properties.BooleanAlgebra._.∧-orderTheoreticMeetSemilattice"
d1518 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Relation.Binary.Lattice.T540
d1518 v0 v1 v2 = du1518 v2
du1518 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Relation.Binary.Lattice.T540
du1518 v0
  = let v1 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Properties.Semilattice.du182
      (coe MAlonzo.Code.Algebra.Properties.Lattice.du1434 (coe v2))
name1520 = "Algebra.Properties.BooleanAlgebra._.∧-semilattice"
d1520 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Bundles.T266
d1520 v0 v1 v2 = du1520 v2
du1520 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Bundles.T266
du1520 v0
  = let v1 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Lattice.du1434
      (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v1))
name1522 = "Algebra.Properties.BooleanAlgebra._.∧-∨-distrib"
d1522 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d1522 v0 v1 v2 = du1522 v2
du1522 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du1522 v0
  = coe
      MAlonzo.Code.Algebra.Properties.DistributiveLattice.du296
      (coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0))
name1524
  = "Algebra.Properties.BooleanAlgebra._.∧-∨-distributiveLattice"
d1524 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Bundles.T1058
d1524 v0 v1 v2 = du1524 v2
du1524 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Bundles.T1058
du1524 v0
  = coe
      MAlonzo.Code.Algebra.Properties.DistributiveLattice.du254
      (coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0))
name1526 = "Algebra.Properties.BooleanAlgebra._.∧-∨-distribʳ"
d1526 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1526 v0 v1 v2 = du1526 v2
du1526 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1526 v0
  = coe
      MAlonzo.Code.Algebra.Properties.DistributiveLattice.du294
      (coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0))
name1528 = "Algebra.Properties.BooleanAlgebra._.∧-∨-distribˡ"
d1528 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1528 v0 v1 v2 = du1528 v2
du1528 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1528 v0
  = coe
      MAlonzo.Code.Algebra.Properties.DistributiveLattice.du292
      (coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0))
name1530
  = "Algebra.Properties.BooleanAlgebra._.∧-∨-isDistributiveLattice"
d1530 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Structures.T760
d1530 v0 v1 v2 = du1530 v2
du1530 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Structures.T760
du1530 v0
  = coe
      MAlonzo.Code.Algebra.Properties.DistributiveLattice.du252
      (coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0))
name1532 = "Algebra.Properties.BooleanAlgebra._.∧-∨-isLattice"
d1532 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Structures.T686
d1532 v0 v1 v2 = du1532 v2
du1532 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Structures.T686
du1532 v0
  = let v1 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Lattice.du1470
      (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v1))
name1534 = "Algebra.Properties.BooleanAlgebra._.∧-∨-lattice"
d1534 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Bundles.T986
d1534 v0 v1 v2 = du1534 v2
du1534 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Bundles.T986
du1534 v0
  = let v1 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Lattice.du1472
      (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v1))
name1536 = "Algebra.Properties.BooleanAlgebra._.∨-distrib-∧"
d1536 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d1536 v0 v1 v2 = du1536 v2
du1536 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du1536 v0
  = coe
      MAlonzo.Code.Algebra.Properties.DistributiveLattice.du232
      (coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0))
name1538 = "Algebra.Properties.BooleanAlgebra._.∨-distribˡ-∧"
d1538 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1538 v0 v1 v2 = du1538 v2
du1538 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1538 v0
  = coe
      MAlonzo.Code.Algebra.Properties.DistributiveLattice.du224
      (coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0))
name1540 = "Algebra.Properties.BooleanAlgebra._.∨-idem"
d1540 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny
d1540 v0 v1 v2 = du1540 v2
du1540 :: MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny
du1540 v0
  = let v1 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Lattice.du1446
      (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v1))
name1542 = "Algebra.Properties.BooleanAlgebra._.∨-idempotent"
d1542 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny
d1542 v0 v1 v2 = du1542 v2
du1542 :: MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny
du1542 v0
  = let v1 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Lattice.du1612
      (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v1))
name1544 = "Algebra.Properties.BooleanAlgebra._.∨-isBand"
d1544 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Structures.T152
d1544 v0 v1 v2 = du1544 v2
du1544 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Structures.T152
du1544 v0
  = let v1 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Lattice.du1454
      (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v1))
name1546 = "Algebra.Properties.BooleanAlgebra._.∨-isMagma"
d1546 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Structures.T80
d1546 v0 v1 v2 = du1546 v2
du1546 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Structures.T80
du1546 v0
  = let v1 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Lattice.du1450
      (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v1))
name1548
  = "Algebra.Properties.BooleanAlgebra._.∧-isOrderTheoreticJoinSemilattice"
d1548 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Relation.Binary.Lattice.T68
d1548 v0 v1 v2 = du1548 v2
du1548 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Relation.Binary.Lattice.T68
du1548 v0
  = let v1 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Properties.Semilattice.du180
      (coe MAlonzo.Code.Algebra.Properties.Lattice.du1458 (coe v2))
name1550
  = "Algebra.Properties.BooleanAlgebra._.∧-isOrderTheoreticMeetSemilattice"
d1550 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Relation.Binary.Lattice.T438
d1550 v0 v1 v2 = du1550 v2
du1550 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Relation.Binary.Lattice.T438
du1550 v0
  = let v1 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Properties.Semilattice.du178
      (coe MAlonzo.Code.Algebra.Properties.Lattice.du1458 (coe v2))
name1552 = "Algebra.Properties.BooleanAlgebra._.∨-isSemigroup"
d1552 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Structures.T116
d1552 v0 v1 v2 = du1552 v2
du1552 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Structures.T116
du1552 v0
  = let v1 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Lattice.du1452
      (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v1))
name1554 = "Algebra.Properties.BooleanAlgebra._.∨-isSemilattice"
d1554 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Structures.T232
d1554 v0 v1 v2 = du1554 v2
du1554 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Structures.T232
du1554 v0
  = let v1 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Lattice.du1456
      (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v1))
name1556
  = "Algebra.Properties.BooleanAlgebra._.∧-orderTheoreticJoinSemilattice"
d1556 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Relation.Binary.Lattice.T170
d1556 v0 v1 v2 = du1556 v2
du1556 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Relation.Binary.Lattice.T170
du1556 v0
  = let v1 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Properties.Semilattice.du184
      (coe MAlonzo.Code.Algebra.Properties.Lattice.du1458 (coe v2))
name1558
  = "Algebra.Properties.BooleanAlgebra._.∧-orderTheoreticMeetSemilattice"
d1558 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Relation.Binary.Lattice.T540
d1558 v0 v1 v2 = du1558 v2
du1558 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Relation.Binary.Lattice.T540
du1558 v0
  = let v1 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Properties.Semilattice.du182
      (coe MAlonzo.Code.Algebra.Properties.Lattice.du1458 (coe v2))
name1560 = "Algebra.Properties.BooleanAlgebra._.∨-semilattice"
d1560 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Bundles.T266
d1560 v0 v1 v2 = du1560 v2
du1560 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Bundles.T266
du1560 v0
  = let v1 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Lattice.du1458
      (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v1))
name1562 = "Algebra.Properties.BooleanAlgebra._.∨-∧-distrib"
d1562 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d1562 v0 v1 v2 = du1562 v2
du1562 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du1562 v0
  = coe
      MAlonzo.Code.Algebra.Properties.DistributiveLattice.du290
      (coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0))
name1564 = "Algebra.Properties.BooleanAlgebra._.∨-∧-distribˡ"
d1564 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1564 v0 v1 v2 = du1564 v2
du1564 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1564 v0
  = coe
      MAlonzo.Code.Algebra.Properties.DistributiveLattice.du288
      (coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0))
name1566
  = "Algebra.Properties.BooleanAlgebra._.∨-∧-isOrderTheoreticLattice"
d1566 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Relation.Binary.Lattice.T810
d1566 v0 v1 v2 = du1566 v2
du1566 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Relation.Binary.Lattice.T810
du1566 v0
  = let v1 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Lattice.du1484
      (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v1))
name1568
  = "Algebra.Properties.BooleanAlgebra._.∨-∧-orderTheoreticLattice"
d1568 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Relation.Binary.Lattice.T898
d1568 v0 v1 v2 = du1568 v2
du1568 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Relation.Binary.Lattice.T898
du1568 v0
  = let v1 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Lattice.du1540
      (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v1))
name1570 = "Algebra.Properties.BooleanAlgebra.∨-complementˡ"
d1570 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny
d1570 v0 v1 v2 = du1570 v2
du1570 :: MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny
du1570 v0
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du210
      (let v1 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
       coe
         MAlonzo.Code.Algebra.Bundles.du1052
         (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v1)))
      (coe MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))
      (coe MAlonzo.Code.Algebra.Bundles.d2440 (coe v0))
      (coe MAlonzo.Code.Algebra.Bundles.d2442 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d710
         (coe
            MAlonzo.Code.Algebra.Structures.d770
            (coe
               MAlonzo.Code.Algebra.Structures.d1686
               (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))))
      (coe
         MAlonzo.Code.Algebra.Structures.d1688
         (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))
name1572 = "Algebra.Properties.BooleanAlgebra.∨-complement"
d1572 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d1572 v0 v1 v2 = du1572 v2
du1572 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du1572 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe du1570 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d1688
         (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))
name1574 = "Algebra.Properties.BooleanAlgebra.∧-complementˡ"
d1574 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny
d1574 v0 v1 v2 = du1574 v2
du1574 :: MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny
du1574 v0
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du210
      (let v1 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
       coe
         MAlonzo.Code.Algebra.Bundles.du1052
         (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v1)))
      (coe MAlonzo.Code.Algebra.Bundles.d2438 (coe v0))
      (coe MAlonzo.Code.Algebra.Bundles.d2440 (coe v0))
      (coe MAlonzo.Code.Algebra.Bundles.d2444 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d716
         (coe
            MAlonzo.Code.Algebra.Structures.d770
            (coe
               MAlonzo.Code.Algebra.Structures.d1686
               (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))))
      (coe
         MAlonzo.Code.Algebra.Structures.d1690
         (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))
name1576 = "Algebra.Properties.BooleanAlgebra.∧-complement"
d1576 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d1576 v0 v1 v2 = du1576 v2
du1576 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du1576 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe du1574 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d1690
         (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))
name1578 = "Algebra.Properties.BooleanAlgebra.∧-∨-isBooleanAlgebra"
d1578 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Structures.T1666
d1578 v0 v1 v2 = du1578 v2
du1578 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Structures.T1666
du1578 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C31487
      (coe
         MAlonzo.Code.Algebra.Properties.DistributiveLattice.du252
         (coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Structures.d1690
         (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Structures.d1688
         (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Structures.d1692
         (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))
name1580 = "Algebra.Properties.BooleanAlgebra.∧-∨-booleanAlgebra"
d1580 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Bundles.T2410
d1580 v0 v1 v2 = du1580 v2
du1580 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Bundles.T2410
du1580 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C27217
      (MAlonzo.Code.Algebra.Bundles.d2438 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d2440 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d2442 (coe v0)) (coe du1578 (coe v0))
name1582 = "Algebra.Properties.BooleanAlgebra.∧-identityʳ"
d1582 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny
d1582 v0 v1 v2 v3 = du1582 v2 v3
du1582 :: MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny
du1582 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du74
            (let v2 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du1052
               (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v2))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
            (MAlonzo.Code.Algebra.Bundles.d2442 (coe v0)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)))
         v1
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du74
               (let v2 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du1052
                  (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v2))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)))
            v1 v1
            (let v2
                   = MAlonzo.Code.Relation.Binary.Structures.d34
                       (coe
                          MAlonzo.Code.Relation.Binary.Bundles.d60
                          (let v2 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                           coe
                             MAlonzo.Code.Algebra.Bundles.du1052
                             (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v2)))) in
             coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
               (coe v2 v1))
            (let v2 = MAlonzo.Code.Algebra.Bundles.d2446 (coe v0) in
             let v3 = MAlonzo.Code.Algebra.Structures.d1686 (coe v2) in
             let v4 = MAlonzo.Code.Algebra.Structures.d770 (coe v3) in
             coe
               MAlonzo.Code.Agda.Builtin.Sigma.d30
               (MAlonzo.Code.Algebra.Structures.d722 (coe v4)) v1
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)))
         (let v2 = MAlonzo.Code.Algebra.Bundles.d2446 (coe v0) in
          let v3 = MAlonzo.Code.Algebra.Structures.d1686 (coe v2) in
          coe
            MAlonzo.Code.Algebra.Structures.du740
            (coe MAlonzo.Code.Algebra.Structures.d770 (coe v3)) (coe v1)
            (coe MAlonzo.Code.Algebra.Bundles.d2442 (coe v0))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1))
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d36
               (MAlonzo.Code.Algebra.Structures.d708
                  (coe
                     MAlonzo.Code.Algebra.Structures.d770
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1686
                        (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1))
               (MAlonzo.Code.Algebra.Bundles.d2442 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Structures.d1688
                  (MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)) v1))))
name1586 = "Algebra.Properties.BooleanAlgebra.∧-identityˡ"
d1586 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny
d1586 v0 v1 v2 = du1586 v2
du1586 :: MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny
du1586 v0
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du174
      (let v1 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
       coe
         MAlonzo.Code.Algebra.Bundles.du1052
         (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v1)))
      (coe MAlonzo.Code.Algebra.Bundles.d2438 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d716
         (coe
            MAlonzo.Code.Algebra.Structures.d770
            (coe
               MAlonzo.Code.Algebra.Structures.d1686
               (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))))
      (coe MAlonzo.Code.Algebra.Bundles.d2442 (coe v0))
      (coe du1582 (coe v0))
name1588 = "Algebra.Properties.BooleanAlgebra.∧-identity"
d1588 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d1588 v0 v1 v2 = du1588 v2
du1588 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du1588 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe du1586 (coe v0))
      (coe du1582 (coe v0))
name1590 = "Algebra.Properties.BooleanAlgebra.∨-identityʳ"
d1590 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny
d1590 v0 v1 v2 v3 = du1590 v2 v3
du1590 :: MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny
du1590 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du74
            (let v2 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du1052
               (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v2))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
            (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)))
         v1
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du74
               (let v2 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du1052
                  (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v2))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)))
            v1 v1
            (let v2
                   = MAlonzo.Code.Relation.Binary.Structures.d34
                       (coe
                          MAlonzo.Code.Relation.Binary.Bundles.d60
                          (let v2 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                           coe
                             MAlonzo.Code.Algebra.Bundles.du1052
                             (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v2)))) in
             coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
               (coe v2 v1))
            (let v2 = MAlonzo.Code.Algebra.Bundles.d2446 (coe v0) in
             let v3 = MAlonzo.Code.Algebra.Structures.d1686 (coe v2) in
             let v4 = MAlonzo.Code.Algebra.Structures.d770 (coe v3) in
             coe
               MAlonzo.Code.Agda.Builtin.Sigma.d28
               (MAlonzo.Code.Algebra.Structures.d722 (coe v4)) v1
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)))
         (let v2
                = MAlonzo.Code.Algebra.Structures.d1686
                    (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)) in
          coe
            MAlonzo.Code.Algebra.Structures.du748
            (coe MAlonzo.Code.Algebra.Structures.d770 (coe v2)) (coe v1)
            (coe MAlonzo.Code.Algebra.Bundles.d2444 (coe v0))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1))
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d36
               (MAlonzo.Code.Algebra.Structures.d708
                  (coe
                     MAlonzo.Code.Algebra.Structures.d770
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1686
                        (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1))
               (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Structures.d1690
                  (MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)) v1))))
name1594 = "Algebra.Properties.BooleanAlgebra.∨-identityˡ"
d1594 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny
d1594 v0 v1 v2 = du1594 v2
du1594 :: MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny
du1594 v0
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du174
      (let v1 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
       coe
         MAlonzo.Code.Algebra.Bundles.du1052
         (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v1)))
      (coe MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d710
         (coe
            MAlonzo.Code.Algebra.Structures.d770
            (coe
               MAlonzo.Code.Algebra.Structures.d1686
               (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))))
      (coe MAlonzo.Code.Algebra.Bundles.d2444 (coe v0))
      (coe du1590 (coe v0))
name1596 = "Algebra.Properties.BooleanAlgebra.∨-identity"
d1596 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d1596 v0 v1 v2 = du1596 v2
du1596 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du1596 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe du1594 (coe v0))
      (coe du1590 (coe v0))
name1598 = "Algebra.Properties.BooleanAlgebra.∧-zeroʳ"
d1598 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny
d1598 v0 v1 v2 v3 = du1598 v2 v3
du1598 :: MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny
du1598 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du58
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du74
            (let v2 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du1052
               (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v2))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
            (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)))
         (coe MAlonzo.Code.Algebra.Bundles.d2444 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du58
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du74
               (let v2 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du1052
                  (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v2))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v1)
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1))
            (coe MAlonzo.Code.Algebra.Bundles.d2444 (coe v0))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.du74
                  (let v2 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                   coe
                     MAlonzo.Code.Algebra.Bundles.du1052
                     (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v2))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1))
               (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.du74
                     (let v2 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                      coe
                        MAlonzo.Code.Algebra.Bundles.du1052
                        (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v2))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1))
                  (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0))
                  (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0))
                  (let v2
                         = MAlonzo.Code.Relation.Binary.Structures.d34
                             (coe
                                MAlonzo.Code.Relation.Binary.Bundles.d60
                                (let v2 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                                 coe
                                   MAlonzo.Code.Algebra.Bundles.du1052
                                   (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v2)))) in
                   let v3 = MAlonzo.Code.Algebra.Bundles.d2444 (coe v0) in
                   coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                     (coe v2 v3))
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1690
                     (MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)) v1))
               (let v2 = MAlonzo.Code.Algebra.Bundles.d2446 (coe v0) in
                let v3 = MAlonzo.Code.Algebra.Structures.d1686 (coe v2) in
                coe
                  MAlonzo.Code.Algebra.Structures.du744
                  (coe MAlonzo.Code.Algebra.Structures.d770 (coe v3))
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v1) (coe v1)
                  (coe
                     MAlonzo.Code.Algebra.Properties.Lattice.du1610
                     (coe
                        MAlonzo.Code.Algebra.Bundles.du1130
                        (coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0)))
                     v1)))
            (coe
               MAlonzo.Code.Algebra.Structures.d718
               (MAlonzo.Code.Algebra.Structures.d770
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1686
                     (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
               v1 v1 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)))
         (let v2 = MAlonzo.Code.Algebra.Bundles.d2446 (coe v0) in
          let v3 = MAlonzo.Code.Algebra.Structures.d1686 (coe v2) in
          coe
            MAlonzo.Code.Algebra.Structures.du740
            (coe MAlonzo.Code.Algebra.Structures.d770 (coe v3)) (coe v1)
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1))
            (coe MAlonzo.Code.Algebra.Bundles.d2444 (coe v0))
            (coe
               MAlonzo.Code.Algebra.Structures.d1690
               (MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)) v1)))
name1602 = "Algebra.Properties.BooleanAlgebra.∧-zeroˡ"
d1602 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny
d1602 v0 v1 v2 = du1602 v2
du1602 :: MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny
du1602 v0
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du186
      (let v1 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
       coe
         MAlonzo.Code.Algebra.Bundles.du1052
         (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v1)))
      (coe MAlonzo.Code.Algebra.Bundles.d2438 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d716
         (coe
            MAlonzo.Code.Algebra.Structures.d770
            (coe
               MAlonzo.Code.Algebra.Structures.d1686
               (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))))
      (coe MAlonzo.Code.Algebra.Bundles.d2444 (coe v0))
      (coe du1598 (coe v0))
name1604 = "Algebra.Properties.BooleanAlgebra.∧-zero"
d1604 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d1604 v0 v1 v2 = du1604 v2
du1604 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du1604 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe du1602 (coe v0))
      (coe du1598 (coe v0))
name1608 = "Algebra.Properties.BooleanAlgebra.∨-zeroʳ"
d1608 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny
d1608 v0 v1 v2 v3 = du1608 v2 v3
du1608 :: MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny
du1608 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du58
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du74
            (let v2 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du1052
               (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v2))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
            (MAlonzo.Code.Algebra.Bundles.d2442 (coe v0)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)))
         (coe MAlonzo.Code.Algebra.Bundles.d2442 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du58
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du74
               (let v2 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du1052
                  (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v2))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v1)
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1))
            (coe MAlonzo.Code.Algebra.Bundles.d2442 (coe v0))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.du74
                  (let v2 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                   coe
                     MAlonzo.Code.Algebra.Bundles.du1052
                     (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v2))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1))
               (MAlonzo.Code.Algebra.Bundles.d2442 (coe v0))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.du74
                     (let v2 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                      coe
                        MAlonzo.Code.Algebra.Bundles.du1052
                        (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v2))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1))
                  (MAlonzo.Code.Algebra.Bundles.d2442 (coe v0))
                  (MAlonzo.Code.Algebra.Bundles.d2442 (coe v0))
                  (let v2
                         = MAlonzo.Code.Relation.Binary.Structures.d34
                             (coe
                                MAlonzo.Code.Relation.Binary.Bundles.d60
                                (let v2 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                                 coe
                                   MAlonzo.Code.Algebra.Bundles.du1052
                                   (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v2)))) in
                   let v3 = MAlonzo.Code.Algebra.Bundles.d2442 (coe v0) in
                   coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                     (coe v2 v3))
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1688
                     (MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)) v1))
               (let v2 = MAlonzo.Code.Algebra.Bundles.d2446 (coe v0) in
                let v3 = MAlonzo.Code.Algebra.Structures.d1686 (coe v2) in
                coe
                  MAlonzo.Code.Algebra.Structures.du752
                  (coe MAlonzo.Code.Algebra.Structures.d770 (coe v3))
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v1) (coe v1)
                  (coe
                     MAlonzo.Code.Algebra.Properties.Lattice.du1612
                     (coe
                        MAlonzo.Code.Algebra.Bundles.du1130
                        (coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0)))
                     v1)))
            (coe
               MAlonzo.Code.Algebra.Structures.d712
               (MAlonzo.Code.Algebra.Structures.d770
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1686
                     (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
               v1 v1 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)))
         (let v2 = MAlonzo.Code.Algebra.Bundles.d2446 (coe v0) in
          let v3 = MAlonzo.Code.Algebra.Structures.d1686 (coe v2) in
          coe
            MAlonzo.Code.Algebra.Structures.du748
            (coe MAlonzo.Code.Algebra.Structures.d770 (coe v3)) (coe v1)
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1))
            (coe MAlonzo.Code.Algebra.Bundles.d2442 (coe v0))
            (coe
               MAlonzo.Code.Algebra.Structures.d1688
               (MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)) v1)))
name1612 = "Algebra.Properties.BooleanAlgebra.∨-zeroˡ"
d1612 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny
d1612 v0 v1 v2 = du1612 v2
du1612 :: MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny
du1612 v0
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du186
      (let v1 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
       coe
         MAlonzo.Code.Algebra.Bundles.du1052
         (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v1)))
      (coe MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d710
         (coe
            MAlonzo.Code.Algebra.Structures.d770
            (coe
               MAlonzo.Code.Algebra.Structures.d1686
               (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))))
      (coe MAlonzo.Code.Algebra.Bundles.d2442 (coe v0))
      (coe du1608 (coe v0))
name1614 = "Algebra.Properties.BooleanAlgebra.∨-zero"
d1614 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d1614 v0 v1 v2 = du1614 v2
du1614 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du1614 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe du1612 (coe v0))
      (coe du1608 (coe v0))
name1616 = "Algebra.Properties.BooleanAlgebra.∨-⊥-isMonoid"
d1616 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Structures.T314
d1616 v0 v1 v2 = du1616 v2
du1616 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Structures.T314
du1616 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C4201
      (coe
         MAlonzo.Code.Algebra.Properties.Lattice.du1452
         (coe
            MAlonzo.Code.Algebra.Bundles.du1130
            (coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0))))
      (coe du1596 (coe v0))
name1618 = "Algebra.Properties.BooleanAlgebra.∧-⊤-isMonoid"
d1618 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Structures.T314
d1618 v0 v1 v2 = du1618 v2
du1618 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Structures.T314
du1618 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C4201
      (coe
         MAlonzo.Code.Algebra.Properties.Lattice.du1428
         (coe
            MAlonzo.Code.Algebra.Bundles.du1130
            (coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0))))
      (coe du1588 (coe v0))
name1620
  = "Algebra.Properties.BooleanAlgebra.∨-⊥-isCommutativeMonoid"
d1620 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Structures.T362
d1620 v0 v1 v2 = du1620 v2
du1620 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Structures.T362
du1620 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C5263 (coe du1616 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d710
         (coe
            MAlonzo.Code.Algebra.Structures.d770
            (coe
               MAlonzo.Code.Algebra.Structures.d1686
               (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))))
name1622
  = "Algebra.Properties.BooleanAlgebra.∧-⊤-isCommutativeMonoid"
d1622 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Structures.T362
d1622 v0 v1 v2 = du1622 v2
du1622 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Structures.T362
du1622 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C5263 (coe du1618 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d716
         (coe
            MAlonzo.Code.Algebra.Structures.d770
            (coe
               MAlonzo.Code.Algebra.Structures.d1686
               (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))))
name1624 = "Algebra.Properties.BooleanAlgebra.∨-∧-isSemiring"
d1624 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Structures.T1176
d1624 v0 v1 v2 = du1624 v2
du1624 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Structures.T1176
du1624 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C21401
      (coe
         MAlonzo.Code.Algebra.Structures.C19373 (coe du1620 (coe v0))
         (coe du1618 (coe v0))
         (coe
            MAlonzo.Code.Algebra.Properties.DistributiveLattice.du296
            (coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0))))
      (coe du1604 (coe v0))
name1626 = "Algebra.Properties.BooleanAlgebra.∧-∨-isSemiring"
d1626 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Structures.T1176
d1626 v0 v1 v2 = du1626 v2
du1626 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Structures.T1176
du1626 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C21401
      (coe
         MAlonzo.Code.Algebra.Structures.C19373 (coe du1622 (coe v0))
         (coe du1616 (coe v0))
         (coe
            MAlonzo.Code.Algebra.Properties.DistributiveLattice.du290
            (coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0))))
      (coe du1614 (coe v0))
name1628
  = "Algebra.Properties.BooleanAlgebra.∨-∧-isCommutativeSemiring"
d1628 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Structures.T1280
d1628 v0 v1 v2 = du1628 v2
du1628 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Structures.T1280
du1628 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C23247 (coe du1624 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d716
         (coe
            MAlonzo.Code.Algebra.Structures.d770
            (coe
               MAlonzo.Code.Algebra.Structures.d1686
               (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))))
name1630
  = "Algebra.Properties.BooleanAlgebra.∧-∨-isCommutativeSemiring"
d1630 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Structures.T1280
d1630 v0 v1 v2 = du1630 v2
du1630 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Structures.T1280
du1630 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C23247 (coe du1626 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d710
         (coe
            MAlonzo.Code.Algebra.Structures.d770
            (coe
               MAlonzo.Code.Algebra.Structures.d1686
               (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))))
name1632
  = "Algebra.Properties.BooleanAlgebra.∨-∧-commutativeSemiring"
d1632 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Bundles.T1818
d1632 v0 v1 v2 = du1632 v2
du1632 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Bundles.T1818
du1632 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C20443
      (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d2438 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d2442 (coe v0)) (coe du1628 (coe v0))
name1634
  = "Algebra.Properties.BooleanAlgebra.∧-∨-commutativeSemiring"
d1634 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Bundles.T1818
d1634 v0 v1 v2 = du1634 v2
du1634 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Bundles.T1818
du1634 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C20443
      (MAlonzo.Code.Algebra.Bundles.d2438 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d2442 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0)) (coe du1630 (coe v0))
name1640 = "Algebra.Properties.BooleanAlgebra.lemma"
d1640 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1640 v0 v1 v2 v3 v4 v5 v6 = du1640 v2 v3 v4 v5 v6
du1640 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1640 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du58
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du74
            (let v5 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du1052
               (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v5))))
         (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
         (coe
            MAlonzo.Code.Algebra.Bundles.d2438 v0
            (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
            (MAlonzo.Code.Algebra.Bundles.d2442 (coe v0)))
         (coe v2)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du58
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du74
               (let v5 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du1052
                  (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v5))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
               (MAlonzo.Code.Algebra.Bundles.d2442 (coe v0)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
               (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2))
            (coe v2)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.du74
                  (let v5 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                   coe
                     MAlonzo.Code.Algebra.Bundles.du1052
                     (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v5))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v1)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2))
               v2
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.du74
                     (let v5 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                      coe
                        MAlonzo.Code.Algebra.Bundles.du1052
                        (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v5))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v1)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2))
                  v2
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du58
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.du74
                        (let v5 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                         coe
                           MAlonzo.Code.Algebra.Bundles.du1052
                           (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v5))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2))
                     (coe v2)
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du58
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.du74
                           (let v5 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                            coe
                              MAlonzo.Code.Algebra.Bundles.du1052
                              (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v5))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2438 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                              (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1))
                           v2)
                        (coe v2)
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.du74
                              (let v5 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                               coe
                                 MAlonzo.Code.Algebra.Bundles.du1052
                                 (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v5))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2438 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                                 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1))
                              v2)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2438 v0
                              (MAlonzo.Code.Algebra.Bundles.d2442 (coe v0)) v2)
                           v2
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.du74
                                 (let v5 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                                  coe
                                    MAlonzo.Code.Algebra.Bundles.du1052
                                    (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v5))))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2438 v0
                                 (MAlonzo.Code.Algebra.Bundles.d2442 (coe v0)) v2)
                              v2 v2
                              (let v5
                                     = MAlonzo.Code.Relation.Binary.Structures.d34
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Bundles.d60
                                            (let v5
                                                   = coe
                                                       MAlonzo.Code.Algebra.Bundles.du2502
                                                       (coe v0) in
                                             coe
                                               MAlonzo.Code.Algebra.Bundles.du1052
                                               (coe
                                                  MAlonzo.Code.Algebra.Bundles.du1130 (coe v5)))) in
                               coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                                 (coe v5 v2))
                              (coe du1586 v0 v2))
                           (let v5
                                  = MAlonzo.Code.Algebra.Structures.d1686
                                      (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)) in
                            coe
                              MAlonzo.Code.Algebra.Structures.du744
                              (coe MAlonzo.Code.Algebra.Structures.d770 (coe v5)) (coe v2)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                                 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1))
                              (coe MAlonzo.Code.Algebra.Bundles.d2442 (coe v0))
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d1688
                                 (MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)) v1)))
                        (coe
                           MAlonzo.Code.Algebra.Properties.DistributiveLattice.du294
                           (coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0)) v2 v1
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)))
                     (let v5 = MAlonzo.Code.Algebra.Bundles.d2446 (coe v0) in
                      let v6 = MAlonzo.Code.Algebra.Structures.d1686 (coe v5) in
                      coe
                        MAlonzo.Code.Algebra.Structures.du752
                        (coe MAlonzo.Code.Algebra.Structures.d770 (coe v6))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2)
                        (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)
                        (coe MAlonzo.Code.Algebra.Bundles.d2444 (coe v0)) (coe v3)))
                  (let v5
                         = MAlonzo.Code.Algebra.Structures.d1686
                             (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)) in
                   coe
                     MAlonzo.Code.Algebra.Structures.du752
                     (coe MAlonzo.Code.Algebra.Structures.d770 (coe v5))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v1)
                     (coe MAlonzo.Code.Algebra.Bundles.d2444 (coe v0))
                     (coe du1574 v0 v1)))
               (coe
                  MAlonzo.Code.Algebra.Properties.DistributiveLattice.du292
                  (coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0))
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v1 v2))
            (let v5 = MAlonzo.Code.Algebra.Bundles.d2446 (coe v0) in
             let v6 = MAlonzo.Code.Algebra.Structures.d1686 (coe v5) in
             coe
               MAlonzo.Code.Algebra.Structures.du740
               (coe MAlonzo.Code.Algebra.Structures.d770 (coe v6))
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
               (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
               (coe MAlonzo.Code.Algebra.Bundles.d2442 (coe v0)) (coe v4)))
         (coe
            du1582 (coe v0) (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)))
name1650 = "Algebra.Properties.BooleanAlgebra.⊥≉⊤"
d1650 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny
d1650 v0 v1 v2 = du1650 v2
du1650 :: MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny
du1650 v0
  = coe
      du1640 (coe v0) (coe MAlonzo.Code.Algebra.Bundles.d2444 (coe v0))
      (coe MAlonzo.Code.Algebra.Bundles.d2442 (coe v0))
      (coe
         du1582 (coe v0) (coe MAlonzo.Code.Algebra.Bundles.d2444 (coe v0)))
      (coe
         du1608 (coe v0) (coe MAlonzo.Code.Algebra.Bundles.d2444 (coe v0)))
name1652 = "Algebra.Properties.BooleanAlgebra.⊤≉⊥"
d1652 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny
d1652 v0 v1 v2 = du1652 v2
du1652 :: MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny
du1652 v0
  = coe
      du1640 (coe v0) (coe MAlonzo.Code.Algebra.Bundles.d2442 (coe v0))
      (coe MAlonzo.Code.Algebra.Bundles.d2444 (coe v0))
      (coe
         du1598 (coe v0) (coe MAlonzo.Code.Algebra.Bundles.d2442 (coe v0)))
      (coe
         du1590 (coe v0) (coe MAlonzo.Code.Algebra.Bundles.d2442 (coe v0)))
name1654 = "Algebra.Properties.BooleanAlgebra.¬-involutive"
d1654 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny
d1654 v0 v1 v2 v3 = du1654 v2 v3
du1654 :: MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny
du1654 v0 v1
  = coe
      du1640 (coe v0) (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
      (coe v1) (coe du1574 v0 v1) (coe du1570 v0 v1)
name1662 = "Algebra.Properties.BooleanAlgebra.deMorgan₁"
d1662 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny -> AgdaAny
d1662 v0 v1 v2 v3 v4 = du1662 v2 v3 v4
du1662 ::
  MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny -> AgdaAny
du1662 v0 v1 v2
  = coe
      du1640 (coe v0) (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)
      (coe
         MAlonzo.Code.Algebra.Bundles.d2436 v0
         (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
         (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
      (coe du1672 (coe v0) (coe v1) (coe v2))
      (coe du1676 (coe v0) (coe v1) (coe v2))
name1672 = "Algebra.Properties.BooleanAlgebra._.lem₁"
d1672 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny -> AgdaAny
d1672 v0 v1 v2 v3 v4 = du1672 v2 v3 v4
du1672 ::
  MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny -> AgdaAny
du1672 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du74
            (let v3 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du1052
               (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v3))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d2438 v0
            (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d2436 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2)))
         (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du74
               (let v3 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du1052
                  (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v3))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v2 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2)))
            (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.du74
                  (let v3 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                   coe
                     MAlonzo.Code.Algebra.Bundles.du1052
                     (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v3))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v2 v1)
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0 v2
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0 v2
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))))
               (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.du74
                     (let v3 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                      coe
                        MAlonzo.Code.Algebra.Bundles.du1052
                        (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v3))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0 v2
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0 v2
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0 v2
                        (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
                        (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0))))
                  (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.du74
                        (let v3 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                         coe
                           MAlonzo.Code.Algebra.Bundles.du1052
                           (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v3))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0 v2
                           (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0)))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
                           (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0))
                        (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0)))
                     (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.du74
                           (let v3 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                            coe
                              MAlonzo.Code.Algebra.Bundles.du1052
                              (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v3))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0
                           (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0))
                           (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0)))
                        (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0))
                        (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0))
                        (let v3
                               = MAlonzo.Code.Relation.Binary.Structures.d34
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Bundles.d60
                                      (let v3 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                                       coe
                                         MAlonzo.Code.Algebra.Bundles.du1052
                                         (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v3)))) in
                         let v4 = MAlonzo.Code.Algebra.Bundles.d2444 (coe v0) in
                         coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                           (coe v3 v4))
                        (coe
                           du1590 (coe v0) (coe MAlonzo.Code.Algebra.Bundles.d2444 (coe v0))))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d714
                        (MAlonzo.Code.Algebra.Structures.d770
                           (coe
                              MAlonzo.Code.Algebra.Structures.d1686
                              (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0 v2
                           (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0)))
                        (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
                           (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0)))
                        (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0))
                        (coe du1598 (coe v0) (coe v2)) (coe du1598 (coe v0) (coe v1))))
                  (coe
                     MAlonzo.Code.Algebra.Structures.d714
                     (MAlonzo.Code.Algebra.Structures.d770
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1686
                           (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0 v2
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0 v2
                        (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0 v2
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
                        (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0)))
                     (let v3
                            = MAlonzo.Code.Algebra.Structures.d1686
                                (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)) in
                      coe
                        MAlonzo.Code.Algebra.Structures.du740
                        (coe MAlonzo.Code.Algebra.Structures.d770 (coe v3)) (coe v2)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1))
                        (coe MAlonzo.Code.Algebra.Bundles.d2444 (coe v0))
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1690
                           (MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)) v1))
                     (let v3
                            = MAlonzo.Code.Algebra.Structures.d1686
                                (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)) in
                      coe
                        MAlonzo.Code.Algebra.Structures.du740
                        (coe MAlonzo.Code.Algebra.Structures.d770 (coe v3)) (coe v1)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0 v2
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                        (coe MAlonzo.Code.Algebra.Bundles.d2444 (coe v0))
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1690
                           (MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)) v2))))
               (coe
                  MAlonzo.Code.Algebra.Structures.d714
                  (MAlonzo.Code.Algebra.Structures.d770
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1686
                        (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v2 v1)
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0 v2
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0 v2
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.d718
                     (MAlonzo.Code.Algebra.Structures.d770
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1686
                           (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
                     v2 v1 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1))
                  (coe
                     MAlonzo.Code.Algebra.Structures.d718
                     (MAlonzo.Code.Algebra.Structures.d770
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1686
                           (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
                     v1 v2 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))))
            (let v3
                   = MAlonzo.Code.Algebra.Structures.d1686
                       (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)) in
             coe
               MAlonzo.Code.Algebra.Structures.du752
               (coe MAlonzo.Code.Algebra.Structures.d770 (coe v3))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v2 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1))
               (let v4
                      = MAlonzo.Code.Algebra.Structures.d1686
                          (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)) in
                coe
                  MAlonzo.Code.Algebra.Structures.du744
                  (coe MAlonzo.Code.Algebra.Structures.d770 (coe v4))
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v2 v1)
                  (coe
                     MAlonzo.Code.Algebra.Structures.d716
                     (MAlonzo.Code.Algebra.Structures.d770
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1686
                           (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
                     v1 v2))))
         (coe
            MAlonzo.Code.Algebra.Properties.DistributiveLattice.du292
            (coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0))
            (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)
            (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
            (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2)))
name1674 = "Algebra.Properties.BooleanAlgebra._.lem₃"
d1674 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny -> AgdaAny
d1674 v0 v1 v2 v3 v4 = du1674 v2 v3 v4
du1674 ::
  MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny -> AgdaAny
du1674 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du74
            (let v3 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du1052
               (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v3))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d2436 v0
            (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)
            (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1))
         (coe
            MAlonzo.Code.Algebra.Bundles.d2438 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0 v2
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d2436 v0
            (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du74
               (let v3 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du1052
                  (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v3))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0 v2
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (MAlonzo.Code.Algebra.Bundles.d2442 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0 v2
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.du74
                  (let v3 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                   coe
                     MAlonzo.Code.Algebra.Bundles.du1052
                     (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v3))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (MAlonzo.Code.Algebra.Bundles.d2442 (coe v0))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0 v2
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0 v2
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2)
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.du74
                     (let v3 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                      coe
                        MAlonzo.Code.Algebra.Bundles.du1052
                        (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v3))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0 v2
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2)
                  (let v3
                         = MAlonzo.Code.Relation.Binary.Structures.d34
                             (coe
                                MAlonzo.Code.Relation.Binary.Bundles.d60
                                (let v3 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                                 coe
                                   MAlonzo.Code.Algebra.Bundles.du1052
                                   (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v3)))) in
                   let v4
                         = coe
                             MAlonzo.Code.Algebra.Bundles.d2436 v0
                             (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2 in
                   coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                     (coe v3 v4))
                  (coe
                     MAlonzo.Code.Algebra.Structures.d710
                     (MAlonzo.Code.Algebra.Structures.d770
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1686
                           (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
                     v2 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)))
               (coe
                  du1586 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0 v2
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1))))
            (let v3
                   = MAlonzo.Code.Algebra.Structures.d1686
                       (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)) in
             coe
               MAlonzo.Code.Algebra.Structures.du744
               (coe MAlonzo.Code.Algebra.Structures.d770 (coe v3))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0 v2
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1))
               (coe MAlonzo.Code.Algebra.Bundles.d2442 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Structures.d1688
                  (MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)) v1)))
         (let v3 = MAlonzo.Code.Algebra.Bundles.d2446 (coe v0) in
          coe
            MAlonzo.Code.Algebra.Structures.du814
            (MAlonzo.Code.Algebra.Structures.d1686 (coe v3))
            (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v1 v2))
name1676 = "Algebra.Properties.BooleanAlgebra._.lem₂"
d1676 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny -> AgdaAny
d1676 v0 v1 v2 v3 v4 = du1676 v2 v3 v4
du1676 ::
  MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny -> AgdaAny
du1676 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du58
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du74
            (let v3 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du1052
               (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v3))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d2436 v0
            (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d2436 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1))
            (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
         (coe MAlonzo.Code.Algebra.Bundles.d2442 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du74
               (let v3 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du1052
                  (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v3))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1))
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2)
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
            (MAlonzo.Code.Algebra.Bundles.d2442 (coe v0))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.du74
                  (let v3 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                   coe
                     MAlonzo.Code.Algebra.Bundles.du1052
                     (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v3))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0 v2
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2)))
               (MAlonzo.Code.Algebra.Bundles.d2442 (coe v0))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.du74
                     (let v3 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                      coe
                        MAlonzo.Code.Algebra.Bundles.du1052
                        (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v3))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0 v2
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                     (MAlonzo.Code.Algebra.Bundles.d2442 (coe v0)))
                  (MAlonzo.Code.Algebra.Bundles.d2442 (coe v0))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.du74
                        (let v3 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                         coe
                           MAlonzo.Code.Algebra.Bundles.du1052
                           (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v3))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                        (MAlonzo.Code.Algebra.Bundles.d2442 (coe v0)))
                     (MAlonzo.Code.Algebra.Bundles.d2442 (coe v0))
                     (MAlonzo.Code.Algebra.Bundles.d2442 (coe v0))
                     (let v3
                            = MAlonzo.Code.Relation.Binary.Structures.d34
                                (coe
                                   MAlonzo.Code.Relation.Binary.Bundles.d60
                                   (let v3 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                                    coe
                                      MAlonzo.Code.Algebra.Bundles.du1052
                                      (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v3)))) in
                      let v4 = MAlonzo.Code.Algebra.Bundles.d2442 (coe v0) in
                      coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                        (coe v3 v4))
                     (coe
                        du1608 (coe v0) (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)))
                  (let v3
                         = MAlonzo.Code.Algebra.Structures.d1686
                             (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)) in
                   coe
                     MAlonzo.Code.Algebra.Structures.du748
                     (coe MAlonzo.Code.Algebra.Structures.d770 (coe v3))
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0 v2
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                     (coe MAlonzo.Code.Algebra.Bundles.d2442 (coe v0))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1688
                        (MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)) v2)))
               (coe
                  MAlonzo.Code.Algebra.Structures.d712
                  (MAlonzo.Code.Algebra.Structures.d770
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1686
                        (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2)))
            (let v3 = MAlonzo.Code.Algebra.Bundles.d2446 (coe v0) in
             let v4 = MAlonzo.Code.Algebra.Structures.d1686 (coe v3) in
             coe
               MAlonzo.Code.Algebra.Structures.du752
               (coe MAlonzo.Code.Algebra.Structures.d770 (coe v4))
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2)
               (coe du1674 (coe v0) (coe v1) (coe v2))))
         (coe
            MAlonzo.Code.Algebra.Structures.d712
            (MAlonzo.Code.Algebra.Structures.d770
               (coe
                  MAlonzo.Code.Algebra.Structures.d1686
                  (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
            (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)
            (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
            (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2)))
name1682 = "Algebra.Properties.BooleanAlgebra.deMorgan₂"
d1682 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny -> AgdaAny
d1682 v0 v1 v2 v3 v4 = du1682 v2 v3 v4
du1682 ::
  MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny -> AgdaAny
du1682 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du58
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du74
            (let v3 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du1052
               (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v3))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d2440 v0
            (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2))
         (coe
            MAlonzo.Code.Algebra.Bundles.d2440 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2440 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2440 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d2438 v0
            (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
            (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du58
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du74
               (let v3 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du1052
                  (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v3))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2440 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2440 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2440 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2440 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2440 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.du74
                  (let v3 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                   coe
                     MAlonzo.Code.Algebra.Bundles.du1052
                     (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v3))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2440 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2440 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
               (let v3
                      = MAlonzo.Code.Relation.Binary.Structures.d34
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d60
                             (let v3 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                              coe
                                MAlonzo.Code.Algebra.Bundles.du1052
                                (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v3)))) in
                let v4
                      = coe
                          MAlonzo.Code.Algebra.Bundles.d2438 v0
                          (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                          (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2) in
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                  (coe v3 v4))
               (coe
                  du1654 (coe v0)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))))
            (coe
               MAlonzo.Code.Algebra.Structures.d1692
               (MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2440 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2440 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2440 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2)))
               (coe
                  du1662 (coe v0) (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))))
         (coe
            MAlonzo.Code.Algebra.Structures.d1692
            (MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2440 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2440 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2)))
            (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
            (coe
               MAlonzo.Code.Algebra.Structures.d714
               (MAlonzo.Code.Algebra.Structures.d770
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1686
                     (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2440 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1))
               v1
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2440 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
               v2 (coe du1654 (coe v0) (coe v1)) (coe du1654 (coe v0) (coe v2)))))
name1694 = "Algebra.Properties.BooleanAlgebra.replace-equality"
d1694 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Function.Equivalence.T16) ->
  MAlonzo.Code.Algebra.Bundles.T2410
d1694 v0 v1 v2 v3 v4 = du1694 v2 v4
du1694 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Function.Equivalence.T16) ->
  MAlonzo.Code.Algebra.Bundles.T2410
du1694 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C27217
      (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d2438 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d2440 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d2442 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.C31487
         (coe
            MAlonzo.Code.Algebra.Bundles.d1082
            (coe
               MAlonzo.Code.Algebra.Properties.DistributiveLattice.du262
               (coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0)) (coe v1)))
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Function.Equality.d38
                 (MAlonzo.Code.Function.Equivalence.d34
                    (coe
                       v1
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d2436 v0 v2
                          (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                       (MAlonzo.Code.Algebra.Bundles.d2442 (coe v0))))
                 (coe
                    MAlonzo.Code.Algebra.Structures.d1688
                    (MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)) v2)))
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Function.Equality.d38
                 (MAlonzo.Code.Function.Equivalence.d34
                    (coe
                       v1
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d2438 v0 v2
                          (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                       (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0))))
                 (coe
                    MAlonzo.Code.Algebra.Structures.d1690
                    (MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)) v2)))
         (coe
            (\ v2 v3 v4 ->
               coe
                 MAlonzo.Code.Function.Equality.d38
                 (MAlonzo.Code.Function.Equivalence.d34
                    (coe
                       v1 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2)
                       (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)))
                 (coe
                    MAlonzo.Code.Algebra.Structures.d1692
                    (MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)) v2 v3
                    (coe
                       MAlonzo.Code.Function.Equality.d38
                       (MAlonzo.Code.Function.Equivalence.d36 (coe v1 v2 v3)) v4)))))
name1730 = "Algebra.Properties.BooleanAlgebra.XorRing._⊕_"
d1730 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d1730 v0 v1 v2 = du1730 v1
du1730 ::
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du1730 v0 = coe v0
name1740 = "Algebra.Properties.BooleanAlgebra.XorRing.helper"
d1740 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1740 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1740 v0 v3 v4 v5 v6 v7 v8
du1740 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1740 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Algebra.Structures.d720
      (MAlonzo.Code.Algebra.Structures.d770
         (coe
            MAlonzo.Code.Algebra.Structures.d1686
            (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
      v1 v2 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)
      (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4) v5
      (coe
         MAlonzo.Code.Algebra.Structures.d1692
         (MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)) v3 v4 v6)
name1746 = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-cong"
d1746 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1746 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = du1746 v2 v3 v4 v5 v6 v7 v8 v9 v10
du1746 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1746 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du74
            (let v9 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du1052
               (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v9))))
         (coe v1 v3 v5)
         (coe
            MAlonzo.Code.Algebra.Bundles.d2438 v0
            (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v3 v5)
            (coe
               MAlonzo.Code.Algebra.Bundles.d2440 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v5)))
         (coe v1 v4 v6)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du74
               (let v9 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du1052
                  (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v9))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v3 v5)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2440 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v5)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v4 v6)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2440 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v4 v6)))
            (coe v1 v4 v6)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du58
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.du74
                  (let v9 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                   coe
                     MAlonzo.Code.Algebra.Bundles.du1052
                     (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v9))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v4 v6)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2440 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v4 v6)))
               (coe v1 v4 v6) (coe v1 v4 v6)
               (let v9
                      = MAlonzo.Code.Relation.Binary.Structures.d34
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d60
                             (let v9 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                              coe
                                MAlonzo.Code.Algebra.Bundles.du1052
                                (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v9)))) in
                let v10 = coe v1 v4 v6 in
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                  (coe v9 v10))
               (coe v2 v4 v6))
            (coe
               MAlonzo.Code.Algebra.Structures.d720
               (MAlonzo.Code.Algebra.Structures.d770
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1686
                     (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
               (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v3 v5)
               (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v4 v6)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2440 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v5))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2440 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v4 v6))
               (coe
                  MAlonzo.Code.Algebra.Structures.d714
                  (MAlonzo.Code.Algebra.Structures.d770
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1686
                        (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
                  v3 v4 v5 v6 v7 v8)
               (coe
                  MAlonzo.Code.Algebra.Structures.d1692
                  (MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v5)
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v4 v6)
                  (coe
                     MAlonzo.Code.Algebra.Structures.d720
                     (MAlonzo.Code.Algebra.Structures.d770
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1686
                           (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
                     v3 v4 v5 v6 v7 v8))))
         (coe v2 v3 v5))
name1760 = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-comm"
d1760 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d1760 v0 v1 v2 v3 v4 v5 v6 = du1760 v2 v3 v4 v5 v6
du1760 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du1760 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du74
            (let v5 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du1052
               (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v5))))
         (coe v1 v3 v4)
         (coe
            MAlonzo.Code.Algebra.Bundles.d2438 v0
            (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v3 v4)
            (coe
               MAlonzo.Code.Algebra.Bundles.d2440 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4)))
         (coe v1 v4 v3)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du74
               (let v5 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du1052
                  (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v5))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v3 v4)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2440 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v4 v3)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2440 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v4 v3)))
            (coe v1 v4 v3)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du58
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.du74
                  (let v5 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                   coe
                     MAlonzo.Code.Algebra.Bundles.du1052
                     (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v5))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v4 v3)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2440 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v4 v3)))
               (coe v1 v4 v3) (coe v1 v4 v3)
               (let v5
                      = MAlonzo.Code.Relation.Binary.Structures.d34
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d60
                             (let v5 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                              coe
                                MAlonzo.Code.Algebra.Bundles.du1052
                                (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v5)))) in
                let v6 = coe v1 v4 v3 in
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                  (coe v5 v6))
               (coe v2 v4 v3))
            (coe
               MAlonzo.Code.Algebra.Structures.d720
               (MAlonzo.Code.Algebra.Structures.d770
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1686
                     (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
               (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v3 v4)
               (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v4 v3)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2440 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2440 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v4 v3))
               (coe
                  MAlonzo.Code.Algebra.Structures.d710
                  (MAlonzo.Code.Algebra.Structures.d770
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1686
                        (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
                  v3 v4)
               (coe
                  MAlonzo.Code.Algebra.Structures.d1692
                  (MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4)
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v4 v3)
                  (coe
                     MAlonzo.Code.Algebra.Structures.d716
                     (MAlonzo.Code.Algebra.Structures.d770
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1686
                           (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
                     v3 v4))))
         (coe v2 v3 v4))
name1770 = "Algebra.Properties.BooleanAlgebra.XorRing.¬-distribˡ-⊕"
d1770 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d1770 v0 v1 v2 v3 v4 v5 v6 = du1770 v2 v3 v4 v5 v6
du1770 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du1770 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du74
            (let v5 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du1052
               (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v5))))
         (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 (coe v1 v3 v4))
         (coe
            MAlonzo.Code.Algebra.Bundles.d2440 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v3 v4)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2440 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4))))
         (coe v1 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3) v4)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du74
               (let v5 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du1052
                  (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v5))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2440 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v3 v4)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2440 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2440 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2440 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0 v4
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2440 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4)))))
            (coe v1 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3) v4)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.du74
                  (let v5 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                   coe
                     MAlonzo.Code.Algebra.Bundles.du1052
                     (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v5))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2440 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2440 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0 v4
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2440 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4)))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2440 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2440 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0 v4
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2440 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v4 v3)))))
               (coe v1 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3) v4)
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.du74
                     (let v5 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                      coe
                        MAlonzo.Code.Algebra.Bundles.du1052
                        (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v5))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2440 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2440 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4)))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0 v4
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2440 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v4 v3)))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2440 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0 v4
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))))
                  (coe v1 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3) v4)
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.du74
                        (let v5 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                         coe
                           MAlonzo.Code.Algebra.Bundles.du1052
                           (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v5))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2440 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                              (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2438 v0 v4
                              (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2440 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                              (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4)))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2440 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2438 v0 v4
                              (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))))
                     (coe v1 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3) v4)
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.du74
                           (let v5 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                            coe
                              MAlonzo.Code.Algebra.Bundles.du1052
                              (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v5))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2440 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                                 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4)))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2440 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2438 v0 v4
                                 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2436 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2440 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4)))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2440 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2438 v0 v4
                                 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))))
                        (coe v1 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3) v4)
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.du74
                              (let v5 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                               coe
                                 MAlonzo.Code.Algebra.Bundles.du1052
                                 (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v5))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2438 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2436 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2440 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4)))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2440 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2438 v0 v4
                                    (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2438 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2436 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3) v4)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2440 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2438 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3) v4)))
                           (coe v1 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3) v4)
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du58
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.du74
                                 (let v5 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                                  coe
                                    MAlonzo.Code.Algebra.Bundles.du1052
                                    (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v5))))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2438 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2436 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3) v4)
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2440 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2438 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3) v4)))
                              (coe v1 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3) v4)
                              (coe v1 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3) v4)
                              (let v5
                                     = MAlonzo.Code.Relation.Binary.Structures.d34
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Bundles.d60
                                            (let v5
                                                   = coe
                                                       MAlonzo.Code.Algebra.Bundles.du2502
                                                       (coe v0) in
                                             coe
                                               MAlonzo.Code.Algebra.Bundles.du1052
                                               (coe
                                                  MAlonzo.Code.Algebra.Bundles.du1130 (coe v5)))) in
                               let v6
                                     = coe v1 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3) v4 in
                               coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                                 (coe v5 v6))
                              (coe v2 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3) v4))
                           (coe
                              MAlonzo.Code.Algebra.Structures.d720
                              (MAlonzo.Code.Algebra.Structures.d770
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d1686
                                    (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2436 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2440 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4)))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2436 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3) v4)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2440 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2438 v0 v4
                                    (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2440 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2438 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3) v4))
                              (let v5
                                     = MAlonzo.Code.Algebra.Structures.d1686
                                         (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)) in
                               coe
                                 MAlonzo.Code.Algebra.Structures.du748
                                 (coe MAlonzo.Code.Algebra.Structures.d770 (coe v5))
                                 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2440 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4))
                                 (coe v4) (coe du1654 (coe v0) (coe v4)))
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d1692
                                 (MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2438 v0 v4
                                    (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2438 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3) v4)
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d716
                                    (MAlonzo.Code.Algebra.Structures.d770
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d1686
                                          (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
                                    v4 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)))))
                        (let v5
                               = MAlonzo.Code.Algebra.Structures.d1686
                                   (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)) in
                         coe
                           MAlonzo.Code.Algebra.Structures.du744
                           (coe MAlonzo.Code.Algebra.Structures.d770 (coe v5))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2440 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2438 v0 v4
                                 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2440 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                                 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4)))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2436 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2440 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4)))
                           (coe
                              du1662 (coe v0) (coe v3)
                              (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4))))
                     (coe
                        du1682 (coe v0)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0 v4
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))))
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1692
                     (MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2440 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4)))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0 v4
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2440 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v4 v3))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0 v4
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d714
                        (MAlonzo.Code.Algebra.Structures.d770
                           (coe
                              MAlonzo.Code.Algebra.Structures.d1686
                              (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2440 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4)))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0 v4
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2440 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v4 v3)))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0 v4
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))
                        (coe du1784 (coe v0) (coe v3) (coe v4))
                        (coe du1784 (coe v0) (coe v4) (coe v3)))))
               (coe
                  MAlonzo.Code.Algebra.Structures.d1692
                  (MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2440 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0 v4
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2440 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2440 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0 v4
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2440 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v4 v3))))
                  (let v5
                         = MAlonzo.Code.Algebra.Structures.d1686
                             (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)) in
                   coe
                     MAlonzo.Code.Algebra.Structures.du748
                     (coe MAlonzo.Code.Algebra.Structures.d770 (coe v5))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2440 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0 v4
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2440 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0 v4
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2440 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v4 v3)))
                     (let v6
                            = MAlonzo.Code.Algebra.Structures.d1686
                                (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)) in
                      coe
                        MAlonzo.Code.Algebra.Structures.du740
                        (coe MAlonzo.Code.Algebra.Structures.d770 (coe v6)) (coe v4)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2440 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2440 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v4 v3))
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1692
                           (MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))
                           (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4)
                           (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v4 v3)
                           (coe
                              MAlonzo.Code.Algebra.Structures.d716
                              (MAlonzo.Code.Algebra.Structures.d770
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d1686
                                    (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
                              v3 v4))))))
            (coe
               MAlonzo.Code.Algebra.Structures.d1692
               (MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v3 v4)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2440 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2440 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0 v4
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2440 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4))))
               (coe
                  MAlonzo.Code.Algebra.Properties.DistributiveLattice.du294
                  (coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2440 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4))
                  v3 v4)))
         (coe
            MAlonzo.Code.Algebra.Structures.d1692
            (MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)) (coe v1 v3 v4)
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v3 v4)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2440 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4)))
            (coe v2 v3 v4)))
name1784 = "Algebra.Properties.BooleanAlgebra.XorRing._.lem"
d1784 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1784 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1784 v2 v7 v8
du1784 ::
  MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny -> AgdaAny
du1784 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du74
            (let v3 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du1052
               (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v3))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
            (coe
               MAlonzo.Code.Algebra.Bundles.d2440 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
            (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du74
               (let v3 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du1052
                  (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v3))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.du74
                  (let v3 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                   coe
                     MAlonzo.Code.Algebra.Bundles.du1052
                     (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v3))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.du74
                     (let v3 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                      coe
                        MAlonzo.Code.Algebra.Bundles.du1052
                        (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v3))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                  (let v3
                         = MAlonzo.Code.Relation.Binary.Structures.d34
                             (coe
                                MAlonzo.Code.Relation.Binary.Bundles.d60
                                (let v3 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                                 coe
                                   MAlonzo.Code.Algebra.Bundles.du1052
                                   (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v3)))) in
                   let v4
                         = coe
                             MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
                             (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2) in
                   coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                     (coe v3 v4))
                  (coe
                     du1594 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))))
               (let v3
                      = MAlonzo.Code.Algebra.Structures.d1686
                          (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)) in
                coe
                  MAlonzo.Code.Algebra.Structures.du752
                  (coe MAlonzo.Code.Algebra.Structures.d770 (coe v3))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1))
                  (coe MAlonzo.Code.Algebra.Bundles.d2444 (coe v0))
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1690
                     (MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)) v1)))
            (coe
               MAlonzo.Code.Algebra.Properties.DistributiveLattice.du292
               (coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0)) v1
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2)))
         (let v3
                = MAlonzo.Code.Algebra.Structures.d1686
                    (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)) in
          coe
            MAlonzo.Code.Algebra.Structures.du740
            (coe MAlonzo.Code.Algebra.Structures.d770 (coe v3)) (coe v1)
            (coe
               MAlonzo.Code.Algebra.Bundles.d2440 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
            (coe du1662 (coe v0) (coe v1) (coe v2))))
name1794 = "Algebra.Properties.BooleanAlgebra.XorRing.¬-distribʳ-⊕"
d1794 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d1794 v0 v1 v2 v3 v4 v5 v6 = du1794 v2 v3 v4 v5 v6
du1794 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du1794 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du74
            (let v5 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du1052
               (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v5))))
         (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 (coe v1 v3 v4))
         (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 (coe v1 v4 v3))
         (coe v1 v3 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du74
               (let v5 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du1052
                  (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v5))))
            (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 (coe v1 v4 v3))
            (coe v1 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4) v3)
            (coe v1 v3 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.du74
                  (let v5 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                   coe
                     MAlonzo.Code.Algebra.Bundles.du1052
                     (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v5))))
               (coe v1 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4) v3)
               (coe v1 v3 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4))
               (coe v1 v3 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4))
               (let v5
                      = MAlonzo.Code.Relation.Binary.Structures.d34
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d60
                             (let v5 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                              coe
                                MAlonzo.Code.Algebra.Bundles.du1052
                                (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v5)))) in
                let v6
                      = coe v1 v3 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4) in
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                  (coe v5 v6))
               (coe
                  du1760 (coe v0) (coe v1) (coe v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4) (coe v3)))
            (coe du1770 (coe v0) (coe v1) (coe v2) (coe v4) (coe v3)))
         (coe
            MAlonzo.Code.Algebra.Structures.d1692
            (MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)) (coe v1 v3 v4)
            (coe v1 v4 v3)
            (coe du1760 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))))
name1804
  = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-annihilates-¬"
d1804 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d1804 v0 v1 v2 v3 v4 v5 v6 = du1804 v2 v3 v4 v5 v6
du1804 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du1804 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du58
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du74
            (let v5 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du1052
               (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v5))))
         (coe v1 v3 v4)
         (coe
            MAlonzo.Code.Algebra.Bundles.d2440 v0
            (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 (coe v1 v3 v4)))
         (coe
            v1 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)
            (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du74
               (let v5 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du1052
                  (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v5))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2440 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 (coe v1 v3 v4)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2440 v0
               (coe v1 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3) v4))
            (coe
               v1 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.du74
                  (let v5 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                   coe
                     MAlonzo.Code.Algebra.Bundles.du1052
                     (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v5))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2440 v0
                  (coe v1 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3) v4))
               (coe
                  v1 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4))
               (coe
                  v1 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4))
               (let v5
                      = MAlonzo.Code.Relation.Binary.Structures.d34
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d60
                             (let v5 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                              coe
                                MAlonzo.Code.Algebra.Bundles.du1052
                                (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v5)))) in
                let v6
                      = coe
                          v1 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)
                          (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4) in
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                  (coe v5 v6))
               (coe
                  du1794 (coe v0) (coe v1) (coe v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3) (coe v4)))
            (coe
               MAlonzo.Code.Algebra.Structures.d1692
               (MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 (coe v1 v3 v4))
               (coe v1 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3) v4)
               (coe du1770 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))))
         (coe du1654 (coe v0) (coe v1 v3 v4)))
name1810 = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-identityˡ"
d1810 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d1810 v0 v1 v2 v3 v4 v5 = du1810 v2 v3 v4 v5
du1810 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du1810 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du74
            (let v4 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du1052
               (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v4))))
         (coe v1 (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0)) v3)
         (coe
            MAlonzo.Code.Algebra.Bundles.d2438 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0
               (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0)) v3)
            (coe
               MAlonzo.Code.Algebra.Bundles.d2440 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0)) v3)))
         v3
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du74
               (let v4 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du1052
                  (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v4))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0)) v3)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2440 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0
                     (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0)) v3)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2440 v0
                  (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0))))
            v3
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.du74
                  (let v4 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                   coe
                     MAlonzo.Code.Algebra.Bundles.du1052
                     (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v4))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2440 v0
                     (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                  (MAlonzo.Code.Algebra.Bundles.d2442 (coe v0)))
               v3
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.du74
                     (let v4 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                      coe
                        MAlonzo.Code.Algebra.Bundles.du1052
                        (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v4))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                     (MAlonzo.Code.Algebra.Bundles.d2442 (coe v0)))
                  v3 v3
                  (let v4
                         = MAlonzo.Code.Relation.Binary.Structures.d34
                             (coe
                                MAlonzo.Code.Relation.Binary.Bundles.d60
                                (let v4 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                                 coe
                                   MAlonzo.Code.Algebra.Bundles.du1052
                                   (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v4)))) in
                   coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                     (coe v4 v3))
                  (coe du1582 (coe v0) (coe v3)))
               (let v4 = MAlonzo.Code.Algebra.Bundles.d2446 (coe v0) in
                let v5 = MAlonzo.Code.Algebra.Structures.d1686 (coe v4) in
                coe
                  MAlonzo.Code.Algebra.Structures.du740
                  (coe MAlonzo.Code.Algebra.Structures.d770 (coe v5)) (coe v3)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2440 v0
                     (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0)))
                  (coe MAlonzo.Code.Algebra.Bundles.d2442 (coe v0))
                  (coe du1650 (coe v0))))
            (coe
               MAlonzo.Code.Algebra.Structures.d720
               (MAlonzo.Code.Algebra.Structures.d770
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1686
                     (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0)) v3)
               v3
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2440 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0
                     (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0)) v3))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2440 v0
                  (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0)))
               (coe du1594 v0 v3)
               (coe
                  MAlonzo.Code.Algebra.Structures.d1692
                  (MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0
                     (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0)) v3)
                  (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0)) (coe du1602 v0 v3))))
         (coe v2 (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0)) v3))
name1814 = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-identityʳ"
d1814 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d1814 v0 v1 v2 v3 v4 v5 = du1814 v2 v3 v4 v5
du1814 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du1814 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (MAlonzo.Code.Algebra.Structures.d708
         (coe
            MAlonzo.Code.Algebra.Structures.d770
            (coe
               MAlonzo.Code.Algebra.Structures.d1686
               (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))))
      (coe v1 v3 (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0)))
      (coe v1 (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0)) v3) v3
      (coe
         du1760 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe MAlonzo.Code.Algebra.Bundles.d2444 (coe v0)))
      (coe du1810 (coe v0) (coe v1) (coe v2) (coe v3))
name1816 = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-identity"
d1816 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d1816 v0 v1 v2 v3 v4 = du1816 v2 v3 v4
du1816 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du1816 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32
      (coe du1810 (coe v0) (coe v1) (coe v2))
      (coe du1814 (coe v0) (coe v1) (coe v2))
name1818 = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-inverseˡ"
d1818 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d1818 v0 v1 v2 v3 v4 v5 = du1818 v2 v3 v4 v5
du1818 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du1818 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du74
            (let v4 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du1052
               (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v4))))
         (coe v1 v3 v3)
         (coe
            MAlonzo.Code.Algebra.Bundles.d2438 v0
            (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v3 v3)
            (coe
               MAlonzo.Code.Algebra.Bundles.d2440 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v3)))
         (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du74
               (let v4 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du1052
                  (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v4))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v3 v3)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2440 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v3)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))
            (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.du74
                  (let v4 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                   coe
                     MAlonzo.Code.Algebra.Bundles.du1052
                     (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v4))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))
               (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0))
               (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0))
               (let v4
                      = MAlonzo.Code.Relation.Binary.Structures.d34
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d60
                             (let v4 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                              coe
                                MAlonzo.Code.Algebra.Bundles.du1052
                                (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v4)))) in
                let v5 = MAlonzo.Code.Algebra.Bundles.d2444 (coe v0) in
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                  (coe v4 v5))
               (coe
                  MAlonzo.Code.Algebra.Structures.d1690
                  (MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)) v3))
            (coe
               MAlonzo.Code.Algebra.Structures.d720
               (MAlonzo.Code.Algebra.Structures.d770
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1686
                     (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
               (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v3 v3) v3
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2440 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v3))
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)
               (coe
                  MAlonzo.Code.Algebra.Properties.Lattice.du1612
                  (coe
                     MAlonzo.Code.Algebra.Bundles.du1130
                     (coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0)))
                  v3)
               (coe
                  MAlonzo.Code.Algebra.Structures.d1692
                  (MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v3) v3
                  (coe
                     MAlonzo.Code.Algebra.Properties.Lattice.du1610
                     (coe
                        MAlonzo.Code.Algebra.Bundles.du1130
                        (coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0)))
                     v3))))
         (coe v2 v3 v3))
name1822 = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-inverseʳ"
d1822 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d1822 v0 v1 v2 v3 v4 v5 = du1822 v2 v3 v4 v5
du1822 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du1822 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (MAlonzo.Code.Algebra.Structures.d708
         (coe
            MAlonzo.Code.Algebra.Structures.d770
            (coe
               MAlonzo.Code.Algebra.Structures.d1686
               (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))))
      (coe v1 v3 v3) (coe v1 v3 v3)
      (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0))
      (coe du1760 (coe v0) (coe v1) (coe v2) (coe v3) (coe v3))
      (coe du1818 (coe v0) (coe v1) (coe v2) (coe v3))
name1824 = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-inverse"
d1824 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d1824 v0 v1 v2 v3 v4 = du1824 v2 v3 v4
du1824 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du1824 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32
      (coe du1818 (coe v0) (coe v1) (coe v2))
      (coe du1822 (coe v0) (coe v1) (coe v2))
name1826 = "Algebra.Properties.BooleanAlgebra.XorRing.∧-distribˡ-⊕"
d1826 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1826 v0 v1 v2 v3 v4 v5 v6 v7 = du1826 v2 v3 v4 v5 v6 v7
du1826 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1826 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du74
            (let v6 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du1052
               (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v6))))
         (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 (coe v1 v4 v5))
         (coe
            MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v4 v5)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2440 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v4 v5))))
         (coe
            v1 (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4)
            (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v5))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du58
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du74
               (let v6 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du1052
                  (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v6))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v4 v5)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2440 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v4 v5))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                  (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v4 v5))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2440 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v4 v5)))
            (coe
               v1 (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4)
               (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v5))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.du74
                  (let v6 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                   coe
                     MAlonzo.Code.Algebra.Bundles.du1052
                     (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v6))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                     (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v4 v5))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2440 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v4 v5)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                     (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v4 v5))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4)
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v5)))
               (coe
                  v1 (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4)
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v5))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du58
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.du74
                     (let v6 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                      coe
                        MAlonzo.Code.Algebra.Bundles.du1052
                        (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v6))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                        (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v4 v5))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4)
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v5)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                           (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v4 v5))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4)
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v5))))
                  (coe
                     v1 (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4)
                     (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v5))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.du74
                        (let v6 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                         coe
                           MAlonzo.Code.Algebra.Bundles.du1052
                           (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v6))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                              (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v4 v5))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2436 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4)
                              (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v5))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                              (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v4 v5))
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                              (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v4 v5))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2436 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4)
                              (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v5))))
                     (coe
                        v1 (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4)
                        (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v5))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du58
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.du74
                           (let v6 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                            coe
                              MAlonzo.Code.Algebra.Bundles.du1052
                              (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v6))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2438 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                                 (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v4 v5))
                              (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2438 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                                 (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v4 v5))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2436 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4)
                                 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v5))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                              (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v4 v5))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2436 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2436 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4)
                                 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v5))))
                        (coe
                           v1 (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4)
                           (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v5))
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du58
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.du74
                              (let v6 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                               coe
                                 MAlonzo.Code.Algebra.Bundles.du1052
                                 (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v6))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2438 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                                 (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v4 v5))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2436 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2436 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4)
                                    (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v5))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2438 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                                 (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v4 v5))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2436 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2440 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v4 v5))))
                           (coe
                              v1 (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4)
                              (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v5))
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du58
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.du74
                                 (let v6 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                                  coe
                                    MAlonzo.Code.Algebra.Bundles.du1052
                                    (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v6))))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2438 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                                    (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v4 v5))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2436 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2440 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v4 v5))))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2438 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                                    (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v4 v5))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2440 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                                       (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v4 v5))))
                              (coe
                                 v1 (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4)
                                 (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v5))
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Bundles.du74
                                    (let v6 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                                     coe
                                       MAlonzo.Code.Algebra.Bundles.du1052
                                       (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v6))))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2438 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                                       (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v4 v5))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2440 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                                          (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v4 v5))))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2438 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                                       (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v4 v5))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2440 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2438 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4)
                                          (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v5))))
                                 (coe
                                    v1 (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4)
                                    (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v5))
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Bundles.du74
                                       (let v6 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                                        coe
                                          MAlonzo.Code.Algebra.Bundles.du1052
                                          (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v6))))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2438 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                                          (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v4 v5))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2440 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2438 v0
                                             (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4)
                                             (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v5))))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2438 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2436 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4)
                                          (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v5))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2440 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2438 v0
                                             (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4)
                                             (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v5))))
                                    (coe
                                       v1 (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4)
                                       (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v5))
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du58
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Bundles.du74
                                          (let v6
                                                 = coe
                                                     MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                                           coe
                                             MAlonzo.Code.Algebra.Bundles.du1052
                                             (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v6))))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2438 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2436 v0
                                             (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4)
                                             (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v5))
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2440 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d2438 v0
                                                (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4)
                                                (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v5))))
                                       (coe
                                          v1 (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4)
                                          (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v5))
                                       (coe
                                          v1 (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4)
                                          (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v5))
                                       (let v6
                                              = MAlonzo.Code.Relation.Binary.Structures.d34
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.Bundles.d60
                                                     (let v6
                                                            = coe
                                                                MAlonzo.Code.Algebra.Bundles.du2502
                                                                (coe v0) in
                                                      coe
                                                        MAlonzo.Code.Algebra.Bundles.du1052
                                                        (coe
                                                           MAlonzo.Code.Algebra.Bundles.du1130
                                                           (coe v6)))) in
                                        let v7
                                              = coe
                                                  v1
                                                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4)
                                                  (coe
                                                     MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v5) in
                                        coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                                          (coe v6 v7))
                                       (coe
                                          v2 (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4)
                                          (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v5)))
                                    (let v6
                                           = MAlonzo.Code.Algebra.Structures.d1686
                                               (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)) in
                                     coe
                                       MAlonzo.Code.Algebra.Structures.du744
                                       (coe MAlonzo.Code.Algebra.Structures.d770 (coe v6))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2440 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2438 v0
                                             (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4)
                                             (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v5)))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                                          (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v4 v5))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2436 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4)
                                          (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v5))
                                       (coe
                                          MAlonzo.Code.Algebra.Properties.DistributiveLattice.du292
                                          (coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0)) v3 v4
                                          v5)))
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d720
                                    (MAlonzo.Code.Algebra.Structures.d770
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d1686
                                          (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                                       (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v4 v5))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                                       (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v4 v5))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2440 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                                          (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v4 v5)))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2440 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2438 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4)
                                          (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v5)))
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Structures.d34
                                       (MAlonzo.Code.Algebra.Structures.d708
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d770
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d1686
                                                (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                                          (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v4 v5)))
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d1692
                                       (MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                                          (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v4 v5))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2438 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4)
                                          (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v5))
                                       (coe du1840 (coe v0) (coe v3) (coe v4) (coe v5)))))
                              (let v6 = MAlonzo.Code.Algebra.Bundles.d2446 (coe v0) in
                               let v7 = MAlonzo.Code.Algebra.Structures.d1686 (coe v6) in
                               coe
                                 MAlonzo.Code.Algebra.Structures.du740
                                 (coe MAlonzo.Code.Algebra.Structures.d770 (coe v7))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                                    (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v4 v5))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2440 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                                       (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v4 v5)))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2436 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2440 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v4 v5)))
                                 (coe
                                    du1662 (coe v0) (coe v3)
                                    (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v4 v5))))
                           (let v6
                                  = MAlonzo.Code.Algebra.Structures.d1686
                                      (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)) in
                            coe
                              MAlonzo.Code.Algebra.Structures.du740
                              (coe MAlonzo.Code.Algebra.Structures.d770 (coe v6))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                                 (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v4 v5))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2436 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2440 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v4 v5)))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2436 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2436 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4)
                                    (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v5)))
                              (let v7 = MAlonzo.Code.Algebra.Bundles.d2446 (coe v0) in
                               let v8 = MAlonzo.Code.Algebra.Structures.d1686 (coe v7) in
                               coe
                                 MAlonzo.Code.Algebra.Structures.du748
                                 (coe MAlonzo.Code.Algebra.Structures.d770 (coe v8))
                                 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2440 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v4 v5))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2436 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4)
                                    (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v5))
                                 (coe du1662 (coe v0) (coe v4) (coe v5)))))
                        (coe
                           MAlonzo.Code.Algebra.Properties.DistributiveLattice.du292
                           (coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                              (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v4 v5))
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2436 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4)
                              (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v5))))
                     (let v6 = MAlonzo.Code.Algebra.Bundles.d2446 (coe v0) in
                      let v7 = MAlonzo.Code.Algebra.Structures.d1686 (coe v6) in
                      coe
                        MAlonzo.Code.Algebra.Structures.du752
                        (coe MAlonzo.Code.Algebra.Structures.d770 (coe v7))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                              (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v4 v5))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2436 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4)
                              (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v5)))
                        (coe MAlonzo.Code.Algebra.Bundles.d2444 (coe v0))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                              (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v4 v5))
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))
                        (coe du1842 (coe v0) (coe v3) (coe v4) (coe v5))))
                  (coe
                     du1594 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                           (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v4 v5))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4)
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v5)))))
               (let v6
                      = MAlonzo.Code.Algebra.Structures.d1686
                          (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)) in
                coe
                  MAlonzo.Code.Algebra.Structures.du740
                  (coe MAlonzo.Code.Algebra.Structures.d770 (coe v6))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                     (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v4 v5))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2440 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v4 v5))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4)
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v5))
                  (coe du1662 (coe v0) (coe v4) (coe v5))))
            (coe
               MAlonzo.Code.Algebra.Structures.d718
               (MAlonzo.Code.Algebra.Structures.d770
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1686
                     (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
               v3 (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v4 v5)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2440 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v4 v5))))
         (let v6
                = MAlonzo.Code.Algebra.Structures.d1686
                    (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)) in
          coe
            MAlonzo.Code.Algebra.Structures.du740
            (coe MAlonzo.Code.Algebra.Structures.d770 (coe v6)) (coe v3)
            (coe v1 v4 v5)
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v4 v5)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2440 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v4 v5)))
            (coe v2 v4 v5)))
name1838 = "Algebra.Properties.BooleanAlgebra.XorRing._.lem₂"
d1838 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1838 v0 v1 v2 v3 v4 v5 v6 v7 = du1838 v2 v5 v6 v7
du1838 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1838 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du58
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du74
            (let v4 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du1052
               (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v4))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
            (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v2 v3))
         (coe
            MAlonzo.Code.Algebra.Bundles.d2438 v0
            (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2) v3)
         (coe
            MAlonzo.Code.Algebra.Bundles.d2438 v0 v2
            (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v3))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du74
               (let v4 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du1052
                  (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v4))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2) v3)
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v2 v1) v3)
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0 v2
               (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v3))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.du74
                  (let v4 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                   coe
                     MAlonzo.Code.Algebra.Bundles.du1052
                     (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v4))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v2 v1) v3)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0 v2
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v3))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0 v2
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v3))
               (let v4
                      = MAlonzo.Code.Relation.Binary.Structures.d34
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d60
                             (let v4 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                              coe
                                MAlonzo.Code.Algebra.Bundles.du1052
                                (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v4)))) in
                let v5
                      = coe
                          MAlonzo.Code.Algebra.Bundles.d2438 v0 v2
                          (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v3) in
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                  (coe v4 v5))
               (coe
                  MAlonzo.Code.Algebra.Structures.d718
                  (MAlonzo.Code.Algebra.Structures.d770
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1686
                        (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
                  v2 v1 v3))
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d1686
                       (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)) in
             coe
               MAlonzo.Code.Algebra.Structures.du744
               (coe MAlonzo.Code.Algebra.Structures.d770 (coe v4)) (coe v3)
               (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)
               (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v2 v1)
               (coe
                  MAlonzo.Code.Algebra.Structures.d716
                  (MAlonzo.Code.Algebra.Structures.d770
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1686
                        (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
                  v1 v2)))
         (coe
            MAlonzo.Code.Algebra.Structures.d718
            (MAlonzo.Code.Algebra.Structures.d770
               (coe
                  MAlonzo.Code.Algebra.Structures.d1686
                  (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
            v1 v2 v3))
name1840 = "Algebra.Properties.BooleanAlgebra.XorRing._.lem₁"
d1840 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1840 v0 v1 v2 v3 v4 v5 v6 v7 = du1840 v2 v5 v6 v7
du1840 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1840 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du58
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du74
            (let v4 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du1052
               (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v4))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
            (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v2 v3))
         (coe
            MAlonzo.Code.Algebra.Bundles.d2438 v0
            (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v1)
            (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v2 v3))
         (coe
            MAlonzo.Code.Algebra.Bundles.d2438 v0
            (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)
            (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v3))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du74
               (let v4 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du1052
                  (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v4))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v1)
               (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v2 v3))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v2 v3)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)
               (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v3))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.du74
                  (let v4 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                   coe
                     MAlonzo.Code.Algebra.Bundles.du1052
                     (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v4))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v2 v3)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0 v2
                     (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v3)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v3))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du58
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.du74
                     (let v4 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                      coe
                        MAlonzo.Code.Algebra.Bundles.du1052
                        (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v4))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0 v2
                        (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v3)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)
                     (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v3))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)
                     (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v3))
                  (let v4
                         = MAlonzo.Code.Relation.Binary.Structures.d34
                             (coe
                                MAlonzo.Code.Relation.Binary.Bundles.d60
                                (let v4 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                                 coe
                                   MAlonzo.Code.Algebra.Bundles.du1052
                                   (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v4)))) in
                   let v5
                         = coe
                             MAlonzo.Code.Algebra.Bundles.d2438 v0
                             (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)
                             (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v3) in
                   coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                     (coe v4 v5))
                  (coe
                     MAlonzo.Code.Algebra.Structures.d718
                     (MAlonzo.Code.Algebra.Structures.d770
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1686
                           (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
                     v1 v2 (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v3)))
               (let v4 = MAlonzo.Code.Algebra.Bundles.d2446 (coe v0) in
                let v5 = MAlonzo.Code.Algebra.Structures.d1686 (coe v4) in
                coe
                  MAlonzo.Code.Algebra.Structures.du740
                  (coe MAlonzo.Code.Algebra.Structures.d770 (coe v5)) (coe v1)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v2 v3))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0 v2
                     (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v3))
                  (coe du1838 (coe v0) (coe v1) (coe v2) (coe v3))))
            (coe
               MAlonzo.Code.Algebra.Structures.d718
               (MAlonzo.Code.Algebra.Structures.d770
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1686
                     (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
               v1 v1 (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v2 v3)))
         (let v4 = MAlonzo.Code.Algebra.Bundles.d2446 (coe v0) in
          let v5 = MAlonzo.Code.Algebra.Structures.d1686 (coe v4) in
          coe
            MAlonzo.Code.Algebra.Structures.du744
            (coe MAlonzo.Code.Algebra.Structures.d770 (coe v5))
            (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v2 v3)
            (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v1) (coe v1)
            (coe
               MAlonzo.Code.Algebra.Properties.Lattice.du1610
               (coe
                  MAlonzo.Code.Algebra.Bundles.du1130
                  (coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0)))
               v1)))
name1842 = "Algebra.Properties.BooleanAlgebra.XorRing._.lem₃"
d1842 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1842 v0 v1 v2 v3 v4 v5 v6 v7 = du1842 v2 v5 v6 v7
du1842 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1842 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du58
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du74
            (let v4 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du1052
               (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v4))))
         (coe MAlonzo.Code.Algebra.Bundles.d2444 (coe v0))
         (coe
            MAlonzo.Code.Algebra.Bundles.d2438 v0
            (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v2 v3)
            (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d2438 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v2 v3))
            (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du58
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du74
               (let v4 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du1052
                  (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v4))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v2 v3)
               (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v2 v3)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v2 v3))
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du58
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.du74
                  (let v4 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                   coe
                     MAlonzo.Code.Algebra.Bundles.du1052
                     (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v4))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v2 v3)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v2 v3) v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v2 v3))
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.du74
                     (let v4 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                      coe
                        MAlonzo.Code.Algebra.Bundles.du1052
                        (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v4))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v2 v3) v1)
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v2 v3))
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v2 v3))
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1))
                  (let v4
                         = MAlonzo.Code.Relation.Binary.Structures.d34
                             (coe
                                MAlonzo.Code.Relation.Binary.Bundles.d60
                                (let v4 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                                 coe
                                   MAlonzo.Code.Algebra.Bundles.du1052
                                   (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v4)))) in
                   let v5
                         = coe
                             MAlonzo.Code.Algebra.Bundles.d2438 v0
                             (coe
                                MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
                                (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v2 v3))
                             (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) in
                   coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                     (coe v4 v5))
                  (coe
                     MAlonzo.Code.Algebra.Structures.d720
                     (MAlonzo.Code.Algebra.Structures.d770
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1686
                           (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v2 v3) v1)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v2 v3))
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                     (coe
                        MAlonzo.Code.Algebra.Structures.d716
                        (MAlonzo.Code.Algebra.Structures.d770
                           (coe
                              MAlonzo.Code.Algebra.Structures.d1686
                              (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
                        (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v2 v3) v1)
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d34
                        (MAlonzo.Code.Algebra.Structures.d708
                           (coe
                              MAlonzo.Code.Algebra.Structures.d770
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d1686
                                 (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))))
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1))))
               (coe
                  MAlonzo.Code.Algebra.Structures.d718
                  (MAlonzo.Code.Algebra.Structures.d770
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1686
                        (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
                  (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v2 v3) v1
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)))
            (let v4 = MAlonzo.Code.Algebra.Bundles.d2446 (coe v0) in
             let v5 = MAlonzo.Code.Algebra.Structures.d1686 (coe v4) in
             coe
               MAlonzo.Code.Algebra.Structures.du740
               (coe MAlonzo.Code.Algebra.Structures.d770 (coe v5))
               (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v2 v3)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1))
               (coe MAlonzo.Code.Algebra.Bundles.d2444 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Structures.d1690
                  (MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)) v1)))
         (coe
            du1598 (coe v0) (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v2 v3)))
name1844 = "Algebra.Properties.BooleanAlgebra.XorRing.∧-distribʳ-⊕"
d1844 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1844 v0 v1 v2 v3 v4 = du1844 v2 v3 v4
du1844 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1844 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du280
      (let v3 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
       coe
         MAlonzo.Code.Algebra.Bundles.du1052
         (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v3)))
      (coe MAlonzo.Code.Algebra.Bundles.d2438 (coe v0)) (coe v1)
      (coe du1746 (coe v0) (coe v1) (coe v2))
      (coe
         MAlonzo.Code.Algebra.Structures.d716
         (coe
            MAlonzo.Code.Algebra.Structures.d770
            (coe
               MAlonzo.Code.Algebra.Structures.d1686
               (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))))
      (coe du1826 (coe v0) (coe v1) (coe v2))
name1846 = "Algebra.Properties.BooleanAlgebra.XorRing.∧-distrib-⊕"
d1846 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d1846 v0 v1 v2 v3 v4 = du1846 v2 v3 v4
du1846 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du1846 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32
      (coe du1826 (coe v0) (coe v1) (coe v2))
      (coe du1844 (coe v0) (coe v1) (coe v2))
name1856 = "Algebra.Properties.BooleanAlgebra.XorRing.lemma₂"
d1856 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1856 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1856 v2 v5 v6 v7 v8
du1856 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1856 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du74
            (let v5 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du1052
               (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v5))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d2436 v0
            (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)
            (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4))
         (coe
            MAlonzo.Code.Algebra.Bundles.d2438 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2) v3)
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2) v4))
         (coe
            MAlonzo.Code.Algebra.Bundles.d2438 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v3)
               (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v2 v3))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v4)
               (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v2 v4)))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du74
               (let v5 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du1052
                  (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v5))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2) v3)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2) v4))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v3)
                  (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v2 v3))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v4)
                  (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v2 v4)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v3)
                  (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v2 v3))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v4)
                  (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v2 v4)))
            (let v5
                   = MAlonzo.Code.Relation.Binary.Structures.d34
                       (coe
                          MAlonzo.Code.Relation.Binary.Bundles.d60
                          (let v5 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                           coe
                             MAlonzo.Code.Algebra.Bundles.du1052
                             (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v5)))) in
             let v6
                   = coe
                       MAlonzo.Code.Algebra.Bundles.d2438 v0
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d2438 v0
                          (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v3)
                          (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v2 v3))
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d2438 v0
                          (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v4)
                          (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v2 v4)) in
             coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
               (coe v5 v6))
            (coe
               MAlonzo.Code.Algebra.Structures.d720
               (MAlonzo.Code.Algebra.Structures.d770
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1686
                     (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2) v3)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v3)
                  (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v2 v3))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2) v4)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v4)
                  (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v2 v4))
               (let v5 = MAlonzo.Code.Algebra.Bundles.d2446 (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Structures.du814
                  (MAlonzo.Code.Algebra.Structures.d1686 (coe v5)) v3 v1 v2)
               (let v5 = MAlonzo.Code.Algebra.Bundles.d2446 (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Structures.du814
                  (MAlonzo.Code.Algebra.Structures.d1686 (coe v5)) v4 v1 v2)))
         (coe
            MAlonzo.Code.Algebra.Properties.DistributiveLattice.du288
            (coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0))
            (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2) v3 v4))
name1866 = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-assoc"
d1866 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1866 v0 v1 v2 v3 v4 v5 v6 v7 = du1866 v2 v3 v4 v5 v6 v7
du1866 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1866 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (MAlonzo.Code.Algebra.Structures.d708
         (coe
            MAlonzo.Code.Algebra.Structures.d770
            (coe
               MAlonzo.Code.Algebra.Structures.d1686
               (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))))
      (coe v1 v3 (coe v1 v4 v5)) (coe v1 (coe v1 v3 v4) v5)
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du74
               (let v6 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du1052
                  (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v6))))
            (coe v1 v3 (coe v1 v4 v5))
            (coe
               v1 v3
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v4 v5)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2440 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v4 v5))))
            (coe v1 (coe v1 v3 v4) v5)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.du74
                  (let v6 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                   coe
                     MAlonzo.Code.Algebra.Bundles.du1052
                     (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v6))))
               (coe
                  v1 v3
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v4 v5)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2440 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v4 v5))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0 v3
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v4 v5)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2440 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v4 v5))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2440 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v4 v5)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2440 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v4 v5))))))
               (coe v1 (coe v1 v3 v4) v5)
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.du74
                     (let v6 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                      coe
                        MAlonzo.Code.Algebra.Bundles.du1052
                        (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v6))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0 v3
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v4 v5)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2440 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v4 v5))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2440 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2438 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v4 v5)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2440 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v4 v5))))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v3 v4) v5)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2436 v0 v3
                              (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4))
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v5)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2436 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)
                              (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4))
                           v5)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2436 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3) v4)
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v5))))
                  (coe v1 (coe v1 v3 v4) v5)
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.du74
                        (let v6 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                         coe
                           MAlonzo.Code.Algebra.Bundles.du1052
                           (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v6))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2436 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v3 v4) v5)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2436 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2436 v0 v3
                                 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4))
                              (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v5)))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2436 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2436 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)
                                 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4))
                              v5)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2436 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2436 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3) v4)
                              (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v5))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v3 v4) v5)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2436 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2436 v0 v3
                                 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4))
                              (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v5))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2438 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2436 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2436 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)
                                    (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4))
                                 v5)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2436 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2436 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3) v4)
                                 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v5)))))
                     (coe v1 (coe v1 v3 v4) v5)
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.du74
                           (let v6 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                            coe
                              MAlonzo.Code.Algebra.Bundles.du1052
                              (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v6))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2436 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v3 v4) v5)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2438 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2436 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2436 v0 v3
                                    (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4))
                                 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v5))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2438 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2436 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2436 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)
                                       (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4))
                                    v5)
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2436 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2436 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3) v4)
                                    (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v5)))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2436 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v3 v4) v5)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2438 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2436 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2436 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)
                                    (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4))
                                 v5)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2438 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2436 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2436 v0 v3
                                       (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4))
                                    (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v5))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2436 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2436 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3) v4)
                                    (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v5)))))
                        (coe v1 (coe v1 v3 v4) v5)
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du58
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.du74
                              (let v6 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                               coe
                                 MAlonzo.Code.Algebra.Bundles.du1052
                                 (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v6))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2438 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2436 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v3 v4) v5)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2438 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2436 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2436 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)
                                       (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4))
                                    v5)
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2438 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2436 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2436 v0 v3
                                          (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4))
                                       (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v5))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2436 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2436 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3) v4)
                                       (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v5)))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2438 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2438 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2436 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v3 v4) v5)
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2436 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2436 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)
                                       (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4))
                                    v5))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2438 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2436 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2436 v0 v3
                                       (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4))
                                    (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v5))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2436 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2436 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3) v4)
                                    (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v5))))
                           (coe v1 (coe v1 v3 v4) v5)
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.du74
                                 (let v6 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                                  coe
                                    MAlonzo.Code.Algebra.Bundles.du1052
                                    (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v6))))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2438 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2438 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2436 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v3 v4) v5)
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2436 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2436 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)
                                          (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4))
                                       v5))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2438 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2436 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2436 v0 v3
                                          (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4))
                                       (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v5))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2436 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2436 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3) v4)
                                       (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v5))))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2438 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2436 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2438 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v3 v4)
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2440 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4)))
                                    v5)
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2440 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2438 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2438 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v3 v4)
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2440 v0
                                             (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4)))
                                       v5)))
                              (coe v1 (coe v1 v3 v4) v5)
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du58
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Bundles.du74
                                    (let v6 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                                     coe
                                       MAlonzo.Code.Algebra.Bundles.du1052
                                       (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v6))))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2438 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2436 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2438 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v3 v4)
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2440 v0
                                             (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4)))
                                       v5)
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2440 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2438 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2438 v0
                                             (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v3 v4)
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d2440 v0
                                                (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4)))
                                          v5)))
                                 (coe
                                    v1
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2438 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v3 v4)
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2440 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4)))
                                    v5)
                                 (coe v1 (coe v1 v3 v4) v5)
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du58
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Bundles.du74
                                       (let v6 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                                        coe
                                          MAlonzo.Code.Algebra.Bundles.du1052
                                          (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v6))))
                                    (coe
                                       v1
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2438 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v3 v4)
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2440 v0
                                             (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4)))
                                       v5)
                                    (coe v1 (coe v1 v3 v4) v5) (coe v1 (coe v1 v3 v4) v5)
                                    (let v6
                                           = MAlonzo.Code.Relation.Binary.Structures.d34
                                               (coe
                                                  MAlonzo.Code.Relation.Binary.Bundles.d60
                                                  (let v6
                                                         = coe
                                                             MAlonzo.Code.Algebra.Bundles.du2502
                                                             (coe v0) in
                                                   coe
                                                     MAlonzo.Code.Algebra.Bundles.du1052
                                                     (coe
                                                        MAlonzo.Code.Algebra.Bundles.du1130
                                                        (coe v6)))) in
                                     let v7 = coe v1 (coe v1 v3 v4) v5 in
                                     coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                                       (coe v6 v7))
                                    (coe
                                       du1746 (coe v0) (coe v1) (coe v2) (coe v1 v3 v4)
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2438 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v3 v4)
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2440 v0
                                             (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4)))
                                       (coe v5) (coe v5) (coe v2 v3 v4)
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Structures.d34
                                          (MAlonzo.Code.Algebra.Structures.d708
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d770
                                                (coe
                                                   MAlonzo.Code.Algebra.Structures.d1686
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.d2446
                                                      (coe v0)))))
                                          v5)))
                                 (coe
                                    v2
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2438 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v3 v4)
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2440 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4)))
                                    v5))
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d720
                                 (MAlonzo.Code.Algebra.Structures.d770
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d1686
                                       (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2438 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2436 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v3 v4) v5)
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2436 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2436 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)
                                          (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4))
                                       v5))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2436 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2438 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v3 v4)
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2440 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4)))
                                    v5)
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2438 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2436 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2436 v0 v3
                                          (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4))
                                       (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v5))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2436 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2436 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3) v4)
                                       (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v5)))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2440 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2438 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2438 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v3 v4)
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2440 v0
                                             (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v3 v4)))
                                       v5))
                                 (coe du1878 (coe v0) (coe v3) (coe v4) (coe v5))
                                 (coe du1882 (coe v0) (coe v3) (coe v4) (coe v5))))
                           (coe
                              MAlonzo.Code.Algebra.Structures.d718
                              (MAlonzo.Code.Algebra.Structures.d770
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d1686
                                    (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2436 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v3 v4) v5)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2436 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2436 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)
                                    (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4))
                                 v5)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2438 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2436 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2436 v0 v3
                                       (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4))
                                    (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v5))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2436 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2436 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3) v4)
                                    (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v5)))))
                        (let v6 = MAlonzo.Code.Algebra.Bundles.d2446 (coe v0) in
                         let v7 = MAlonzo.Code.Algebra.Structures.d1686 (coe v6) in
                         coe
                           MAlonzo.Code.Algebra.Structures.du740
                           (coe MAlonzo.Code.Algebra.Structures.d770 (coe v7))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2436 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v3 v4) v5)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2438 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2436 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2436 v0 v3
                                    (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4))
                                 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v5))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2438 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2436 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2436 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)
                                       (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4))
                                    v5)
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2436 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2436 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3) v4)
                                    (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v5))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2438 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2436 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2436 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)
                                    (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4))
                                 v5)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2438 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2436 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2436 v0 v3
                                       (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4))
                                    (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v5))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2436 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2436 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3) v4)
                                    (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v5))))
                           (coe du1890 (coe v0) (coe v3) (coe v4) (coe v5))))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d718
                        (MAlonzo.Code.Algebra.Structures.d770
                           (coe
                              MAlonzo.Code.Algebra.Structures.d1686
                              (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v3 v4) v5)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2436 v0 v3
                              (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4))
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v5))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2436 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2436 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)
                                 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4))
                              v5)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2436 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2436 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3) v4)
                              (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v5)))))
                  (coe
                     MAlonzo.Code.Algebra.Structures.d720
                     (MAlonzo.Code.Algebra.Structures.d770
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1686
                           (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0 v3
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v4 v5)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2440 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v4 v5))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v3 v4) v5)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2436 v0 v3
                              (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4))
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v5)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2440 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0 v3
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2438 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v4 v5)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2440 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v4 v5)))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2436 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)
                              (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v4))
                           v5)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2436 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3) v4)
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v5)))
                     (coe du1884 (coe v0) (coe v3) (coe v4) (coe v5))
                     (coe du1888 (coe v0) (coe v3) (coe v4) (coe v5))))
               (coe
                  v2 v3
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v4 v5)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2440 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v4 v5)))))
            (coe
               du1746 (coe v0) (coe v1) (coe v2) (coe v3) (coe v3) (coe v1 v4 v5)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v4 v5)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2440 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v4 v5)))
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d34
                  (MAlonzo.Code.Algebra.Structures.d708
                     (coe
                        MAlonzo.Code.Algebra.Structures.d770
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1686
                           (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))))
                  v3)
               (coe v2 v4 v5))))
name1878 = "Algebra.Properties.BooleanAlgebra.XorRing._.lem₁"
d1878 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1878 v0 v1 v2 v3 v4 v5 v6 v7 = du1878 v2 v5 v6 v7
du1878 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1878 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du58
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du74
            (let v4 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du1052
               (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v4))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d2438 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2) v3)
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
               v3))
         (coe
            MAlonzo.Code.Algebra.Bundles.d2436 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2)))
            v3)
         (coe
            MAlonzo.Code.Algebra.Bundles.d2436 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2440 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)))
            v3)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du58
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du74
               (let v4 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du1052
                  (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v4))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2)))
               v3)
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2440 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)))
               v3)
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2440 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)))
               v3)
            (let v4
                   = MAlonzo.Code.Relation.Binary.Structures.d34
                       (coe
                          MAlonzo.Code.Relation.Binary.Bundles.d60
                          (let v4 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                           coe
                             MAlonzo.Code.Algebra.Bundles.du1052
                             (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v4)))) in
             let v5
                   = coe
                       MAlonzo.Code.Algebra.Bundles.d2436 v0
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d2438 v0
                          (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
                          (coe
                             MAlonzo.Code.Algebra.Bundles.d2440 v0
                             (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)))
                       v3 in
             coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
               (coe v4 v5))
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d1686
                       (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)) in
             coe
               MAlonzo.Code.Algebra.Structures.du752
               (coe MAlonzo.Code.Algebra.Structures.d770 (coe v4)) (coe v3)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2440 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2)))
               (let v5 = MAlonzo.Code.Algebra.Bundles.d2446 (coe v0) in
                let v6 = MAlonzo.Code.Algebra.Structures.d1686 (coe v5) in
                coe
                  MAlonzo.Code.Algebra.Structures.du740
                  (coe MAlonzo.Code.Algebra.Structures.d770 (coe v6))
                  (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2440 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                  (coe du1662 (coe v0) (coe v1) (coe v2)))))
         (let v4 = MAlonzo.Code.Algebra.Bundles.d2446 (coe v0) in
          coe
            MAlonzo.Code.Algebra.Structures.du814
            (MAlonzo.Code.Algebra.Structures.d1686 (coe v4)) v3
            (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))))
name1880 = "Algebra.Properties.BooleanAlgebra.XorRing._.lem₂'"
d1880 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1880 v0 v1 v2 v3 v4 v5 v6 v7 = du1880 v2 v5 v6
du1880 ::
  MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny -> AgdaAny
du1880 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du58
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du74
            (let v3 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du1052
               (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v3))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d2438 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2))
         (coe
            MAlonzo.Code.Algebra.Bundles.d2438 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (MAlonzo.Code.Algebra.Bundles.d2442 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2)
               (MAlonzo.Code.Algebra.Bundles.d2442 (coe v0))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d2440 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2440 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2))))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du58
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du74
               (let v3 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du1052
                  (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v3))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (MAlonzo.Code.Algebra.Bundles.d2442 (coe v0))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2)
                  (MAlonzo.Code.Algebra.Bundles.d2442 (coe v0))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v1)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2) v1))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2) v2)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2440 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2440 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2))))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du58
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.du74
                  (let v3 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                   coe
                     MAlonzo.Code.Algebra.Bundles.du1052
                     (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v3))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v1)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2) v1))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2) v2)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2440 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2440 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2))))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du58
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.du74
                     (let v3 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                      coe
                        MAlonzo.Code.Algebra.Bundles.du1052
                        (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v3))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                     (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2440 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2440 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2440 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2440 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2440 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2))))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du58
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.du74
                        (let v3 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                         coe
                           MAlonzo.Code.Algebra.Bundles.du1052
                           (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v3))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2440 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2440 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2440 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2440 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2440 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2440 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2440 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2))))
                     (let v3
                            = MAlonzo.Code.Relation.Binary.Structures.d34
                                (coe
                                   MAlonzo.Code.Relation.Binary.Bundles.d60
                                   (let v3 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                                    coe
                                      MAlonzo.Code.Algebra.Bundles.du1052
                                      (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v3)))) in
                      let v4
                            = coe
                                MAlonzo.Code.Algebra.Bundles.d2440 v0
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d2438 v0
                                   (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
                                   (coe
                                      MAlonzo.Code.Algebra.Bundles.d2440 v0
                                      (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2))) in
                      coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                        (coe v3 v4))
                     (coe
                        du1662 (coe v0) (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2440 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2))))
                  (coe
                     MAlonzo.Code.Algebra.Structures.d714
                     (MAlonzo.Code.Algebra.Structures.d770
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1686
                           (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2440 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2440 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2440 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)))
                     (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)
                     (coe du1682 (coe v0) (coe v1) (coe v2))
                     (coe
                        du1654 (coe v0)
                        (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2))))
               (coe
                  du1856 (coe v0) (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2) (coe v1) (coe v2)))
            (coe
               MAlonzo.Code.Algebra.Structures.d720
               (MAlonzo.Code.Algebra.Structures.d770
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1686
                     (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v1)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2) v1))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (MAlonzo.Code.Algebra.Bundles.d2442 (coe v0))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2) v2))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2)
                  (MAlonzo.Code.Algebra.Bundles.d2442 (coe v0)))
               (coe
                  MAlonzo.Code.Algebra.Structures.d720
                  (MAlonzo.Code.Algebra.Structures.d770
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1686
                        (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v1)
                  (MAlonzo.Code.Algebra.Bundles.d2442 (coe v0))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2) v1)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                  (coe du1570 v0 v1)
                  (coe
                     MAlonzo.Code.Algebra.Structures.d710
                     (MAlonzo.Code.Algebra.Structures.d770
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1686
                           (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2) v1))
               (let v3
                      = MAlonzo.Code.Algebra.Structures.d1686
                          (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)) in
                coe
                  MAlonzo.Code.Algebra.Structures.du740
                  (coe MAlonzo.Code.Algebra.Structures.d770 (coe v3))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2) v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d2442 (coe v0))
                  (coe du1570 v0 v2))))
         (coe
            MAlonzo.Code.Algebra.Structures.d720
            (MAlonzo.Code.Algebra.Structures.d770
               (coe
                  MAlonzo.Code.Algebra.Structures.d1686
                  (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (MAlonzo.Code.Algebra.Bundles.d2442 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2)
               (MAlonzo.Code.Algebra.Bundles.d2442 (coe v0)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2)
            (coe
               du1586 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2)))
            (coe
               du1582 (coe v0)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2))))
name1882 = "Algebra.Properties.BooleanAlgebra.XorRing._.lem₂"
d1882 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1882 v0 v1 v2 v3 v4 v5 v6 v7 = du1882 v2 v5 v6 v7
du1882 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1882 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du58
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du74
            (let v4 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du1052
               (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v4))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d2438 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2)
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d2436 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2))
            (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))
         (coe
            MAlonzo.Code.Algebra.Bundles.d2440 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2440 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)))
               v3))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du74
               (let v4 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du1052
                  (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v4))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2))
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2440 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2440 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2))))
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2440 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2440 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)))
                  v3))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du58
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.du74
                  (let v4 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                   coe
                     MAlonzo.Code.Algebra.Bundles.du1052
                     (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v4))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2440 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2440 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2))))
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2440 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2440 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)))
                     v3))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2440 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2440 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)))
                     v3))
               (let v4
                      = MAlonzo.Code.Relation.Binary.Structures.d34
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d60
                             (let v4 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                              coe
                                MAlonzo.Code.Algebra.Bundles.du1052
                                (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v4)))) in
                let v5
                      = coe
                          MAlonzo.Code.Algebra.Bundles.d2440 v0
                          (coe
                             MAlonzo.Code.Algebra.Bundles.d2438 v0
                             (coe
                                MAlonzo.Code.Algebra.Bundles.d2438 v0
                                (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d2440 v0
                                   (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)))
                             v3) in
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                  (coe v4 v5))
               (coe
                  du1662 (coe v0)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2440 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)))
                  (coe v3)))
            (let v4 = MAlonzo.Code.Algebra.Bundles.d2446 (coe v0) in
             let v5 = MAlonzo.Code.Algebra.Structures.d1686 (coe v4) in
             coe
               MAlonzo.Code.Algebra.Structures.du752
               (coe MAlonzo.Code.Algebra.Structures.d770 (coe v5))
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2440 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2440 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2))))
               (coe du1880 (coe v0) (coe v1) (coe v2))))
         (let v4 = MAlonzo.Code.Algebra.Bundles.d2446 (coe v0) in
          coe
            MAlonzo.Code.Algebra.Structures.du814
            (MAlonzo.Code.Algebra.Structures.d1686 (coe v4))
            (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2)))
name1884 = "Algebra.Properties.BooleanAlgebra.XorRing._.lem₃"
d1884 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1884 v0 v1 v2 v3 v4 v5 v6 v7 = du1884 v2 v5 v6 v7
du1884 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1884 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du74
            (let v4 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du1052
               (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v4))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v2 v3)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2440 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v2 v3))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v2 v3)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d2438 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2) v3)
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du74
               (let v4 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du1052
                  (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v4))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v2 v3)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2)
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v2 v3))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2)
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2) v3)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du58
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.du74
                  (let v4 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                   coe
                     MAlonzo.Code.Algebra.Bundles.du1052
                     (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v4))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v2 v3))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2)
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2) v3)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2) v3)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)))
               (let v4
                      = MAlonzo.Code.Relation.Binary.Structures.d34
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d60
                             (let v4 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                              coe
                                MAlonzo.Code.Algebra.Bundles.du1052
                                (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v4)))) in
                let v5
                      = coe
                          MAlonzo.Code.Algebra.Bundles.d2438 v0
                          (coe
                             MAlonzo.Code.Algebra.Bundles.d2436 v0
                             (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2) v3)
                          (coe
                             MAlonzo.Code.Algebra.Bundles.d2436 v0
                             (coe
                                MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                                (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                             (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)) in
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                  (coe v4 v5))
               (coe
                  MAlonzo.Code.Algebra.Structures.d720
                  (MAlonzo.Code.Algebra.Structures.d770
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1686
                        (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2) v3)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v2 v3))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2)
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.d712
                     (MAlonzo.Code.Algebra.Structures.d770
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1686
                           (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
                     v1 v2 v3)
                  (coe
                     MAlonzo.Code.Algebra.Structures.d712
                     (MAlonzo.Code.Algebra.Structures.d770
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1686
                           (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
                     v1 (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2)
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))))
            (coe
               MAlonzo.Code.Algebra.Properties.DistributiveLattice.du288
               (coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0)) v1
               (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v2 v3)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))))
         (let v4
                = MAlonzo.Code.Algebra.Structures.d1686
                    (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)) in
          coe
            MAlonzo.Code.Algebra.Structures.du748
            (coe MAlonzo.Code.Algebra.Structures.d770 (coe v4)) (coe v1)
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v2 v3)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2440 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v2 v3)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v2 v3)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)))
            (let v5
                   = MAlonzo.Code.Algebra.Structures.d1686
                       (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)) in
             coe
               MAlonzo.Code.Algebra.Structures.du740
               (coe MAlonzo.Code.Algebra.Structures.d770 (coe v5))
               (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v2 v3)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2440 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v2 v3))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))
               (coe du1662 (coe v0) (coe v2) (coe v3)))))
name1886 = "Algebra.Properties.BooleanAlgebra.XorRing._.lem₄'"
d1886 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1886 v0 v1 v2 v3 v4 v5 v6 v7 = du1886 v2 v6 v7
du1886 ::
  MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny -> AgdaAny
du1886 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du74
            (let v3 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du1052
               (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v3))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d2440 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2440 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d2436 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d2440 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2440 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2440 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d2438 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du74
               (let v3 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du1052
                  (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v3))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2440 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2440 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2440 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
               (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.du74
                  (let v3 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                   coe
                     MAlonzo.Code.Algebra.Bundles.du1052
                     (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v3))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v1)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2) v1))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2) v2)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.du74
                     (let v3 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                      coe
                        MAlonzo.Code.Algebra.Bundles.du1052
                        (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v3))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v1)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2) v1))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2) v2)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0
                        (MAlonzo.Code.Algebra.Bundles.d2442 (coe v0))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2)
                        (MAlonzo.Code.Algebra.Bundles.d2442 (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.du74
                        (let v3 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                         coe
                           MAlonzo.Code.Algebra.Bundles.du1052
                           (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v3))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0
                           (MAlonzo.Code.Algebra.Bundles.d2442 (coe v0))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                              (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2)))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2436 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2)
                           (MAlonzo.Code.Algebra.Bundles.d2442 (coe v0))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2))
                     (let v3
                            = MAlonzo.Code.Relation.Binary.Structures.d34
                                (coe
                                   MAlonzo.Code.Relation.Binary.Bundles.d60
                                   (let v3 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                                    coe
                                      MAlonzo.Code.Algebra.Bundles.du1052
                                      (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v3)))) in
                      let v4
                            = coe
                                MAlonzo.Code.Algebra.Bundles.d2438 v0
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                                   (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d2436 v0
                                   (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2) in
                      coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                        (coe v3 v4))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d720
                        (MAlonzo.Code.Algebra.Structures.d770
                           (coe
                              MAlonzo.Code.Algebra.Structures.d1686
                              (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0
                           (MAlonzo.Code.Algebra.Bundles.d2442 (coe v0))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                              (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2)))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2438 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2436 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2)
                           (MAlonzo.Code.Algebra.Bundles.d2442 (coe v0)))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2)
                        (coe
                           du1586 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                              (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2)))
                        (coe
                           du1582 (coe v0)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2436 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2))))
                  (coe
                     MAlonzo.Code.Algebra.Structures.d720
                     (MAlonzo.Code.Algebra.Structures.d770
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1686
                           (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v1)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2) v1))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0
                        (MAlonzo.Code.Algebra.Bundles.d2442 (coe v0))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2) v2))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2)
                        (MAlonzo.Code.Algebra.Bundles.d2442 (coe v0)))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d720
                        (MAlonzo.Code.Algebra.Structures.d770
                           (coe
                              MAlonzo.Code.Algebra.Structures.d1686
                              (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v1)
                        (MAlonzo.Code.Algebra.Bundles.d2442 (coe v0))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2) v1)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                        (coe du1570 v0 v1)
                        (coe
                           MAlonzo.Code.Algebra.Structures.d710
                           (MAlonzo.Code.Algebra.Structures.d770
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d1686
                                 (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2) v1))
                     (let v3
                            = MAlonzo.Code.Algebra.Structures.d1686
                                (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)) in
                      coe
                        MAlonzo.Code.Algebra.Structures.du740
                        (coe MAlonzo.Code.Algebra.Structures.d770 (coe v3))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2) v2)
                        (coe MAlonzo.Code.Algebra.Bundles.d2442 (coe v0))
                        (coe du1570 v0 v2))))
               (coe
                  du1856 (coe v0) (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2) (coe v1) (coe v2)))
            (coe
               MAlonzo.Code.Algebra.Structures.d714
               (MAlonzo.Code.Algebra.Structures.d770
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1686
                     (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2440 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2440 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2440 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)))
               (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)
               (coe du1682 (coe v0) (coe v1) (coe v2))
               (coe
                  du1654 (coe v0)
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2))))
         (coe
            du1662 (coe v0) (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
            (coe
               MAlonzo.Code.Algebra.Bundles.d2440 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2))))
name1888 = "Algebra.Properties.BooleanAlgebra.XorRing._.lem₄"
d1888 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1888 v0 v1 v2 v3 v4 v5 v6 v7 = du1888 v2 v5 v6 v7
du1888 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1888 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du74
            (let v4 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du1052
               (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v4))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d2440 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0 v1
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v2 v3)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2440 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v2 v3)))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d2436 v0
            (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
            (coe
               MAlonzo.Code.Algebra.Bundles.d2440 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v2 v3)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2440 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v2 v3)))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d2438 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
               v3)
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2)
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du74
               (let v4 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du1052
                  (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v4))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2440 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v2 v3)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2440 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v2 v3)))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0 v2
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2) v3)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                  v3)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.du74
                  (let v4 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                   coe
                     MAlonzo.Code.Algebra.Bundles.du1052
                     (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v4))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0 v2
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2) v3)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0 v2
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2) v3)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                     v3)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2)
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du58
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.du74
                     (let v4 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                      coe
                        MAlonzo.Code.Algebra.Bundles.du1052
                        (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v4))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0 v2
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2) v3)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2)
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                        v3))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                        v3)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2)
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.du74
                        (let v4 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                         coe
                           MAlonzo.Code.Algebra.Bundles.du1052
                           (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v4))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2436 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2)
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2436 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                              (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                           v3))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2436 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                              (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                           v3)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2436 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2)
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2438 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2436 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                              (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                           v3)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2436 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2)
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)))
                     (let v4
                            = MAlonzo.Code.Relation.Binary.Structures.d34
                                (coe
                                   MAlonzo.Code.Relation.Binary.Bundles.d60
                                   (let v4 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                                    coe
                                      MAlonzo.Code.Algebra.Bundles.du1052
                                      (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v4)))) in
                      let v5
                            = coe
                                MAlonzo.Code.Algebra.Bundles.d2438 v0
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d2436 v0
                                   (coe
                                      MAlonzo.Code.Algebra.Bundles.d2436 v0
                                      (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                                      (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                                   v3)
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d2436 v0
                                   (coe
                                      MAlonzo.Code.Algebra.Bundles.d2436 v0
                                      (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2)
                                   (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)) in
                      coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                        (coe v4 v5))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d716
                        (MAlonzo.Code.Algebra.Structures.d770
                           (coe
                              MAlonzo.Code.Algebra.Structures.d1686
                              (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2436 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2)
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2436 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                              (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                           v3)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.d720
                     (MAlonzo.Code.Algebra.Structures.d770
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1686
                           (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2)
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0 v2
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                        v3)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2) v3))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d712
                        (MAlonzo.Code.Algebra.Structures.d770
                           (coe
                              MAlonzo.Code.Algebra.Structures.d1686
                              (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d712
                        (MAlonzo.Code.Algebra.Structures.d770
                           (coe
                              MAlonzo.Code.Algebra.Structures.d1686
                              (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2) v3)))
               (coe
                  MAlonzo.Code.Algebra.Properties.DistributiveLattice.du288
                  (coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0))
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0 v2
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2) v3)))
            (let v4 = MAlonzo.Code.Algebra.Bundles.d2446 (coe v0) in
             let v5 = MAlonzo.Code.Algebra.Structures.d1686 (coe v4) in
             coe
               MAlonzo.Code.Algebra.Structures.du748
               (coe MAlonzo.Code.Algebra.Structures.d770 (coe v5))
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2440 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v2 v3)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2440 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v2 v3))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0 v2
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2) v3))
               (coe du1886 (coe v0) (coe v2) (coe v3))))
         (coe
            du1662 (coe v0) (coe v1)
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v2 v3)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2440 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v2 v3)))))
name1890 = "Algebra.Properties.BooleanAlgebra.XorRing._.lem₅"
d1890 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1890 v0 v1 v2 v3 v4 v5 v6 v7 = du1890 v2 v5 v6 v7
du1890 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1890 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du58
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du74
            (let v4 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du1052
               (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v4))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d2438 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                  v3)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d2438 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                  v3))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2)
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d2438 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
               v3)
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du74
               (let v4 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du1052
                  (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v4))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                     v3))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                     v3)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2438 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                  v3)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2)
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.du74
                  (let v4 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                   coe
                     MAlonzo.Code.Algebra.Bundles.du1052
                     (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v4))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                        v3)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2)
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                     v3)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2)
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                     v3)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2438 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2436 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2)
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))))
               (let v4
                      = MAlonzo.Code.Relation.Binary.Structures.d34
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d60
                             (let v4 = coe MAlonzo.Code.Algebra.Bundles.du2502 (coe v0) in
                              coe
                                MAlonzo.Code.Algebra.Bundles.du1052
                                (coe MAlonzo.Code.Algebra.Bundles.du1130 (coe v4)))) in
                let v5
                      = coe
                          MAlonzo.Code.Algebra.Bundles.d2438 v0
                          (coe
                             MAlonzo.Code.Algebra.Bundles.d2436 v0
                             (coe
                                MAlonzo.Code.Algebra.Bundles.d2436 v0
                                (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                                (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                             v3)
                          (coe
                             MAlonzo.Code.Algebra.Bundles.d2438 v0
                             (coe
                                MAlonzo.Code.Algebra.Bundles.d2436 v0
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                                   (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                                (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))
                             (coe
                                MAlonzo.Code.Algebra.Bundles.d2436 v0
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d2436 v0
                                   (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2)
                                (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))) in
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                  (coe v4 v5))
               (coe
                  MAlonzo.Code.Algebra.Structures.d718
                  (MAlonzo.Code.Algebra.Structures.d770
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1686
                        (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                     v3)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2)
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))))
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d1686
                       (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)) in
             coe
               MAlonzo.Code.Algebra.Structures.du744
               (coe MAlonzo.Code.Algebra.Structures.d770 (coe v4))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                     v3))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2438 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                     v3)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3)))
               (coe
                  MAlonzo.Code.Algebra.Structures.d716
                  (MAlonzo.Code.Algebra.Structures.d770
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1686
                        (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                     (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2436 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2436 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                        (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
                     v3))))
         (coe
            MAlonzo.Code.Algebra.Structures.d718
            (MAlonzo.Code.Algebra.Structures.d770
               (coe
                  MAlonzo.Code.Algebra.Structures.d1686
                  (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v2))
               v3)
            (coe
               MAlonzo.Code.Algebra.Bundles.d2436 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2436 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v1) v2)
               (coe MAlonzo.Code.Algebra.Bundles.d2440 v0 v3))))
name1892 = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-isMagma"
d1892 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T80
d1892 v0 v1 v2 v3 v4 = du1892 v2 v3 v4
du1892 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T80
du1892 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C423
      (coe
         MAlonzo.Code.Algebra.Structures.d708
         (coe
            MAlonzo.Code.Algebra.Structures.d770
            (coe
               MAlonzo.Code.Algebra.Structures.d1686
               (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))))
      (coe du1746 (coe v0) (coe v1) (coe v2))
name1894
  = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-isSemigroup"
d1894 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T116
d1894 v0 v1 v2 v3 v4 = du1894 v2 v3 v4
du1894 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T116
du1894 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C1721
      (coe du1892 (coe v0) (coe v1) (coe v2))
      (coe du1866 (coe v0) (coe v1) (coe v2))
name1896 = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-⊥-isMonoid"
d1896 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T314
d1896 v0 v1 v2 v3 v4 = du1896 v2 v3 v4
du1896 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T314
du1896 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C4201
      (coe du1894 (coe v0) (coe v1) (coe v2))
      (coe du1816 (coe v0) (coe v1) (coe v2))
name1898 = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-⊥-isGroup"
d1898 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T528
d1898 v0 v1 v2 v3 v4 = du1898 v2 v3 v4
du1898 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T528
du1898 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C7191
      (coe du1896 (coe v0) (coe v1) (coe v2))
      (coe du1824 (coe v0) (coe v1) (coe v2)) (coe (\ v3 v4 v5 -> v5))
name1900
  = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-⊥-isAbelianGroup"
d1900 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T610
d1900 v0 v1 v2 v3 v4 = du1900 v2 v3 v4
du1900 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T610
du1900 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C10103
      (coe du1898 (coe v0) (coe v1) (coe v2))
      (coe du1760 (coe v0) (coe v1) (coe v2))
name1902 = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-∧-isRing"
d1902 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T1394
d1902 v0 v1 v2 v3 v4 = du1902 v2 v3 v4
du1902 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T1394
du1902 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C25405
      (coe du1900 (coe v0) (coe v1) (coe v2)) (coe du1618 (coe v0))
      (coe du1846 (coe v0) (coe v1) (coe v2)) (coe du1604 (coe v0))
name1904
  = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-∧-isCommutativeRing"
d1904 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T1528
d1904 v0 v1 v2 v3 v4 = du1904 v2 v3 v4
du1904 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T1528
du1904 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C28699
      (coe du1902 (coe v0) (coe v1) (coe v2))
      (coe
         MAlonzo.Code.Algebra.Structures.d716
         (coe
            MAlonzo.Code.Algebra.Structures.d770
            (coe
               MAlonzo.Code.Algebra.Structures.d1686
               (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))))
name1906
  = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-∧-commutativeRing"
d1906 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Bundles.T2210
d1906 v0 v1 v2 v3 v4 = du1906 v2 v3 v4
du1906 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Bundles.T2210
du1906 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Bundles.C25105 v1
      (MAlonzo.Code.Algebra.Bundles.d2438 (coe v0)) (\ v3 -> v3)
      (MAlonzo.Code.Algebra.Bundles.d2444 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d2442 (coe v0))
      (coe du1904 (coe v0) (coe v1) (coe v2))
name1908 = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-¬-distribˡ"
d1908 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d1908 v0 v1 v2 v3 v4 = du1908 v2 v3 v4
du1908 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du1908 v0 v1 v2 = coe du1770 (coe v0) (coe v1) (coe v2)
name1910 = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-¬-distribʳ"
d1910 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d1910 v0 v1 v2 v3 v4 = du1910 v2 v3 v4
du1910 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du1910 v0 v1 v2 = coe du1794 (coe v0) (coe v1) (coe v2)
name1912
  = "Algebra.Properties.BooleanAlgebra.XorRing.isCommutativeRing"
d1912 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T1528
d1912 v0 v1 v2 v3 v4 = du1912 v2 v3 v4
du1912 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T1528
du1912 v0 v1 v2 = coe du1904 (coe v0) (coe v1) (coe v2)
name1914
  = "Algebra.Properties.BooleanAlgebra.XorRing.commutativeRing"
d1914 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Bundles.T2210
d1914 v0 v1 v2 v3 v4 = du1914 v2 v3 v4
du1914 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Bundles.T2210
du1914 v0 v1 v2 = coe du1906 (coe v0) (coe v1) (coe v2)
name1916 = "Algebra.Properties.BooleanAlgebra._⊕_"
d1916 ::
  MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny -> AgdaAny
d1916 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Bundles.d2438 v0
      (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
      (coe
         MAlonzo.Code.Algebra.Bundles.d2440 v0
         (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2))
name1928
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.commutativeRing"
d1928 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Bundles.T2210
d1928 v0 v1 v2 = du1928 v2
du1928 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Bundles.T2210
du1928 v0
  = coe
      du1914 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Bundles.d2438 v0
              (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d2440 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d34
              (MAlonzo.Code.Algebra.Structures.d708
                 (coe
                    MAlonzo.Code.Algebra.Structures.d770
                    (coe
                       MAlonzo.Code.Algebra.Structures.d1686
                       (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d2438 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2440 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)))))
name1930
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.isCommutativeRing"
d1930 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Structures.T1528
d1930 v0 v1 v2 = du1930 v2
du1930 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Structures.T1528
du1930 v0
  = coe
      du1912 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Bundles.d2438 v0
              (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d2440 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d34
              (MAlonzo.Code.Algebra.Structures.d708
                 (coe
                    MAlonzo.Code.Algebra.Structures.d770
                    (coe
                       MAlonzo.Code.Algebra.Structures.d1686
                       (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d2438 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2440 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)))))
name1932
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.¬-distribʳ-⊕"
d1932 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny -> AgdaAny
d1932 v0 v1 v2 = du1932 v2
du1932 ::
  MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny -> AgdaAny
du1932 v0
  = coe
      du1794 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Bundles.d2438 v0
              (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d2440 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d34
              (MAlonzo.Code.Algebra.Structures.d708
                 (coe
                    MAlonzo.Code.Algebra.Structures.d770
                    (coe
                       MAlonzo.Code.Algebra.Structures.d1686
                       (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d2438 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2440 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)))))
name1934
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.¬-distribˡ-⊕"
d1934 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny -> AgdaAny
d1934 v0 v1 v2 = du1934 v2
du1934 ::
  MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny -> AgdaAny
du1934 v0
  = coe
      du1770 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Bundles.d2438 v0
              (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d2440 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d34
              (MAlonzo.Code.Algebra.Structures.d708
                 (coe
                    MAlonzo.Code.Algebra.Structures.d770
                    (coe
                       MAlonzo.Code.Algebra.Structures.d1686
                       (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d2438 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2440 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)))))
name1936
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.∧-distrib-⊕"
d1936 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d1936 v0 v1 v2 = du1936 v2
du1936 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du1936 v0
  = coe
      du1846 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Bundles.d2438 v0
              (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d2440 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d34
              (MAlonzo.Code.Algebra.Structures.d708
                 (coe
                    MAlonzo.Code.Algebra.Structures.d770
                    (coe
                       MAlonzo.Code.Algebra.Structures.d1686
                       (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d2438 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2440 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)))))
name1938
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.∧-distribʳ-⊕"
d1938 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1938 v0 v1 v2 = du1938 v2
du1938 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1938 v0
  = coe
      du1844 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Bundles.d2438 v0
              (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d2440 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d34
              (MAlonzo.Code.Algebra.Structures.d708
                 (coe
                    MAlonzo.Code.Algebra.Structures.d770
                    (coe
                       MAlonzo.Code.Algebra.Structures.d1686
                       (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d2438 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2440 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)))))
name1940
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.∧-distribˡ-⊕"
d1940 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1940 v0 v1 v2 = du1940 v2
du1940 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1940 v0
  = coe
      du1826 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Bundles.d2438 v0
              (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d2440 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d34
              (MAlonzo.Code.Algebra.Structures.d708
                 (coe
                    MAlonzo.Code.Algebra.Structures.d770
                    (coe
                       MAlonzo.Code.Algebra.Structures.d1686
                       (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d2438 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2440 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)))))
name1942
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-annihilates-¬"
d1942 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny -> AgdaAny
d1942 v0 v1 v2 = du1942 v2
du1942 ::
  MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny -> AgdaAny
du1942 v0
  = coe
      du1804 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Bundles.d2438 v0
              (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d2440 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d34
              (MAlonzo.Code.Algebra.Structures.d708
                 (coe
                    MAlonzo.Code.Algebra.Structures.d770
                    (coe
                       MAlonzo.Code.Algebra.Structures.d1686
                       (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d2438 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2440 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)))))
name1944
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-assoc"
d1944 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1944 v0 v1 v2 = du1944 v2
du1944 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1944 v0
  = coe
      du1866 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Bundles.d2438 v0
              (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d2440 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d34
              (MAlonzo.Code.Algebra.Structures.d708
                 (coe
                    MAlonzo.Code.Algebra.Structures.d770
                    (coe
                       MAlonzo.Code.Algebra.Structures.d1686
                       (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d2438 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2440 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)))))
name1946
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-comm"
d1946 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny -> AgdaAny
d1946 v0 v1 v2 = du1946 v2
du1946 ::
  MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny -> AgdaAny
du1946 v0
  = coe
      du1760 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Bundles.d2438 v0
              (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d2440 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d34
              (MAlonzo.Code.Algebra.Structures.d708
                 (coe
                    MAlonzo.Code.Algebra.Structures.d770
                    (coe
                       MAlonzo.Code.Algebra.Structures.d1686
                       (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d2438 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2440 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)))))
name1948
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-cong"
d1948 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1948 v0 v1 v2 = du1948 v2
du1948 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1948 v0
  = coe
      du1746 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Bundles.d2438 v0
              (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d2440 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d34
              (MAlonzo.Code.Algebra.Structures.d708
                 (coe
                    MAlonzo.Code.Algebra.Structures.d770
                    (coe
                       MAlonzo.Code.Algebra.Structures.d1686
                       (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d2438 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2440 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)))))
name1950
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-identity"
d1950 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d1950 v0 v1 v2 = du1950 v2
du1950 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du1950 v0
  = coe
      du1816 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Bundles.d2438 v0
              (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d2440 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d34
              (MAlonzo.Code.Algebra.Structures.d708
                 (coe
                    MAlonzo.Code.Algebra.Structures.d770
                    (coe
                       MAlonzo.Code.Algebra.Structures.d1686
                       (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d2438 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2440 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)))))
name1952
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-identityʳ"
d1952 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny
d1952 v0 v1 v2 = du1952 v2
du1952 :: MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny
du1952 v0
  = coe
      du1814 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Bundles.d2438 v0
              (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d2440 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d34
              (MAlonzo.Code.Algebra.Structures.d708
                 (coe
                    MAlonzo.Code.Algebra.Structures.d770
                    (coe
                       MAlonzo.Code.Algebra.Structures.d1686
                       (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d2438 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2440 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)))))
name1954
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-identityˡ"
d1954 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny
d1954 v0 v1 v2 = du1954 v2
du1954 :: MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny
du1954 v0
  = coe
      du1810 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Bundles.d2438 v0
              (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d2440 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d34
              (MAlonzo.Code.Algebra.Structures.d708
                 (coe
                    MAlonzo.Code.Algebra.Structures.d770
                    (coe
                       MAlonzo.Code.Algebra.Structures.d1686
                       (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d2438 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2440 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)))))
name1956
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-inverse"
d1956 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d1956 v0 v1 v2 = du1956 v2
du1956 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du1956 v0
  = coe
      du1824 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Bundles.d2438 v0
              (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d2440 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d34
              (MAlonzo.Code.Algebra.Structures.d708
                 (coe
                    MAlonzo.Code.Algebra.Structures.d770
                    (coe
                       MAlonzo.Code.Algebra.Structures.d1686
                       (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d2438 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2440 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)))))
name1958
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-inverseʳ"
d1958 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny
d1958 v0 v1 v2 = du1958 v2
du1958 :: MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny
du1958 v0
  = coe
      du1822 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Bundles.d2438 v0
              (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d2440 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d34
              (MAlonzo.Code.Algebra.Structures.d708
                 (coe
                    MAlonzo.Code.Algebra.Structures.d770
                    (coe
                       MAlonzo.Code.Algebra.Structures.d1686
                       (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d2438 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2440 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)))))
name1960
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-inverseˡ"
d1960 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny
d1960 v0 v1 v2 = du1960 v2
du1960 :: MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny
du1960 v0
  = coe
      du1818 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Bundles.d2438 v0
              (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d2440 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d34
              (MAlonzo.Code.Algebra.Structures.d708
                 (coe
                    MAlonzo.Code.Algebra.Structures.d770
                    (coe
                       MAlonzo.Code.Algebra.Structures.d1686
                       (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d2438 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2440 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)))))
name1962
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-isMagma"
d1962 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Structures.T80
d1962 v0 v1 v2 = du1962 v2
du1962 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Structures.T80
du1962 v0
  = coe
      du1892 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Bundles.d2438 v0
              (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d2440 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d34
              (MAlonzo.Code.Algebra.Structures.d708
                 (coe
                    MAlonzo.Code.Algebra.Structures.d770
                    (coe
                       MAlonzo.Code.Algebra.Structures.d1686
                       (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d2438 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2440 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)))))
name1964
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-isSemigroup"
d1964 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Structures.T116
d1964 v0 v1 v2 = du1964 v2
du1964 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Structures.T116
du1964 v0
  = coe
      du1894 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Bundles.d2438 v0
              (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d2440 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d34
              (MAlonzo.Code.Algebra.Structures.d708
                 (coe
                    MAlonzo.Code.Algebra.Structures.d770
                    (coe
                       MAlonzo.Code.Algebra.Structures.d1686
                       (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d2438 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2440 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)))))
name1966
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-¬-distribʳ"
d1966 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny -> AgdaAny
d1966 v0 v1 v2 = du1966 v2
du1966 ::
  MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny -> AgdaAny
du1966 v0
  = coe
      du1910 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Bundles.d2438 v0
              (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d2440 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d34
              (MAlonzo.Code.Algebra.Structures.d708
                 (coe
                    MAlonzo.Code.Algebra.Structures.d770
                    (coe
                       MAlonzo.Code.Algebra.Structures.d1686
                       (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d2438 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2440 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)))))
name1968
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-¬-distribˡ"
d1968 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny -> AgdaAny
d1968 v0 v1 v2 = du1968 v2
du1968 ::
  MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny -> AgdaAny -> AgdaAny
du1968 v0
  = coe
      du1908 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Bundles.d2438 v0
              (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d2440 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d34
              (MAlonzo.Code.Algebra.Structures.d708
                 (coe
                    MAlonzo.Code.Algebra.Structures.d770
                    (coe
                       MAlonzo.Code.Algebra.Structures.d1686
                       (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d2438 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2440 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)))))
name1970
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-∧-commutativeRing"
d1970 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Bundles.T2210
d1970 v0 v1 v2 = du1970 v2
du1970 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Bundles.T2210
du1970 v0
  = coe
      du1906 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Bundles.d2438 v0
              (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d2440 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d34
              (MAlonzo.Code.Algebra.Structures.d708
                 (coe
                    MAlonzo.Code.Algebra.Structures.d770
                    (coe
                       MAlonzo.Code.Algebra.Structures.d1686
                       (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d2438 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2440 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)))))
name1972
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-∧-isCommutativeRing"
d1972 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Structures.T1528
d1972 v0 v1 v2 = du1972 v2
du1972 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Structures.T1528
du1972 v0
  = coe
      du1904 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Bundles.d2438 v0
              (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d2440 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d34
              (MAlonzo.Code.Algebra.Structures.d708
                 (coe
                    MAlonzo.Code.Algebra.Structures.d770
                    (coe
                       MAlonzo.Code.Algebra.Structures.d1686
                       (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d2438 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2440 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)))))
name1974
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-∧-isRing"
d1974 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Structures.T1394
d1974 v0 v1 v2 = du1974 v2
du1974 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Structures.T1394
du1974 v0
  = coe
      du1902 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Bundles.d2438 v0
              (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d2440 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d34
              (MAlonzo.Code.Algebra.Structures.d708
                 (coe
                    MAlonzo.Code.Algebra.Structures.d770
                    (coe
                       MAlonzo.Code.Algebra.Structures.d1686
                       (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d2438 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2440 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)))))
name1976
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-⊥-isAbelianGroup"
d1976 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Structures.T610
d1976 v0 v1 v2 = du1976 v2
du1976 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Structures.T610
du1976 v0
  = coe
      du1900 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Bundles.d2438 v0
              (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d2440 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d34
              (MAlonzo.Code.Algebra.Structures.d708
                 (coe
                    MAlonzo.Code.Algebra.Structures.d770
                    (coe
                       MAlonzo.Code.Algebra.Structures.d1686
                       (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d2438 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2440 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)))))
name1978
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-⊥-isGroup"
d1978 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Structures.T528
d1978 v0 v1 v2 = du1978 v2
du1978 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Structures.T528
du1978 v0
  = coe
      du1898 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Bundles.d2438 v0
              (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d2440 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d34
              (MAlonzo.Code.Algebra.Structures.d708
                 (coe
                    MAlonzo.Code.Algebra.Structures.d770
                    (coe
                       MAlonzo.Code.Algebra.Structures.d1686
                       (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d2438 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2440 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)))))
name1980
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-⊥-isMonoid"
d1980 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Structures.T314
d1980 v0 v1 v2 = du1980 v2
du1980 ::
  MAlonzo.Code.Algebra.Bundles.T2410 ->
  MAlonzo.Code.Algebra.Structures.T314
du1980 v0
  = coe
      du1896 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Bundles.d2438 v0
              (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d2440 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d34
              (MAlonzo.Code.Algebra.Structures.d708
                 (coe
                    MAlonzo.Code.Algebra.Structures.d770
                    (coe
                       MAlonzo.Code.Algebra.Structures.d1686
                       (coe MAlonzo.Code.Algebra.Bundles.d2446 (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d2438 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2436 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2440 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2438 v0 v1 v2)))))
name1982 = "Algebra.Properties.BooleanAlgebra.¬⊥=⊤"
d1982 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny
d1982 v0 v1 v2 = du1982 v2
du1982 :: MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny
du1982 v0 = coe du1650 (coe v0)
name1984 = "Algebra.Properties.BooleanAlgebra.¬⊤=⊥"
d1984 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny
d1984 v0 v1 v2 = du1984 v2
du1984 :: MAlonzo.Code.Algebra.Bundles.T2410 -> AgdaAny
du1984 v0 = coe du1652 (coe v0)
