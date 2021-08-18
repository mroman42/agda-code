{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Algebra.Properties.Lattice where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Properties.Semilattice
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Function.Equality
import qualified MAlonzo.Code.Function.Equivalence
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Construct.NaturalOrder.Left
import qualified MAlonzo.Code.Relation.Binary.Lattice
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial
import qualified MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid
import qualified MAlonzo.Code.Relation.Binary.Structures

name68 = "Algebra.Properties.Lattice._.IsBand"
d68 a0 a1 a2 a3 = ()
name90 = "Algebra.Properties.Lattice._.IsLattice"
d90 a0 a1 a2 a3 a4 = ()
name92 = "Algebra.Properties.Lattice._.IsMagma"
d92 a0 a1 a2 a3 = ()
name102 = "Algebra.Properties.Lattice._.IsSemigroup"
d102 a0 a1 a2 a3 = ()
name104 = "Algebra.Properties.Lattice._.IsSemilattice"
d104 a0 a1 a2 a3 = ()
name1356 = "Algebra.Properties.Lattice._.Idempotent"
d1356 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T986 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1356 = erased
name1422 = "Algebra.Properties.Lattice.∧-idem"
d1422 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T986 -> AgdaAny -> AgdaAny
d1422 v0 v1 v2 v3 = du1422 v2 v3
du1422 :: MAlonzo.Code.Algebra.Bundles.T986 -> AgdaAny -> AgdaAny
du1422 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du74
            (coe MAlonzo.Code.Algebra.Bundles.du1052 (coe v0)))
         (coe MAlonzo.Code.Algebra.Bundles.d1008 v0 v1 v1)
         (coe
            MAlonzo.Code.Algebra.Bundles.d1008 v0 v1
            (coe
               MAlonzo.Code.Algebra.Bundles.d1006 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d1008 v0 v1 v1)))
         v1
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du74
               (coe MAlonzo.Code.Algebra.Bundles.du1052 (coe v0)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d1008 v0 v1
               (coe
                  MAlonzo.Code.Algebra.Bundles.d1006 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d1008 v0 v1 v1)))
            v1 v1
            (let v2
                   = MAlonzo.Code.Relation.Binary.Structures.d34
                       (coe
                          MAlonzo.Code.Algebra.Structures.d708
                          (coe MAlonzo.Code.Algebra.Bundles.d1010 (coe v0))) in
             coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
               (coe v2 v1))
            (let v2 = MAlonzo.Code.Algebra.Bundles.d1010 (coe v0) in
             coe
               MAlonzo.Code.Agda.Builtin.Sigma.d30
               (MAlonzo.Code.Algebra.Structures.d722 (coe v2)) v1
               (coe MAlonzo.Code.Algebra.Bundles.d1008 v0 v1 v1)))
         (coe
            MAlonzo.Code.Algebra.Structures.du740
            (coe MAlonzo.Code.Algebra.Bundles.d1010 (coe v0)) (coe v1) (coe v1)
            (coe
               MAlonzo.Code.Algebra.Bundles.d1006 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d1008 v0 v1 v1))
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d36
               (MAlonzo.Code.Algebra.Structures.d708
                  (coe MAlonzo.Code.Algebra.Bundles.d1010 (coe v0)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d1006 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d1008 v0 v1 v1))
               v1
               (let v2 = MAlonzo.Code.Algebra.Bundles.d1010 (coe v0) in
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d28
                  (MAlonzo.Code.Algebra.Structures.d722 (coe v2)) v1 v1))))
name1426 = "Algebra.Properties.Lattice.∧-isMagma"
d1426 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T986 ->
  MAlonzo.Code.Algebra.Structures.T80
d1426 v0 v1 v2 = du1426 v2
du1426 ::
  MAlonzo.Code.Algebra.Bundles.T986 ->
  MAlonzo.Code.Algebra.Structures.T80
