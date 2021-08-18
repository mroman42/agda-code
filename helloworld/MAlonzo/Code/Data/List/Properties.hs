{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.List.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Fin.Base
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.These.Base
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Negation
import qualified MAlonzo.Code.Relation.Nullary.Product
import qualified MAlonzo.Code.Relation.Nullary.Reflects

name42 = "Data.List.Properties._.∷-injective"
d42 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d42 v0 v1 v2 v3 v4 v5 v6 = du42
du42 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
du42 = coe MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased
name44 = "Data.List.Properties._.∷-injectiveˡ"
d44 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d44 = erased
name46 = "Data.List.Properties._.∷-injectiveʳ"
d46 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d46 = erased
name48 = "Data.List.Properties._.∷-dec"
d48 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Nullary.T32 ->
  MAlonzo.Code.Relation.Nullary.T32 ->
  MAlonzo.Code.Relation.Nullary.T32
d48 v0 v1 v2 v3 v4 v5 v6 v7 = du48 v6 v7
du48 ::
  MAlonzo.Code.Relation.Nullary.T32 ->
  MAlonzo.Code.Relation.Nullary.T32 ->
  MAlonzo.Code.Relation.Nullary.T32
du48 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du168
      (coe MAlonzo.Code.Data.Product.du232 erased)
      (coe MAlonzo.Code.Relation.Nullary.Product.du30 (coe v0) (coe v1))
name54 = "Data.List.Properties.≡-dec"
d54 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Relation.Nullary.T32
d54 v0 v1 v2 v3 v4 = du54 v2 v3 v4
du54 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Relation.Nullary.T32
du54 v0 v1 v2
  = case coe v1 of
      []
        -> case coe v2 of
             []
               -> coe
                    MAlonzo.Code.Relation.Nullary.C46
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C10)
                    (coe MAlonzo.Code.Relation.Nullary.C22 erased)
             (:) v3 v4
               -> coe
                    MAlonzo.Code.Relation.Nullary.C46
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C8)
                    (coe MAlonzo.Code.Relation.Nullary.C26)
             _ -> MAlonzo.RTE.mazUnreachableError
      (:) v3 v4
        -> case coe v2 of
             []
               -> coe
                    MAlonzo.Code.Relation.Nullary.C46
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C8)
                    (coe MAlonzo.Code.Relation.Nullary.C26)
             (:) v5 v6
               -> coe du48 (coe v0 v3 v5) (coe du54 (coe v0) (coe v4) (coe v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name80 = "Data.List.Properties.map-id"
d80 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d80 = erased
name94 = "Data.List.Properties.map-id₂"
d94 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T32 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d94 = erased
name106 = "Data.List.Properties.map-++-commute"
d106 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d106 = erased
name126 = "Data.List.Properties.map-cong"
d126 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d126 = erased
name144 = "Data.List.Properties.map-cong₂"
d144 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T32 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d144 = erased
name154 = "Data.List.Properties.length-map"
d154 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d154 = erased
name168 = "Data.List.Properties.map-compose"
d168 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d168 = erased
name178 = "Data.List.Properties.mapMaybe-just"
d178 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d178 = erased
name190 = "Data.List.Properties.mapMaybe-nothing"
d190 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d190 = erased
name206 = "Data.List.Properties._.mapMaybe-concatMap"
d206 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d206 = erased
name230 = "Data.List.Properties._.length-mapMaybe"
d230 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  [AgdaAny] -> MAlonzo.Code.Data.Nat.Base.T6
d230 v0 v1 v2 v3 v4 v5 = du230 v4 v5
du230 ::
  (AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  [AgdaAny] -> MAlonzo.Code.Data.Nat.Base.T6
du230 v0 v1
  = case coe v1 of
      [] -> coe MAlonzo.Code.Data.Nat.Base.C10
      (:) v2 v3
        -> let v4 = coe v0 v2 in
           case coe v4 of
             MAlonzo.Code.Data.Maybe.Base.C26 -> coe du230 (coe v0) (coe v3)
             MAlonzo.Code.Data.Maybe.Base.C30 v5
               -> coe MAlonzo.Code.Data.Nat.Base.C18 (coe du230 (coe v0) (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name254 = "Data.List.Properties.length-++"
d254 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d254 = erased
name282 = "Data.List.Properties._._.Associative"
d282 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> ([AgdaAny] -> [AgdaAny] -> [AgdaAny]) -> ()
d282 = erased
name284 = "Data.List.Properties._._.Cancellative"
d284 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> ([AgdaAny] -> [AgdaAny] -> [AgdaAny]) -> ()
d284 = erased
name292 = "Data.List.Properties._._.Conical"
d292 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> ([AgdaAny] -> [AgdaAny] -> [AgdaAny]) -> ()
d292 = erased
name298 = "Data.List.Properties._._.Identity"
d298 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> ([AgdaAny] -> [AgdaAny] -> [AgdaAny]) -> ()
d298 = erased
name312 = "Data.List.Properties._._.LeftIdentity"
d312 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> ([AgdaAny] -> [AgdaAny] -> [AgdaAny]) -> ()
d312 = erased
name324 = "Data.List.Properties._._.RightIdentity"
d324 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> ([AgdaAny] -> [AgdaAny] -> [AgdaAny]) -> ()
d324 = erased
name362 = "Data.List.Properties._._.IsMagma"
d362 a0 a1 a2 = ()
name364 = "Data.List.Properties._._.IsMonoid"
d364 a0 a1 a2 a3 = ()
name372 = "Data.List.Properties._._.IsSemigroup"
d372 a0 a1 a2 = ()
name1600 = "Data.List.Properties._.++-assoc"
d1600 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1600 = erased
name1616 = "Data.List.Properties._.++-identityˡ"
d1616 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1616 = erased
name1620 = "Data.List.Properties._.++-identityʳ"
d1620 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1620 = erased
name1628 = "Data.List.Properties._.++-identity"
d1628 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1628 v0 v1 = du1628
du1628 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
du1628 = coe MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased
name1634 = "Data.List.Properties._.++-identityʳ-unique"
d1634 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1634 = erased
name1646 = "Data.List.Properties._.++-identityˡ-unique"
d1646 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1646 = erased
name1684 = "Data.List.Properties._.++-cancelˡ"
d1684 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1684 = erased
name1700 = "Data.List.Properties._.++-cancelʳ"
d1700 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1700 = erased
name1728 = "Data.List.Properties._.++-cancel"
d1728 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1728 v0 v1 = du1728
du1728 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
du1728 = coe MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased
name1734 = "Data.List.Properties._.++-conicalˡ"
d1734 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1734 = erased
name1740 = "Data.List.Properties._.++-conicalʳ"
d1740 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1740 = erased
name1742 = "Data.List.Properties._.++-conical"
d1742 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1742 v0 v1 = du1742
du1742 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
du1742 = coe MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased
name1744 = "Data.List.Properties._.++-isMagma"
d1744 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Algebra.Structures.T80
d1744 v0 v1 = du1744
du1744 :: MAlonzo.Code.Algebra.Structures.T80
du1744
  = coe
      MAlonzo.Code.Algebra.Structures.C423
      (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.du66)
      erased
name1746 = "Data.List.Properties._.++-isSemigroup"
d1746 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Algebra.Structures.T116
d1746 v0 v1 = du1746
du1746 :: MAlonzo.Code.Algebra.Structures.T116
du1746
  = coe MAlonzo.Code.Algebra.Structures.C1721 (coe du1744) erased
name1748 = "Data.List.Properties._.++-isMonoid"
d1748 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Algebra.Structures.T314
d1748 v0 v1 = du1748
du1748 :: MAlonzo.Code.Algebra.Structures.T314
du1748
  = coe
      MAlonzo.Code.Algebra.Structures.C4201 (coe du1746) (coe du1628)
name1758 = "Data.List.Properties._.++-semigroup"
d1758 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Algebra.Bundles.T80
d1758 v0 v1 = du1758
du1758 :: MAlonzo.Code.Algebra.Bundles.T80
du1758
  = coe
      MAlonzo.Code.Algebra.Bundles.C877
      (coe MAlonzo.Code.Data.List.Base.du58) (coe du1746)
name1760 = "Data.List.Properties._.++-monoid"
d1760 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Algebra.Bundles.T422
d1760 v0 v1 = du1760
du1760 :: MAlonzo.Code.Algebra.Bundles.T422
du1760
  = coe
      MAlonzo.Code.Algebra.Bundles.C4689
      (coe MAlonzo.Code.Data.List.Base.du58)
      (coe MAlonzo.Code.Agda.Builtin.List.C16) (coe du1748)
name1778 = "Data.List.Properties._.alignWith-cong"
d1778 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (MAlonzo.Code.Data.These.Base.T38 -> AgdaAny) ->
  (MAlonzo.Code.Data.These.Base.T38 -> AgdaAny) ->
  (MAlonzo.Code.Data.These.Base.T38 ->
   MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1778 = erased
name1802 = "Data.List.Properties._.length-alignWith"
d1802 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (MAlonzo.Code.Data.These.Base.T38 -> AgdaAny) ->
  (MAlonzo.Code.Data.These.Base.T38 -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1802 = erased
name1824 = "Data.List.Properties._.alignWith-map"
d1824 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (MAlonzo.Code.Data.These.Base.T38 -> AgdaAny) ->
  (MAlonzo.Code.Data.These.Base.T38 -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1824 = erased
name1856 = "Data.List.Properties._.map-alignWith"
d1856 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (MAlonzo.Code.Data.These.Base.T38 -> AgdaAny) ->
  (MAlonzo.Code.Data.These.Base.T38 -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1856 = erased
name1894 = "Data.List.Properties._.zipWith-comm"
d1894 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1894 = erased
name1934 = "Data.List.Properties._.zipWith-identityˡ"
d1934 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1934 = erased
name1942 = "Data.List.Properties._.zipWith-identityʳ"
d1942 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1942 = erased
name1952 = "Data.List.Properties._.length-zipWith"
d1952 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1952 = erased
name1990 = "Data.List.Properties._.zipWith-map"
d1990 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1990 = erased
name2038 = "Data.List.Properties._.map-zipWith"
d2038 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2038 = erased
name2066 = "Data.List.Properties.unalignWith-this"
d2066 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2066 = erased
name2076 = "Data.List.Properties.unalignWith-that"
d2076 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2076 = erased
name2098 = "Data.List.Properties._.unalignWith-cong"
d2098 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.These.Base.T38) ->
  (AgdaAny -> MAlonzo.Code.Data.These.Base.T38) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2098 = erased
name2162 = "Data.List.Properties._.unalignWith-map"
d2162 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.These.Base.T38) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2162 = erased
name2214 = "Data.List.Properties._.map-unalignWith"
d2214 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.These.Base.T38) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2214 = erased
name2278 = "Data.List.Properties._.unalignWith-alignWith"
d2278 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.These.Base.T38) ->
  (MAlonzo.Code.Data.These.Base.T38 -> AgdaAny) ->
  (MAlonzo.Code.Data.These.Base.T38 ->
   MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2278 = erased
name2326 = "Data.List.Properties._.length-unzipWith₁"
d2326 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2326 = erased
name2334 = "Data.List.Properties._.length-unzipWith₂"
d2334 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2334 = erased
name2342 = "Data.List.Properties._.zipWith-unzipWith"
d2342 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2342 = erased
name2366 = "Data.List.Properties.foldr-universal"
d2366 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  ([AgdaAny] -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  (AgdaAny -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2366 = erased
name2404 = "Data.List.Properties.foldr-cong"
d2404 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2404 = erased
name2432 = "Data.List.Properties.foldr-fusion"
d2432 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2432 = erased
name2448 = "Data.List.Properties.id-is-foldr"
d2448 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2448 = erased
name2458 = "Data.List.Properties.++-is-foldr"
d2458 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2458 = erased
name2480 = "Data.List.Properties.foldr-++"
d2480 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2480 = erased
name2504 = "Data.List.Properties.map-is-foldr"
d2504 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2504 = erased
name2526 = "Data.List.Properties.foldr-∷ʳ"
d2526 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2526 = erased
name2564 = "Data.List.Properties._.foldr-forcesᵇ"
d2564 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14) ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.All.T32
d2564 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du2564 v4 v5 v6 v7 v8
du2564 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14) ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.All.T32
du2564 v0 v1 v2 v3 v4
  = case coe v3 of
      [] -> coe MAlonzo.Code.Data.List.Relation.Unary.All.C38
      (:) v5 v6
        -> let v7
                 = coe
                     v1 v5
                     (coe MAlonzo.Code.Data.List.Base.du202 (coe v0) (coe v2) (coe v6))
                     v4 in
           case coe v7 of
             MAlonzo.Code.Agda.Builtin.Sigma.C32 v8 v9
               -> coe
                    MAlonzo.Code.Data.List.Relation.Unary.All.C48 v8
                    (coe du2564 (coe v0) (coe v1) (coe v2) (coe v6) (coe v9))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name2598 = "Data.List.Properties._.foldr-preservesᵇ"
d2598 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.All.T32 -> AgdaAny
d2598 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du2598 v4 v5 v6 v7 v8 v9
du2598 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.All.T32 -> AgdaAny
du2598 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      MAlonzo.Code.Data.List.Relation.Unary.All.C38 -> coe v4
      MAlonzo.Code.Data.List.Relation.Unary.All.C48 v8 v9
        -> case coe v3 of
             (:) v10 v11
               -> coe
                    v1 v10
                    (coe MAlonzo.Code.Data.List.Base.du202 (coe v0) (coe v2) (coe v11))
                    v8
                    (coe du2598 (coe v0) (coe v1) (coe v2) (coe v11) (coe v4) (coe v9))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name2618 = "Data.List.Properties._.foldr-preservesʳ"
d2618 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> [AgdaAny] -> AgdaAny
d2618 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du2618 v4 v5 v6 v7 v8
du2618 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> [AgdaAny] -> AgdaAny
du2618 v0 v1 v2 v3 v4
  = case coe v4 of
      [] -> coe v3
      (:) v5 v6
        -> coe
             v1 v5
             (coe MAlonzo.Code.Data.List.Base.du202 (coe v0) (coe v2) (coe v6))
             (coe du2618 (coe v0) (coe v1) (coe v2) (coe v3) (coe v6))
      _ -> MAlonzo.RTE.mazUnreachableError
name2638 = "Data.List.Properties._.foldr-preservesᵒ"
d2638 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30 -> AgdaAny) ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Data.Sum.Base.T30 -> AgdaAny
d2638 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du2638 v4 v5 v6 v7 v8
du2638 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30 -> AgdaAny) ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Data.Sum.Base.T30 -> AgdaAny
du2638 v0 v1 v2 v3 v4
  = case coe v3 of
      []
        -> case coe v4 of
             MAlonzo.Code.Data.Sum.Base.C38 v5 -> coe v5
             _ -> MAlonzo.RTE.mazUnreachableError
      (:) v5 v6
        -> case coe v4 of
             MAlonzo.Code.Data.Sum.Base.C38 v7
               -> coe
                    v1 v5
                    (coe MAlonzo.Code.Data.List.Base.du202 (coe v0) (coe v2) (coe v6))
                    (coe
                       MAlonzo.Code.Data.Sum.Base.C42
                       (coe du2638 (coe v0) (coe v1) (coe v2) (coe v6) (coe v4)))
             MAlonzo.Code.Data.Sum.Base.C42 v7
               -> case coe v7 of
                    MAlonzo.Code.Data.List.Relation.Unary.Any.C38 v10
                      -> coe
                           v1 v5
                           (coe MAlonzo.Code.Data.List.Base.du202 (coe v0) (coe v2) (coe v6))
                           (coe MAlonzo.Code.Data.Sum.Base.C38 (coe v10))
                    MAlonzo.Code.Data.List.Relation.Unary.Any.C46 v10
                      -> coe
                           v1 v5
                           (coe MAlonzo.Code.Data.List.Base.du202 (coe v0) (coe v2) (coe v6))
                           (coe
                              MAlonzo.Code.Data.Sum.Base.C42
                              (coe
                                 du2638 (coe v0) (coe v1) (coe v2) (coe v6)
                                 (coe MAlonzo.Code.Data.Sum.Base.C42 (coe v10))))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name2684 = "Data.List.Properties.foldl-++"
d2684 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2684 = erased
name2710 = "Data.List.Properties.foldl-∷ʳ"
d2710 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2710 = erased
name2730 = "Data.List.Properties.concat-map"
d2730 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [[AgdaAny]] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2730 = erased
name2752 = "Data.List.Properties.sum-++-commute"
d2752 ::
  [Integer] -> [Integer] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2752 = erased
name2768 = "Data.List.Properties.length-replicate"
d2768 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2768 = erased
name2776 = "Data.List.Properties.scanr-defn"
d2776 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2776 = erased
name2858 = "Data.List.Properties.scanl-defn"
d2858 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2858 = erased
name2882 = "Data.List.Properties.length-applyUpTo"
d2882 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (Integer -> AgdaAny) ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2882 = erased
name2896 = "Data.List.Properties.lookup-applyUpTo"
d2896 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (Integer -> AgdaAny) ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d2896 = erased
name2918 = "Data.List.Properties._.length-applyDownFrom"
d2918 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (Integer -> AgdaAny) ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2918 = erased
name2926 = "Data.List.Properties._.lookup-applyDownFrom"
d2926 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (Integer -> AgdaAny) ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d2926 = erased
name2936 = "Data.List.Properties.length-upTo"
d2936 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2936 = erased
name2942 = "Data.List.Properties.lookup-upTo"
d2942 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d2942 = erased
name2946 = "Data.List.Properties.length-downFrom"
d2946 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2946 = erased
name2952 = "Data.List.Properties.lookup-downFrom"
d2952 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d2952 = erased
name2960 = "Data.List.Properties.tabulate-cong"
d2960 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) ->
  (MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) ->
  (MAlonzo.Code.Data.Fin.Base.T6 ->
   MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d2960 = erased
name2970 = "Data.List.Properties.tabulate-lookup"
d2970 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2970 = erased
name2982 = "Data.List.Properties.length-tabulate"
d2982 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d2982 = erased
name3000 = "Data.List.Properties.lookup-tabulate"
d3000 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) ->
  MAlonzo.Code.Data.Fin.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d3000 = erased
name3014 = "Data.List.Properties.map-tabulate"
d3014 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3014 = erased
name3034 = "Data.List.Properties.length-%="
d3034 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Fin.Base.T6 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3034 = erased
name3056 = "Data.List.Properties.length-∷="
d3056 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Fin.Base.T6 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3056 = erased
name3074 = "Data.List.Properties.map-∷="
d3074 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Fin.Base.T6 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3074 = erased
name3100 = "Data.List.Properties.length-─"
d3100 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Fin.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d3100 = erased
name3122 = "Data.List.Properties.map-─"
d3122 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Fin.Base.T6 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3122 = erased
name3144 = "Data.List.Properties.length-take"
d3144 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3144 = erased
name3160 = "Data.List.Properties.length-drop"
d3160 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3160 = erased
name3176 = "Data.List.Properties.take++drop"
d3176 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3176 = erased
name3192 = "Data.List.Properties.splitAt-defn"
d3192 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3192 = erased
name3236 = "Data.List.Properties._.takeWhile++dropWhile"
d3236 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3236 = erased
name3256 = "Data.List.Properties._.span-defn"
d3256 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3256 = erased
name3290 = "Data.List.Properties._.length-filter"
d3290 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> MAlonzo.Code.Data.Nat.Base.T6
d3290 v0 v1 v2 v3 v4 v5 = du3290 v4 v5
du3290 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> MAlonzo.Code.Data.Nat.Base.T6
du3290 v0 v1
  = case coe v1 of
      [] -> coe MAlonzo.Code.Data.Nat.Base.C10
      (:) v2 v3
        -> let v4 = MAlonzo.Code.Relation.Nullary.d42 (coe v0 v2) in
           if coe v4
             then coe
                    MAlonzo.Code.Data.Nat.Base.C18 (coe du3290 (coe v0) (coe v3))
             else coe du3290 (coe v0) (coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
name3310 = "Data.List.Properties._.filter-all"
d3310 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T32 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d3310 = erased
name3346 = "Data.List.Properties._.filter-notAll"
d3346 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 ->
  MAlonzo.Code.Data.Nat.Base.T6
d3346 v0 v1 v2 v3 v4 v5 v6 = du3346 v4 v5 v6
du3346 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 ->
  MAlonzo.Code.Data.Nat.Base.T6
du3346 v0 v1 v2
  = case coe v1 of
      (:) v3 v4
        -> case coe v2 of
             MAlonzo.Code.Data.List.Relation.Unary.Any.C38 v7
               -> let v8 = coe v0 v3 in
                  case coe v8 of
                    MAlonzo.Code.Relation.Nullary.C46 v9 v10
                      -> if coe v9
                           then coe
                                  seq (coe v10) (coe MAlonzo.Code.Data.Empty.d10 () erased erased)
                           else coe
                                  MAlonzo.Code.Data.Nat.Base.C18 (coe du3290 (coe v0) (coe v4))
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Data.List.Relation.Unary.Any.C46 v7
               -> let v8 = MAlonzo.Code.Relation.Nullary.d42 (coe v0 v3) in
                  if coe v8
                    then coe
                           MAlonzo.Code.Data.Nat.Base.C18
                           (coe du3346 (coe v0) (coe v4) (coe v7))
                    else coe du3346 (coe v0) (coe v4) (coe v7)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name3396 = "Data.List.Properties._.filter-some"
d3396 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 ->
  MAlonzo.Code.Data.Nat.Base.T6
d3396 v0 v1 v2 v3 v4 v5 v6 = du3396 v4 v5 v6
du3396 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 ->
  MAlonzo.Code.Data.Nat.Base.T6
du3396 v0 v1 v2
  = case coe v1 of
      (:) v3 v4
        -> case coe v2 of
             MAlonzo.Code.Data.List.Relation.Unary.Any.C38 v7
               -> let v8 = coe v0 v3 in
                  case coe v8 of
                    MAlonzo.Code.Relation.Nullary.C46 v9 v10
                      -> if coe v9
                           then coe
                                  MAlonzo.Code.Data.Nat.Base.C18
                                  (coe MAlonzo.Code.Data.Nat.Base.C10)
                           else coe
                                  seq (coe v10) (coe MAlonzo.Code.Data.Empty.d10 () erased erased)
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Data.List.Relation.Unary.Any.C46 v7
               -> let v8 = MAlonzo.Code.Relation.Nullary.d42 (coe v0 v3) in
                  coe seq (coe v8) (coe du3396 (coe v0) (coe v4) (coe v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name3446 = "Data.List.Properties._.filter-none"
d3446 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T32 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d3446 = erased
name3480 = "Data.List.Properties._.filter-complete"
d3480 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d3480 = erased
name3512 = "Data.List.Properties._.filter-accept"
d3512 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  AgdaAny ->
  [AgdaAny] -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3512 = erased
name3536 = "Data.List.Properties._.filter-reject"
d3536 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  AgdaAny ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d3536 = erased
name3556 = "Data.List.Properties._.filter-idem"
d3556 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3556 = erased
name3586 = "Data.List.Properties._.filter-++"
d3586 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3586 = erased
name3628 = "Data.List.Properties._.length-derun"
d3628 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> MAlonzo.Code.Data.Nat.Base.T6
d3628 v0 v1 v2 v3 v4 v5 = du3628 v4 v5
du3628 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> MAlonzo.Code.Data.Nat.Base.T6
du3628 v0 v1
  = case coe v1 of
      []
        -> coe
             MAlonzo.Code.Data.Nat.Properties.d1434
             (coe
                MAlonzo.Code.Data.List.Base.du258
                (coe MAlonzo.Code.Data.List.Base.du664 (coe v0) (coe v1)))
      (:) v2 v3
        -> case coe v3 of
             []
               -> coe
                    MAlonzo.Code.Data.Nat.Properties.d1434
                    (coe
                       MAlonzo.Code.Data.List.Base.du258
                       (coe MAlonzo.Code.Data.List.Base.du664 (coe v0) (coe v1)))
             (:) v4 v5
               -> let v6 = MAlonzo.Code.Relation.Nullary.d42 (coe v0 v2 v4) in
                  let v7 = coe du3628 (coe v0) (coe v3) in
                  if coe v6 then coe v7 else coe MAlonzo.Code.Data.Nat.Base.C18 v7
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name3660 = "Data.List.Properties._.length-deduplicate"
d3660 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> MAlonzo.Code.Data.Nat.Base.T6
d3660 v0 v1 v2 v3 v4 v5 = du3660 v4 v5
du3660 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> MAlonzo.Code.Data.Nat.Base.T6
du3660 v0 v1
  = case coe v1 of
      [] -> coe MAlonzo.Code.Data.Nat.Base.C10
      (:) v2 v3
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du160
             (coe MAlonzo.Code.Data.Nat.Properties.d1484)
             (\ v4 v5 v6 -> coe MAlonzo.Code.Data.Nat.Properties.du1532 v5 v6)
             (coe
                MAlonzo.Code.Data.List.Base.du258
                (coe MAlonzo.Code.Data.List.Base.du706 (coe v0) (coe v1)))
             (coe MAlonzo.Code.Data.List.Base.du258 v1)
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du228
                (coe MAlonzo.Code.Data.Nat.Properties.d1484)
                (\ v4 v5 v6 v7 v8 ->
                   coe MAlonzo.Code.Data.Nat.Properties.du1652 v7 v8)
                (coe
                   addInt (coe (1 :: Integer))
                   (coe
                      MAlonzo.Code.Data.List.Base.du258
                      (coe
                         MAlonzo.Code.Data.List.Base.du564
                         (coe
                            (\ v4 ->
                               coe MAlonzo.Code.Relation.Nullary.Negation.du52 (coe v0 v2 v4)))
                         (coe du3670 (coe v0) (coe v3)))))
                (coe
                   addInt (coe (1 :: Integer))
                   (coe
                      MAlonzo.Code.Data.List.Base.du258 (coe du3670 (coe v0) (coe v3))))
                (coe MAlonzo.Code.Data.List.Base.du258 v1)
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du228
                   (coe MAlonzo.Code.Data.Nat.Properties.d1484)
                   (\ v4 v5 v6 v7 v8 ->
                      coe MAlonzo.Code.Data.Nat.Properties.du1652 v7 v8)
                   (coe
                      addInt (coe (1 :: Integer))
                      (coe
                         MAlonzo.Code.Data.List.Base.du258 (coe du3670 (coe v0) (coe v3))))
                   (coe
                      addInt (coe (1 :: Integer))
                      (coe MAlonzo.Code.Data.List.Base.du258 v3))
                   (coe MAlonzo.Code.Data.List.Base.du258 v1)
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.C86
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d34
                         (MAlonzo.Code.Relation.Binary.Structures.d80
                            (coe MAlonzo.Code.Data.Nat.Properties.d1484))
                         (addInt
                            (coe (1 :: Integer)) (coe MAlonzo.Code.Data.List.Base.du258 v3))))
                   (coe
                      MAlonzo.Code.Data.Nat.Base.C18 (coe du3660 (coe v0) (coe v3))))
                (coe
                   MAlonzo.Code.Data.Nat.Base.C18
                   (coe
                      du3290
                      (coe
                         (\ v4 ->
                            coe MAlonzo.Code.Relation.Nullary.Negation.du52 (coe v0 v2 v4)))
                      (coe du3670 (coe v0) (coe v3)))))
      _ -> MAlonzo.RTE.mazUnreachableError
name3670 = "Data.List.Properties._._.r"
d3670 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  AgdaAny -> [AgdaAny] -> [AgdaAny]
d3670 v0 v1 v2 v3 v4 v5 v6 = du3670 v4 v6
du3670 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [AgdaAny]
du3670 v0 v1
  = coe MAlonzo.Code.Data.List.Base.du706 (coe v0) (coe v1)
name3678 = "Data.List.Properties._.derun-reject"
d3678 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3678 = erased
name3716 = "Data.List.Properties._.derun-accept"
d3716 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d3716 = erased
name3760 = "Data.List.Properties._.partition-defn"
d3760 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3760 = erased
name3786 = "Data.List.Properties.ʳ++-defn"
d3786 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3786 = erased
name3802 = "Data.List.Properties.ʳ++-++"
d3802 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3802 = erased
name3818 = "Data.List.Properties.ʳ++-ʳ++"
d3818 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3818 = erased
name3832 = "Data.List.Properties.length-ʳ++"
d3832 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3832 = erased
name3846 = "Data.List.Properties.map-ʳ++"
d3846 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3846 = erased
name3866 = "Data.List.Properties.foldr-ʳ++"
d3866 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3866 = erased
name3890 = "Data.List.Properties.foldl-ʳ++"
d3890 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3890 = erased
name3910 = "Data.List.Properties.unfold-reverse"
d3910 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3910 = erased
name3920 = "Data.List.Properties.reverse-++-commute"
d3920 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3920 = erased
name3926 = "Data.List.Properties.reverse-involutive"
d3926 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3926 = erased
name3932 = "Data.List.Properties.length-reverse"
d3932 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3932 = erased
name3938 = "Data.List.Properties.reverse-map-commute"
d3938 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3938 = erased
name3948 = "Data.List.Properties.reverse-foldr"
d3948 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3948 = erased
name3962 = "Data.List.Properties.reverse-foldl"
d3962 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3962 = erased
name3984 = "Data.List.Properties._.∷ʳ-injective"
d3984 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d3984 v0 v1 v2 v3 v4 v5 v6 = du3984 v4 v5
du3984 ::
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du3984 v0 v1
  = case coe v0 of
      []
        -> coe
             seq (coe v1)
             (coe MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
      (:) v2 v3
        -> case coe v1 of
             (:) v4 v5
               -> let v6 = coe du42 in
                  coe
                    seq (coe v6)
                    (coe
                       MAlonzo.Code.Data.Product.du148 erased (coe (\ v7 v8 -> v8))
                       (coe du3984 (coe v3) (coe v5)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name4018 = "Data.List.Properties._.∷ʳ-injectiveˡ"
d4018 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4018 = erased
name4030 = "Data.List.Properties._.∷ʳ-injectiveʳ"
d4030 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4030 = erased
name4038 = "Data.List.Properties.gfilter-just"
d4038 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4038 = erased
name4040 = "Data.List.Properties.gfilter-nothing"
d4040 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4040 = erased
name4042 = "Data.List.Properties.gfilter-concatMap"
d4042 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4042 = erased
name4044 = "Data.List.Properties.length-gfilter"
d4044 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  [AgdaAny] -> MAlonzo.Code.Data.Nat.Base.T6
d4044 v0 v1 v2 v3 v4 v5 = coe du230 v4 v5
name4046 = "Data.List.Properties.right-identity-unique"
d4046 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4046 = erased
name4048 = "Data.List.Properties.left-identity-unique"
d4048 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4048 = erased
name4060 = "Data.List.Properties._.boolTakeWhile++boolDropWhile"
d4060 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> Bool) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4060 = erased
name4080 = "Data.List.Properties._.boolSpan-defn"
d4080 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> Bool) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4080 = erased
name4102 = "Data.List.Properties._.length-boolFilter"
d4102 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> Bool) -> [AgdaAny] -> MAlonzo.Code.Data.Nat.Base.T6
d4102 v0 v1 v2 v3 = du4102 v2 v3
du4102 ::
  (AgdaAny -> Bool) -> [AgdaAny] -> MAlonzo.Code.Data.Nat.Base.T6
du4102 v0 v1
  = coe
      du230
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Data.Bool.Base.du42 (coe v0 v2)
              (coe MAlonzo.Code.Data.Maybe.Base.C30 (coe v2))
              (coe MAlonzo.Code.Data.Maybe.Base.C26)))
      (coe v1)