du1426 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C423
      (coe
         MAlonzo.Code.Algebra.Structures.d708
         (coe MAlonzo.Code.Algebra.Bundles.d1010 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Structures.d720
         (coe MAlonzo.Code.Algebra.Bundles.d1010 (coe v0)))
name1428 = "Algebra.Properties.Lattice.∧-isSemigroup"
d1428 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T986 ->
  MAlonzo.Code.Algebra.Structures.T116
d1428 v0 v1 v2 = du1428 v2
du1428 ::
  MAlonzo.Code.Algebra.Bundles.T986 ->
  MAlonzo.Code.Algebra.Structures.T116
du1428 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C1721 (coe du1426 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d718
         (coe MAlonzo.Code.Algebra.Bundles.d1010 (coe v0)))
name1430 = "Algebra.Properties.Lattice.∧-isBand"
d1430 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T986 ->
  MAlonzo.Code.Algebra.Structures.T152
d1430 v0 v1 v2 = du1430 v2
du1430 ::
  MAlonzo.Code.Algebra.Bundles.T986 ->
  MAlonzo.Code.Algebra.Structures.T152
du1430 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C2175 (coe du1428 (coe v0))
      (coe du1422 (coe v0))
name1432 = "Algebra.Properties.Lattice.∧-isSemilattice"
d1432 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T986 ->
  MAlonzo.Code.Algebra.Structures.T232
d1432 v0 v1 v2 = du1432 v2
du1432 ::
  MAlonzo.Code.Algebra.Bundles.T986 ->
  MAlonzo.Code.Algebra.Structures.T232
du1432 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C3189 (coe du1430 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d716
         (coe MAlonzo.Code.Algebra.Bundles.d1010 (coe v0)))
name1434 = "Algebra.Properties.Lattice.∧-semilattice"
d1434 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T986 ->
  MAlonzo.Code.Algebra.Bundles.T266
d1434 v0 v1 v2 = du1434 v2
du1434 ::
  MAlonzo.Code.Algebra.Bundles.T986 ->
  MAlonzo.Code.Algebra.Bundles.T266
du1434 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C3011
      (MAlonzo.Code.Algebra.Bundles.d1008 (coe v0)) (coe du1432 (coe v0))
name1438
  = "Algebra.Properties.Lattice._.∧-isOrderTheoreticJoinSemilattice"
d1438 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T986 ->
  MAlonzo.Code.Relation.Binary.Lattice.T68
d1438 v0 v1 v2 = du1438 v2
du1438 ::
  MAlonzo.Code.Algebra.Bundles.T986 ->
  MAlonzo.Code.Relation.Binary.Lattice.T68
du1438 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Semilattice.du180
      (coe du1434 (coe v0))
name1440
  = "Algebra.Properties.Lattice._.∧-isOrderTheoreticMeetSemilattice"
d1440 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T986 ->
  MAlonzo.Code.Relation.Binary.Lattice.T438
d1440 v0 v1 v2 = du1440 v2
du1440 ::
  MAlonzo.Code.Algebra.Bundles.T986 ->
  MAlonzo.Code.Relation.Binary.Lattice.T438
du1440 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Semilattice.du178
      (coe du1434 (coe v0))
name1442
  = "Algebra.Properties.Lattice._.∧-orderTheoreticJoinSemilattice"
d1442 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T986 ->
  MAlonzo.Code.Relation.Binary.Lattice.T170
d1442 v0 v1 v2 = du1442 v2
du1442 ::
  MAlonzo.Code.Algebra.Bundles.T986 ->
  MAlonzo.Code.Relation.Binary.Lattice.T170
du1442 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Semilattice.du184
      (coe du1434 (coe v0))
name1444
  = "Algebra.Properties.Lattice._.∧-orderTheoreticMeetSemilattice"
d1444 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T986 ->
  MAlonzo.Code.Relation.Binary.Lattice.T540
d1444 v0 v1 v2 = du1444 v2
du1444 ::
  MAlonzo.Code.Algebra.Bundles.T986 ->
  MAlonzo.Code.Relation.Binary.Lattice.T540
du1444 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Semilattice.du182
      (coe du1434 (coe v0))
name1446 = "Algebra.Properties.Lattice.∨-idem"
d1446 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T986 -> AgdaAny -> AgdaAny
d1446 v0 v1 v2 v3 = du1446 v2 v3
du1446 :: MAlonzo.Code.Algebra.Bundles.T986 -> AgdaAny -> AgdaAny
du1446 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du74
            (coe MAlonzo.Code.Algebra.Bundles.du1052 (coe v0)))
         (coe MAlonzo.Code.Algebra.Bundles.d1006 v0 v1 v1)
         (coe
            MAlonzo.Code.Algebra.Bundles.d1006 v0 v1
            (coe MAlonzo.Code.Algebra.Bundles.d1008 v0 v1 v1))
         v1
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du74
               (coe MAlonzo.Code.Algebra.Bundles.du1052 (coe v0)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d1006 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d1008 v0 v1 v1))
            v1 v1
            (let v2
                   = MAlonzo.Code.Relation.Binary.Structures.d34
                       (coe
                          MAlonzo.Code.Algebra.Structures.d708
                          (coe MAlonzo.Code.Algebra.Bundles.d1010 (coe v0))) in
             coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
               (coe v2 v1))
            (let v2 = MAlonzo.Code.Algebra.Bundles.d1010 (coe v0) in
             coe
               MAlonzo.Code.Agda.Builtin.Sigma.d28
               (MAlonzo.Code.Algebra.Structures.d722 (coe v2)) v1 v1))
         (coe
            MAlonzo.Code.Algebra.Structures.du748
            (coe MAlonzo.Code.Algebra.Bundles.d1010 (coe v0)) (coe v1) (coe v1)
            (coe MAlonzo.Code.Algebra.Bundles.d1008 v0 v1 v1)
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d36
               (MAlonzo.Code.Algebra.Structures.d708
                  (coe MAlonzo.Code.Algebra.Bundles.d1010 (coe v0)))
               (coe MAlonzo.Code.Algebra.Bundles.d1008 v0 v1 v1) v1
               (coe du1422 (coe v0) (coe v1)))))
name1450 = "Algebra.Properties.Lattice.∨-isMagma"
d1450 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T986 ->
  MAlonzo.Code.Algebra.Structures.T80
d1450 v0 v1 v2 = du1450 v2
du1450 ::
  MAlonzo.Code.Algebra.Bundles.T986 ->
  MAlonzo.Code.Algebra.Structures.T80
du1450 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C423
      (coe
         MAlonzo.Code.Algebra.Structures.d708
         (coe MAlonzo.Code.Algebra.Bundles.d1010 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Structures.d714
         (coe MAlonzo.Code.Algebra.Bundles.d1010 (coe v0)))
name1452 = "Algebra.Properties.Lattice.∨-isSemigroup"
d1452 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T986 ->
  MAlonzo.Code.Algebra.Structures.T116
d1452 v0 v1 v2 = du1452 v2
du1452 ::
  MAlonzo.Code.Algebra.Bundles.T986 ->
  MAlonzo.Code.Algebra.Structures.T116
du1452 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C1721 (coe du1450 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d712
         (coe MAlonzo.Code.Algebra.Bundles.d1010 (coe v0)))
name1454 = "Algebra.Properties.Lattice.∨-isBand"
d1454 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T986 ->
  MAlonzo.Code.Algebra.Structures.T152
d1454 v0 v1 v2 = du1454 v2
du1454 ::
  MAlonzo.Code.Algebra.Bundles.T986 ->
  MAlonzo.Code.Algebra.Structures.T152
du1454 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C2175 (coe du1452 (coe v0))
      (coe du1446 (coe v0))
name1456 = "Algebra.Properties.Lattice.∨-isSemilattice"
d1456 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T986 ->
  MAlonzo.Code.Algebra.Structures.T232
d1456 v0 v1 v2 = du1456 v2
du1456 ::
  MAlonzo.Code.Algebra.Bundles.T986 ->
  MAlonzo.Code.Algebra.Structures.T232
du1456 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C3189 (coe du1454 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d710
         (coe MAlonzo.Code.Algebra.Bundles.d1010 (coe v0)))
name1458 = "Algebra.Properties.Lattice.∨-semilattice"
d1458 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T986 ->
  MAlonzo.Code.Algebra.Bundles.T266
d1458 v0 v1 v2 = du1458 v2
du1458 ::
  MAlonzo.Code.Algebra.Bundles.T986 ->
  MAlonzo.Code.Algebra.Bundles.T266
du1458 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C3011
      (MAlonzo.Code.Algebra.Bundles.d1006 (coe v0)) (coe du1456 (coe v0))
name1462
  = "Algebra.Properties.Lattice._.∧-isOrderTheoreticJoinSemilattice"
d1462 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T986 ->
  MAlonzo.Code.Relation.Binary.Lattice.T68
d1462 v0 v1 v2 = du1462 v2
du1462 ::
  MAlonzo.Code.Algebra.Bundles.T986 ->
  MAlonzo.Code.Relation.Binary.Lattice.T68
du1462 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Semilattice.du180
      (coe du1458 (coe v0))
name1464
  = "Algebra.Properties.Lattice._.∧-isOrderTheoreticMeetSemilattice"
d1464 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T986 ->
  MAlonzo.Code.Relation.Binary.Lattice.T438
d1464 v0 v1 v2 = du1464 v2
du1464 ::
  MAlonzo.Code.Algebra.Bundles.T986 ->
  MAlonzo.Code.Relation.Binary.Lattice.T438
du1464 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Semilattice.du178
      (coe du1458 (coe v0))
name1466
  = "Algebra.Properties.Lattice._.∧-orderTheoreticJoinSemilattice"
d1466 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T986 ->
  MAlonzo.Code.Relation.Binary.Lattice.T170
d1466 v0 v1 v2 = du1466 v2
du1466 ::
  MAlonzo.Code.Algebra.Bundles.T986 ->
  MAlonzo.Code.Relation.Binary.Lattice.T170
du1466 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Semilattice.du184
      (coe du1458 (coe v0))
name1468
  = "Algebra.Properties.Lattice._.∧-orderTheoreticMeetSemilattice"
d1468 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T986 ->
  MAlonzo.Code.Relation.Binary.Lattice.T540
d1468 v0 v1 v2 = du1468 v2
du1468 ::
  MAlonzo.Code.Algebra.Bundles.T986 ->
  MAlonzo.Code.Relation.Binary.Lattice.T540
du1468 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Semilattice.du182
      (coe du1458 (coe v0))
name1470 = "Algebra.Properties.Lattice.∧-∨-isLattice"
d1470 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T986 ->
  MAlonzo.Code.Algebra.Structures.T686
d1470 v0 v1 v2 = du1470 v2
du1470 ::
  MAlonzo.Code.Algebra.Bundles.T986 ->
  MAlonzo.Code.Algebra.Structures.T686
du1470 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C11495
      (coe
         MAlonzo.Code.Algebra.Structures.d708
         (coe MAlonzo.Code.Algebra.Bundles.d1010 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Structures.d716
         (coe MAlonzo.Code.Algebra.Bundles.d1010 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Structures.d718
         (coe MAlonzo.Code.Algebra.Bundles.d1010 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Structures.d720
         (coe MAlonzo.Code.Algebra.Bundles.d1010 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Structures.d710
         (coe MAlonzo.Code.Algebra.Bundles.d1010 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Structures.d712
         (coe MAlonzo.Code.Algebra.Bundles.d1010 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Structures.d714
         (coe MAlonzo.Code.Algebra.Bundles.d1010 (coe v0)))
      (coe
         MAlonzo.Code.Data.Product.du250
         (coe
            MAlonzo.Code.Algebra.Structures.d722
            (coe MAlonzo.Code.Algebra.Bundles.d1010 (coe v0))))
name1472 = "Algebra.Properties.Lattice.∧-∨-lattice"
d1472 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T986 ->
  MAlonzo.Code.Algebra.Bundles.T986
d1472 v0 v1 v2 = du1472 v2
du1472 ::
  MAlonzo.Code.Algebra.Bundles.T986 ->
  MAlonzo.Code.Algebra.Bundles.T986
du1472 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C10761
      (MAlonzo.Code.Algebra.Bundles.d1008 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d1006 (coe v0)) (coe du1470 (coe v0))
name1476 = "Algebra.Properties.Lattice._.poset"
d1476 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T986 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204
d1476 v0 v1 v2 = du1476 v2
du1476 ::
  MAlonzo.Code.Algebra.Bundles.T986 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204
du1476 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Semilattice.du164
      (coe du1434 (coe v0))
name1480 = "Algebra.Properties.Lattice._._≤_"
d1480 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T986 -> AgdaAny -> AgdaAny -> ()
d1480 = erased
name1484 = "Algebra.Properties.Lattice.∨-∧-isOrderTheoreticLattice"
d1484 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T986 ->
  MAlonzo.Code.Relation.Binary.Lattice.T810
d1484 v0 v1 v2 = du1484 v2
du1484 ::
  MAlonzo.Code.Algebra.Bundles.T986 ->
  MAlonzo.Code.Relation.Binary.Lattice.T810
du1484 v0
  = coe
      MAlonzo.Code.Relation.Binary.Lattice.C16385
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.d226
         (coe
            MAlonzo.Code.Algebra.Properties.Semilattice.du164
            (coe du1434 (coe v0))))
      (coe du1528 (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Construct.NaturalOrder.Left.du1850
         (coe MAlonzo.Code.Algebra.Bundles.d1008 (coe v0))
         (coe du1432 (coe v0)))
name1496 = "Algebra.Properties.Lattice._._._≤_"
d1496 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T986 -> AgdaAny -> AgdaAny -> ()
d1496 = erased
name1508 = "Algebra.Properties.Lattice._.sound"
d1508 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T986 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1508 v0 v1 v2 v3 v4 v5 = du1508 v2 v3 v4 v5
du1508 ::
  MAlonzo.Code.Algebra.Bundles.T986 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1508 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (MAlonzo.Code.Algebra.Structures.d708
         (coe MAlonzo.Code.Algebra.Bundles.d1010 (coe v0)))
      (coe MAlonzo.Code.Algebra.Bundles.d1008 v0 v1 v2) v1
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du74
               (coe MAlonzo.Code.Algebra.Bundles.du1052 (coe v0)))
            (coe MAlonzo.Code.Algebra.Bundles.d1008 v0 v1 v2)
            (coe
               MAlonzo.Code.Algebra.Bundles.d1008 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d1006 v0 v2 v1))
            v1
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.du74
                  (coe MAlonzo.Code.Algebra.Bundles.du1052 (coe v0)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d1008 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d1006 v0 v2 v1))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d1008 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d1006 v0 v1 v2))
               v1
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.du74
                     (coe MAlonzo.Code.Algebra.Bundles.du1052 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d1008 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d1006 v0 v1 v2))
                  v1 v1
                  (let v4
                         = MAlonzo.Code.Relation.Binary.Structures.d34
                             (coe
                                MAlonzo.Code.Algebra.Structures.d708
                                (coe MAlonzo.Code.Algebra.Bundles.d1010 (coe v0))) in
                   coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                     (coe v4 v1))
                  (let v4 = MAlonzo.Code.Algebra.Bundles.d1010 (coe v0) in
                   coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d30
                     (MAlonzo.Code.Algebra.Structures.d722 (coe v4)) v1 v2))
               (coe
                  MAlonzo.Code.Algebra.Structures.du740
                  (coe MAlonzo.Code.Algebra.Bundles.d1010 (coe v0)) (coe v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d1006 v0 v2 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d1006 v0 v1 v2)
                  (coe
                     MAlonzo.Code.Algebra.Structures.d710
                     (MAlonzo.Code.Algebra.Bundles.d1010 (coe v0)) v2 v1)))
            (coe
               MAlonzo.Code.Algebra.Structures.du740
               (coe MAlonzo.Code.Algebra.Bundles.d1010 (coe v0)) (coe v1) (coe v2)
               (coe MAlonzo.Code.Algebra.Bundles.d1006 v0 v2 v1) (coe v3))))