name4108 = "Data.List.Properties._.boolPartition-defn"
d4108 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> Bool) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4108 = erased
name4144 = "Data.List.Properties._.boolFilter-filters"
d4144 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> MAlonzo.Code.Data.List.Relation.Unary.All.T32
d4144 v0 v1 v2 v3 v4 v5 = du4144 v4 v5
du4144 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> MAlonzo.Code.Data.List.Relation.Unary.All.T32
du4144 v0 v1
  = case coe v1 of
      [] -> coe MAlonzo.Code.Data.List.Relation.Unary.All.C38
      (:) v2 v3
        -> let v4 = coe v0 v2 in
           case coe v4 of
             MAlonzo.Code.Relation.Nullary.C46 v5 v6
               -> if coe v5
                    then coe
                           MAlonzo.Code.Data.List.Relation.Unary.All.C48
                           (coe MAlonzo.Code.Relation.Nullary.Reflects.du20 (coe v6))
                           (coe du4144 (coe v0) (coe v3))
                    else coe du4144 (coe v0) (coe v3)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name4164 = "Data.List.Properties.idIsFold"
d4164 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4164 = erased
name4166 = "Data.List.Properties.++IsFold"
d4166 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4166 = erased
name4168 = "Data.List.Properties.mapIsFold"
d4168 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4168 = erased
name4223 = "Data.List.Properties..absurdlambda"
d4223 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d4223 = erased
name4413 = "Data.List.Properties..absurdlambda"
d4413 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d4413 = erased