name1520 = "Algebra.Properties.Lattice._.complete"
d1520 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T986 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1520 v0 v1 v2 v3 v4 v5 = du1520 v2 v3 v4 v5
du1520 ::
  MAlonzo.Code.Algebra.Bundles.T986 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1520 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (MAlonzo.Code.Algebra.Structures.d708
         (coe MAlonzo.Code.Algebra.Bundles.d1010 (coe v0)))
      (coe MAlonzo.Code.Algebra.Bundles.d1006 v0 v2 v1) v2
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du74
               (coe MAlonzo.Code.Algebra.Bundles.du1052 (coe v0)))
            (coe MAlonzo.Code.Algebra.Bundles.d1006 v0 v2 v1)
            (coe
               MAlonzo.Code.Algebra.Bundles.d1006 v0 v2
               (coe MAlonzo.Code.Algebra.Bundles.d1008 v0 v1 v2))
            v2
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.du74
                  (coe MAlonzo.Code.Algebra.Bundles.du1052 (coe v0)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d1006 v0 v2
                  (coe MAlonzo.Code.Algebra.Bundles.d1008 v0 v1 v2))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d1006 v0 v2
                  (coe MAlonzo.Code.Algebra.Bundles.d1008 v0 v2 v1))
               v2
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.du74
                     (coe MAlonzo.Code.Algebra.Bundles.du1052 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d1006 v0 v2
                     (coe MAlonzo.Code.Algebra.Bundles.d1008 v0 v2 v1))
                  v2 v2
                  (let v4
                         = MAlonzo.Code.Relation.Binary.Structures.d34
                             (coe
                                MAlonzo.Code.Algebra.Structures.d708
                                (coe MAlonzo.Code.Algebra.Bundles.d1010 (coe v0))) in
                   coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                     (coe v4 v2))
                  (let v4 = MAlonzo.Code.Algebra.Bundles.d1010 (coe v0) in
                   coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d28
                     (MAlonzo.Code.Algebra.Structures.d722 (coe v4)) v2 v1))
               (coe
                  MAlonzo.Code.Algebra.Structures.du748
                  (coe MAlonzo.Code.Algebra.Bundles.d1010 (coe v0)) (coe v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d1008 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d1008 v0 v2 v1)
                  (coe
                     MAlonzo.Code.Algebra.Structures.d716
                     (MAlonzo.Code.Algebra.Bundles.d1010 (coe v0)) v1 v2)))
            (coe
               MAlonzo.Code.Algebra.Structures.du748
               (coe MAlonzo.Code.Algebra.Bundles.d1010 (coe v0)) (coe v2) (coe v1)
               (coe MAlonzo.Code.Algebra.Bundles.d1008 v0 v1 v2) (coe v3))))
name1528 = "Algebra.Properties.Lattice._.supremum"
d1528 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T986 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1528 v0 v1 v2 v3 v4 = du1528 v2 v3 v4
du1528 ::
  MAlonzo.Code.Algebra.Bundles.T986 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1528 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32
      (coe
         du1508 (coe v0) (coe v1)
         (coe MAlonzo.Code.Algebra.Bundles.d1006 v0 v1 v2)
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Properties.Semilattice.du180
                    (coe du1458 (coe v0)) in
          coe
            MAlonzo.Code.Agda.Builtin.Sigma.d28
            (coe MAlonzo.Code.Relation.Binary.Lattice.d90 v3 v1 v2)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe
            du1508 (coe v0) (coe v2)
            (coe MAlonzo.Code.Algebra.Bundles.d1006 v0 v1 v2)
            (let v3
                   = coe
                       MAlonzo.Code.Algebra.Properties.Semilattice.du180
                       (coe du1458 (coe v0)) in
             coe
               MAlonzo.Code.Agda.Builtin.Sigma.d28
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d30
                  (coe MAlonzo.Code.Relation.Binary.Lattice.d90 v3 v1 v2))))
         (coe
            (\ v3 v4 v5 ->
               coe
                 du1508 (coe v0) (coe MAlonzo.Code.Algebra.Bundles.d1006 v0 v1 v2)
                 (coe v3)
                 (let v6
                        = coe
                            MAlonzo.Code.Algebra.Properties.Semilattice.du180
                            (coe du1458 (coe v0)) in
                  coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d30
                    (MAlonzo.Code.Agda.Builtin.Sigma.d30
                       (coe MAlonzo.Code.Relation.Binary.Lattice.d90 v6 v1 v2))
                    v3 (coe du1520 (coe v0) (coe v1) (coe v3) (coe v4))
                    (coe du1520 (coe v0) (coe v2) (coe v3) (coe v5))))))
name1540 = "Algebra.Properties.Lattice.∨-∧-orderTheoreticLattice"
d1540 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T986 ->
  MAlonzo.Code.Relation.Binary.Lattice.T898
d1540 v0 v1 v2 = du1540 v2
du1540 ::
  MAlonzo.Code.Algebra.Bundles.T986 ->
  MAlonzo.Code.Relation.Binary.Lattice.T898
du1540 v0
  = coe
      MAlonzo.Code.Relation.Binary.Lattice.C19233
      (MAlonzo.Code.Algebra.Bundles.d1006 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d1008 (coe v0)) (coe du1484 (coe v0))
name1548 = "Algebra.Properties.Lattice.replace-equality"
d1548 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T986 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Function.Equivalence.T16) ->
  MAlonzo.Code.Algebra.Bundles.T986
d1548 v0 v1 v2 v3 v4 = du1548 v2 v4
du1548 ::
  MAlonzo.Code.Algebra.Bundles.T986 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Function.Equivalence.T16) ->
  MAlonzo.Code.Algebra.Bundles.T986
du1548 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C10761
      (MAlonzo.Code.Algebra.Bundles.d1006 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d1008 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.C11495
         (coe
            MAlonzo.Code.Relation.Binary.Structures.C483
            (coe
               (\ v2 ->
                  coe
                    MAlonzo.Code.Function.Equality.d38
                    (MAlonzo.Code.Function.Equivalence.d34 (coe v1 v2 v2))
                    (coe
                       MAlonzo.Code.Relation.Binary.Structures.d34
                       (MAlonzo.Code.Algebra.Structures.d708
                          (coe MAlonzo.Code.Algebra.Bundles.d1010 (coe v0)))
                       v2)))
            (coe
               (\ v2 v3 v4 ->
                  coe
                    MAlonzo.Code.Function.Equality.d38
                    (MAlonzo.Code.Function.Equivalence.d34 (coe v1 v3 v2))
                    (coe
                       MAlonzo.Code.Relation.Binary.Structures.d36
                       (MAlonzo.Code.Algebra.Structures.d708
                          (coe MAlonzo.Code.Algebra.Bundles.d1010 (coe v0)))
                       v2 v3
                       (coe
                          MAlonzo.Code.Function.Equality.d38
                          (MAlonzo.Code.Function.Equivalence.d36 (coe v1 v2 v3)) v4))))
            (coe
               (\ v2 v3 v4 v5 v6 ->
                  coe
                    MAlonzo.Code.Function.Equality.d38
                    (MAlonzo.Code.Function.Equivalence.d34 (coe v1 v2 v4))
                    (coe
                       MAlonzo.Code.Relation.Binary.Structures.d38
                       (MAlonzo.Code.Algebra.Structures.d708
                          (coe MAlonzo.Code.Algebra.Bundles.d1010 (coe v0)))
                       v2 v3 v4
                       (coe
                          MAlonzo.Code.Function.Equality.d38
                          (MAlonzo.Code.Function.Equivalence.d36 (coe v1 v2 v3)) v5)
                       (coe
                          MAlonzo.Code.Function.Equality.d38
                          (MAlonzo.Code.Function.Equivalence.d36 (coe v1 v3 v4)) v6)))))
         (coe
            (\ v2 v3 ->
               coe
                 MAlonzo.Code.Function.Equality.d38
                 (MAlonzo.Code.Function.Equivalence.d34
                    (coe
                       v1 (coe MAlonzo.Code.Algebra.Bundles.d1006 v0 v2 v3)
                       (coe MAlonzo.Code.Algebra.Bundles.d1006 v0 v3 v2)))
                 (coe
                    MAlonzo.Code.Algebra.Structures.d710
                    (MAlonzo.Code.Algebra.Bundles.d1010 (coe v0)) v2 v3)))
         (coe
            (\ v2 v3 v4 ->
               coe
                 MAlonzo.Code.Function.Equality.d38
                 (MAlonzo.Code.Function.Equivalence.d34
                    (coe
                       v1
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d1006 v0
                          (coe MAlonzo.Code.Algebra.Bundles.d1006 v0 v2 v3) v4)
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d1006 v0 v2
                          (coe MAlonzo.Code.Algebra.Bundles.d1006 v0 v3 v4))))
                 (coe
                    MAlonzo.Code.Algebra.Structures.d712
                    (MAlonzo.Code.Algebra.Bundles.d1010 (coe v0)) v2 v3 v4)))
         (coe
            (\ v2 v3 v4 v5 v6 v7 ->
               coe
                 MAlonzo.Code.Function.Equality.d38
                 (MAlonzo.Code.Function.Equivalence.d34
                    (coe
                       v1 (coe MAlonzo.Code.Algebra.Bundles.d1006 v0 v2 v4)
                       (coe MAlonzo.Code.Algebra.Bundles.d1006 v0 v3 v5)))
                 (coe
                    MAlonzo.Code.Algebra.Structures.d714
                    (MAlonzo.Code.Algebra.Bundles.d1010 (coe v0)) v2 v3 v4 v5
                    (coe
                       MAlonzo.Code.Function.Equality.d38
                       (MAlonzo.Code.Function.Equivalence.d36 (coe v1 v2 v3)) v6)
                    (coe
                       MAlonzo.Code.Function.Equality.d38
                       (MAlonzo.Code.Function.Equivalence.d36 (coe v1 v4 v5)) v7))))
         (coe
            (\ v2 v3 ->
               coe
                 MAlonzo.Code.Function.Equality.d38
                 (MAlonzo.Code.Function.Equivalence.d34
                    (coe
                       v1 (coe MAlonzo.Code.Algebra.Bundles.d1008 v0 v2 v3)
                       (coe MAlonzo.Code.Algebra.Bundles.d1008 v0 v3 v2)))
                 (coe
                    MAlonzo.Code.Algebra.Structures.d716
                    (MAlonzo.Code.Algebra.Bundles.d1010 (coe v0)) v2 v3)))
         (coe
            (\ v2 v3 v4 ->
               coe
                 MAlonzo.Code.Function.Equality.d38
                 (MAlonzo.Code.Function.Equivalence.d34
                    (coe
                       v1
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d1008 v0
                          (coe MAlonzo.Code.Algebra.Bundles.d1008 v0 v2 v3) v4)
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d1008 v0 v2
                          (coe MAlonzo.Code.Algebra.Bundles.d1008 v0 v3 v4))))
                 (coe
                    MAlonzo.Code.Algebra.Structures.d718
                    (MAlonzo.Code.Algebra.Bundles.d1010 (coe v0)) v2 v3 v4)))
         (coe
            (\ v2 v3 v4 v5 v6 v7 ->
               coe
                 MAlonzo.Code.Function.Equality.d38
                 (MAlonzo.Code.Function.Equivalence.d34
                    (coe
                       v1 (coe MAlonzo.Code.Algebra.Bundles.d1008 v0 v2 v4)
                       (coe MAlonzo.Code.Algebra.Bundles.d1008 v0 v3 v5)))
                 (coe
                    MAlonzo.Code.Algebra.Structures.d720
                    (MAlonzo.Code.Algebra.Bundles.d1010 (coe v0)) v2 v3 v4 v5
                    (coe
                       MAlonzo.Code.Function.Equality.d38
                       (MAlonzo.Code.Function.Equivalence.d36 (coe v1 v2 v3)) v6)
                    (coe
                       MAlonzo.Code.Function.Equality.d38
                       (MAlonzo.Code.Function.Equivalence.d36 (coe v1 v4 v5)) v7))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C32
            (coe
               (\ v2 v3 ->
                  coe
                    MAlonzo.Code.Function.Equality.d38
                    (MAlonzo.Code.Function.Equivalence.d34
                       (coe
                          v1
                          (coe
                             MAlonzo.Code.Algebra.Bundles.d1006 v0 v2
                             (coe MAlonzo.Code.Algebra.Bundles.d1008 v0 v2 v3))
                          v2))
                    (let v4 = MAlonzo.Code.Algebra.Bundles.d1010 (coe v0) in
                     coe
                       MAlonzo.Code.Agda.Builtin.Sigma.d28
                       (MAlonzo.Code.Algebra.Structures.d722 (coe v4)) v2 v3)))
            (coe
               (\ v2 v3 ->
                  coe
                    MAlonzo.Code.Function.Equality.d38
                    (MAlonzo.Code.Function.Equivalence.d34
                       (coe
                          v1
                          (coe
                             MAlonzo.Code.Algebra.Bundles.d1008 v0 v2
                             (coe MAlonzo.Code.Algebra.Bundles.d1006 v0 v2 v3))
                          v2))
                    (let v4 = MAlonzo.Code.Algebra.Bundles.d1010 (coe v0) in
                     coe
                       MAlonzo.Code.Agda.Builtin.Sigma.d30
                       (MAlonzo.Code.Algebra.Structures.d722 (coe v4)) v2 v3)))))
name1610 = "Algebra.Properties.Lattice.∧-idempotent"
d1610 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T986 -> AgdaAny -> AgdaAny
d1610 v0 v1 v2 = du1610 v2
du1610 :: MAlonzo.Code.Algebra.Bundles.T986 -> AgdaAny -> AgdaAny
du1610 v0 = coe du1422 (coe v0)
name1612 = "Algebra.Properties.Lattice.∨-idempotent"
d1612 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T986 -> AgdaAny -> AgdaAny
d1612 v0 v1 v2 = du1612 v2
du1612 :: MAlonzo.Code.Algebra.Bundles.T986 -> AgdaAny -> AgdaAny
du1612 v0 = coe du1446 (coe v0)
name1614 = "Algebra.Properties.Lattice.isOrderTheoreticLattice"
d1614 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T986 ->
  MAlonzo.Code.Relation.Binary.Lattice.T810
d1614 v0 v1 v2 = du1614 v2
du1614 ::
  MAlonzo.Code.Algebra.Bundles.T986 ->
  MAlonzo.Code.Relation.Binary.Lattice.T810
du1614 v0 = coe du1484 (coe v0)
name1616 = "Algebra.Properties.Lattice.orderTheoreticLattice"
d1616 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T986 ->
  MAlonzo.Code.Relation.Binary.Lattice.T898
d1616 v0 v1 v2 = du1616 v2
du1616 ::
  MAlonzo.Code.Algebra.Bundles.T986 ->
  MAlonzo.Code.Relation.Binary.Lattice.T898
du1616 v0 = coe du1540 (coe v0)
