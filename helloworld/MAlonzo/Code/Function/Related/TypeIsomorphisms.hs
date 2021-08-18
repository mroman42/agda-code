{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Function.Related.TypeIsomorphisms where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Algebra.Structures.Biased
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Data.Product.Function.NonDependent.Propositional
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.Sum.Function.Propositional
import qualified MAlonzo.Code.Function.Equality
import qualified MAlonzo.Code.Function.Equivalence
import qualified MAlonzo.Code.Function.Inverse
import qualified MAlonzo.Code.Function.Related
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Relation.Nullary.Reflects

name22 = "Function.Related.TypeIsomorphisms.Σ-assoc"
d22 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> MAlonzo.Code.Function.Inverse.T58
d22 v0 v1 v2 v3 v4 v5 = du22
du22 :: MAlonzo.Code.Function.Inverse.T58
du22
  = coe
      MAlonzo.Code.Function.Inverse.du156
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Agda.Builtin.Sigma.C32 v1 v2
                -> case coe v1 of
                     MAlonzo.Code.Agda.Builtin.Sigma.C32 v3 v4
                       -> coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v3)
                            (coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v4) (coe v2))
                     _ -> MAlonzo.RTE.mazUnreachableError
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C32
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C32
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe v0))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d28
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe v0))))
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d30
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe v0)))))
      erased erased
name52 = "Function.Related.TypeIsomorphisms.×-comm"
d52 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> MAlonzo.Code.Function.Inverse.T58
d52 v0 v1 v2 v3 = du52
du52 :: MAlonzo.Code.Function.Inverse.T58
du52
  = coe
      MAlonzo.Code.Function.Inverse.du156
      (coe MAlonzo.Code.Data.Product.du250)
      (coe MAlonzo.Code.Data.Product.du250) erased erased
name60 = "Function.Related.TypeIsomorphisms.×-identityˡ"
d60 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Function.Inverse.T58
d60 v0 v1 = du60
du60 :: MAlonzo.Code.Function.Inverse.T58
du60
  = coe
      MAlonzo.Code.Function.Inverse.du156
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d30)
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C32
              (coe
                 MAlonzo.Code.Level.C20 (coe MAlonzo.Code.Agda.Builtin.Unit.C8))
              (coe v0)))
      erased erased
name68 = "Function.Related.TypeIsomorphisms.×-identityʳ"
d68 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Function.Inverse.T58
d68 v0 v1 = du68
du68 :: MAlonzo.Code.Function.Inverse.T58
du68
  = coe
      MAlonzo.Code.Function.Inverse.du156
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d28)
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v0)
              (coe
                 MAlonzo.Code.Level.C20 (coe MAlonzo.Code.Agda.Builtin.Unit.C8))))
      erased erased
name78 = "Function.Related.TypeIsomorphisms.×-identity"
d78 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d78 v0 = du78
du78 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
du78
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32 (\ v0 -> coe du60)
      (\ v0 -> coe du68)
name84 = "Function.Related.TypeIsomorphisms.×-zeroˡ"
d84 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Function.Inverse.T58
d84 v0 v1 = du84 v0
du84 ::
  MAlonzo.Code.Agda.Primitive.T4 -> MAlonzo.Code.Function.Inverse.T58
du84 v0
  = coe
      MAlonzo.Code.Function.Inverse.du156
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d28)
      (coe (\ v1 -> coe MAlonzo.Code.Data.Empty.d10 v0 erased erased))
      erased erased
name92 = "Function.Related.TypeIsomorphisms.×-zeroʳ"
d92 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Function.Inverse.T58
d92 v0 v1 = du92 v0
du92 ::
  MAlonzo.Code.Agda.Primitive.T4 -> MAlonzo.Code.Function.Inverse.T58
du92 v0
  = coe
      MAlonzo.Code.Function.Inverse.du156
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d30)
      (coe (\ v1 -> coe MAlonzo.Code.Data.Empty.d10 v0 erased erased))
      erased erased
name100 = "Function.Related.TypeIsomorphisms.×-zero"
d100 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d100 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32 (\ v1 -> coe du84 (coe v0))
      (\ v1 -> coe du92 (coe v0))
name106 = "Function.Related.TypeIsomorphisms.⊎-assoc"
d106 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> () -> MAlonzo.Code.Function.Inverse.T58
d106 v0 v1 v2 v3 = du106
du106 :: MAlonzo.Code.Function.Inverse.T58
du106
  = coe
      MAlonzo.Code.Function.Inverse.du156
      (coe
         MAlonzo.Code.Data.Sum.Base.du66
         (coe
            MAlonzo.Code.Data.Sum.Base.du66
            (coe MAlonzo.Code.Data.Sum.Base.C38)
            (\ v0 ->
               coe
                 MAlonzo.Code.Data.Sum.Base.C42
                 (coe MAlonzo.Code.Data.Sum.Base.C38 (coe v0))))
         (\ v0 ->
            coe
              MAlonzo.Code.Data.Sum.Base.C42
              (coe MAlonzo.Code.Data.Sum.Base.C42 (coe v0))))
      (coe
         MAlonzo.Code.Data.Sum.Base.du66
         (\ v0 ->
            coe
              MAlonzo.Code.Data.Sum.Base.C38
              (coe MAlonzo.Code.Data.Sum.Base.C38 (coe v0)))
         (coe
            MAlonzo.Code.Data.Sum.Base.du66
            (\ v0 ->
               coe
                 MAlonzo.Code.Data.Sum.Base.C38
                 (coe MAlonzo.Code.Data.Sum.Base.C42 (coe v0)))
            (coe MAlonzo.Code.Data.Sum.Base.C42)))
      erased erased
name130 = "Function.Related.TypeIsomorphisms.⊎-comm"
d130 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> MAlonzo.Code.Function.Inverse.T58
d130 v0 v1 v2 v3 = du130
du130 :: MAlonzo.Code.Function.Inverse.T58
du130
  = coe
      MAlonzo.Code.Function.Inverse.du156
      (coe MAlonzo.Code.Data.Sum.Base.du76)
      (coe MAlonzo.Code.Data.Sum.Base.du76) erased erased
name134 = "Function.Related.TypeIsomorphisms.⊎-identityˡ"
d134 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Function.Inverse.T58
d134 v0 v1 = du134
du134 :: MAlonzo.Code.Function.Inverse.T58
du134
  = coe
      MAlonzo.Code.Function.Inverse.du156
      (coe MAlonzo.Code.Data.Sum.Base.du66 erased (\ v0 -> v0))
      (coe MAlonzo.Code.Data.Sum.Base.C42) erased erased
name142 = "Function.Related.TypeIsomorphisms.⊎-identityʳ"
d142 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Function.Inverse.T58
d142 v0 v1 = du142
du142 :: MAlonzo.Code.Function.Inverse.T58
du142
  = coe
      MAlonzo.Code.Function.Inverse.du156
      (coe MAlonzo.Code.Data.Sum.Base.du66 (\ v0 -> v0) erased)
      (coe MAlonzo.Code.Data.Sum.Base.C38) erased erased
name150 = "Function.Related.TypeIsomorphisms.⊎-identity"
d150 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d150 v0 = du150
du150 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
du150
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32 (\ v0 -> coe du134)
      (\ v0 -> coe du142)
name156 = "Function.Related.TypeIsomorphisms.×-distribˡ-⊎"
d156 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> () -> MAlonzo.Code.Function.Inverse.T58
d156 v0 v1 v2 v3 = du156
du156 :: MAlonzo.Code.Function.Inverse.T58
du156
  = coe
      MAlonzo.Code.Function.Inverse.du156
      (coe
         MAlonzo.Code.Data.Product.du232
         (coe
            (\ v0 ->
               coe
                 MAlonzo.Code.Data.Sum.Base.du66
                 (\ v1 ->
                    coe
                      MAlonzo.Code.Data.Sum.Base.C38
                      (coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v0) (coe v1)))
                 (\ v1 ->
                    coe
                      MAlonzo.Code.Data.Sum.Base.C42
                      (coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v0) (coe v1))))))
      (coe
         MAlonzo.Code.Data.Sum.Base.du66
         (coe
            MAlonzo.Code.Data.Product.du170
            (coe (\ v0 -> coe MAlonzo.Code.Data.Sum.Base.C38)))
         (coe
            MAlonzo.Code.Data.Product.du170
            (coe (\ v0 -> coe MAlonzo.Code.Data.Sum.Base.C42))))
      erased erased
name178 = "Function.Related.TypeIsomorphisms.×-distribʳ-⊎"
d178 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> () -> MAlonzo.Code.Function.Inverse.T58
d178 v0 v1 v2 v3 = du178
du178 :: MAlonzo.Code.Function.Inverse.T58
du178
  = coe
      MAlonzo.Code.Function.Inverse.du156
      (coe
         MAlonzo.Code.Data.Product.du232
         (coe
            MAlonzo.Code.Data.Sum.Base.du66
            (\ v0 v1 ->
               coe
                 MAlonzo.Code.Data.Sum.Base.C38
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v0) (coe v1)))
            (\ v0 v1 ->
               coe
                 MAlonzo.Code.Data.Sum.Base.C42
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v0) (coe v1)))))
      (coe
         MAlonzo.Code.Data.Sum.Base.du66
         (coe
            MAlonzo.Code.Data.Product.du158
            (coe MAlonzo.Code.Data.Sum.Base.C38))
         (coe
            MAlonzo.Code.Data.Product.du158
            (coe MAlonzo.Code.Data.Sum.Base.C42)))
      erased erased
name196 = "Function.Related.TypeIsomorphisms.×-distrib-⊎"
d196 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d196 v0 = du196
du196 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
du196
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32 (\ v0 v1 v2 -> coe du156)
      (\ v0 v1 v2 -> coe du178)
name204 = "Function.Related.TypeIsomorphisms.×-isMagma"
d204 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Structures.T80
d204 v0 v1 = du204 v0
du204 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Algebra.Structures.T80
du204 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C423
      (coe MAlonzo.Code.Function.Related.du292 (coe v0))
      (coe
         (\ v1 v2 v3 v4 ->
            coe
              MAlonzo.Code.Data.Product.Function.NonDependent.Propositional.du102
              (coe MAlonzo.Code.Function.Related.d148 (coe v0))))
name212 = "Function.Related.TypeIsomorphisms.×-magma"
d212 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Agda.Primitive.T4 -> MAlonzo.Code.Algebra.Bundles.T30
d212 v0 v1 = du212 v0
du212 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Algebra.Bundles.T30
du212 v0
  = coe MAlonzo.Code.Algebra.Bundles.C255 erased (coe du204 (coe v0))
name222 = "Function.Related.TypeIsomorphisms.×-isSemigroup"
d222 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Structures.T116
d222 v0 v1 = du222 v0
du222 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Algebra.Structures.T116
du222 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C1721 (coe du204 (coe v0))
      (coe
         (\ v1 v2 v3 ->
            coe
              MAlonzo.Code.Function.Related.du130
              (MAlonzo.Code.Function.Related.d148 (coe v0)) (coe du22)))
name236 = "Function.Related.TypeIsomorphisms.×-semigroup"
d236 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Agda.Primitive.T4 -> MAlonzo.Code.Algebra.Bundles.T80
d236 v0 v1 = du236 v0
du236 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Algebra.Bundles.T80
du236 v0
  = coe MAlonzo.Code.Algebra.Bundles.C877 erased (coe du222 (coe v0))
name246 = "Function.Related.TypeIsomorphisms.×-isMonoid"
d246 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Structures.T314
d246 v0 v1 = du246 v0
du246 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Algebra.Structures.T314
du246 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C4201 (coe du222 (coe v0))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe
            (\ v1 ->
               coe
                 MAlonzo.Code.Function.Related.du130
                 (MAlonzo.Code.Function.Related.d148 (coe v0)) (coe du60)))
         (coe
            (\ v1 ->
               coe
                 MAlonzo.Code.Function.Related.du130
                 (MAlonzo.Code.Function.Related.d148 (coe v0)) (coe du68))))
name254 = "Function.Related.TypeIsomorphisms.×-monoid"
d254 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Agda.Primitive.T4 -> MAlonzo.Code.Algebra.Bundles.T422
d254 v0 v1 = du254 v0
du254 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Algebra.Bundles.T422
du254 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C4689 erased erased
      (coe du246 (coe v0))
name264 = "Function.Related.TypeIsomorphisms.×-isCommutativeMonoid"
d264 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Structures.T362
d264 v0 v1 = du264 v0
du264 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Algebra.Structures.T362
du264 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C5263 (coe du246 (coe v0))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Function.Related.du130
              (MAlonzo.Code.Function.Related.d148 (coe v0)) (coe du52)))
name276 = "Function.Related.TypeIsomorphisms.×-commutativeMonoid"
d276 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Agda.Primitive.T4 -> MAlonzo.Code.Algebra.Bundles.T496
d276 v0 v1 = du276 v0
du276 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Algebra.Bundles.T496
du276 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C5649 erased erased
      (coe du264 (coe v0))
name286 = "Function.Related.TypeIsomorphisms.⊎-isMagma"
d286 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Structures.T80
d286 v0 v1 = du286 v0
du286 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Algebra.Structures.T80
du286 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C423
      (coe MAlonzo.Code.Function.Related.du292 (coe v0))
      (coe
         (\ v1 v2 v3 v4 ->
            coe
              MAlonzo.Code.Data.Sum.Function.Propositional.du100
              (coe MAlonzo.Code.Function.Related.d148 (coe v0))))
name294 = "Function.Related.TypeIsomorphisms.⊎-magma"
d294 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Agda.Primitive.T4 -> MAlonzo.Code.Algebra.Bundles.T30
d294 v0 v1 = du294 v0
du294 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Algebra.Bundles.T30
du294 v0
  = coe MAlonzo.Code.Algebra.Bundles.C255 erased (coe du286 (coe v0))
name304 = "Function.Related.TypeIsomorphisms.⊎-isSemigroup"
d304 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Structures.T116
d304 v0 v1 = du304 v0
du304 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Algebra.Structures.T116
du304 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C1721 (coe du286 (coe v0))
      (coe
         (\ v1 v2 v3 ->
            coe
              MAlonzo.Code.Function.Related.du130
              (MAlonzo.Code.Function.Related.d148 (coe v0)) (coe du106)))
name318 = "Function.Related.TypeIsomorphisms.⊎-semigroup"
d318 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Agda.Primitive.T4 -> MAlonzo.Code.Algebra.Bundles.T80
d318 v0 v1 = du318 v0
du318 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Algebra.Bundles.T80
du318 v0
  = coe MAlonzo.Code.Algebra.Bundles.C877 erased (coe du304 (coe v0))
name328 = "Function.Related.TypeIsomorphisms.⊎-isMonoid"
d328 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Structures.T314
d328 v0 v1 = du328 v0
du328 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Algebra.Structures.T314
du328 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C4201 (coe du304 (coe v0))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe
            (\ v1 ->
               coe
                 MAlonzo.Code.Function.Related.du130
                 (MAlonzo.Code.Function.Related.d148 (coe v0)) (coe du134)))
         (coe
            (\ v1 ->
               coe
                 MAlonzo.Code.Function.Related.du130
                 (MAlonzo.Code.Function.Related.d148 (coe v0)) (coe du142))))
name336 = "Function.Related.TypeIsomorphisms.⊎-monoid"
d336 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Agda.Primitive.T4 -> MAlonzo.Code.Algebra.Bundles.T422
d336 v0 v1 = du336 v0
du336 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Algebra.Bundles.T422
du336 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C4689 erased erased
      (coe du328 (coe v0))
name346 = "Function.Related.TypeIsomorphisms.⊎-isCommutativeMonoid"
d346 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Structures.T362
d346 v0 v1 = du346 v0
du346 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Algebra.Structures.T362
du346 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C5263 (coe du328 (coe v0))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Function.Related.du130
              (MAlonzo.Code.Function.Related.d148 (coe v0)) (coe du130)))
name358 = "Function.Related.TypeIsomorphisms.⊎-commutativeMonoid"
d358 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Agda.Primitive.T4 -> MAlonzo.Code.Algebra.Bundles.T496
d358 v0 v1 = du358 v0
du358 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Algebra.Bundles.T496
du358 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C5649 erased erased
      (coe du346 (coe v0))
name368
  = "Function.Related.TypeIsomorphisms.×-⊎-isCommutativeSemiring"
d368 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Structures.T1280
d368 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.Biased.du1576 erased erased erased
      (coe
         MAlonzo.Code.Algebra.Structures.Biased.C15865 (coe du346 (coe v0))
         (coe du264 (coe v0))
         (coe
            (\ v2 v3 v4 ->
               coe
                 MAlonzo.Code.Function.Related.du130
                 (MAlonzo.Code.Function.Related.d148 (coe v0)) (coe du178)))
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Function.Related.du130
                 (MAlonzo.Code.Function.Related.d148 (coe v0))
                 (coe du84 (coe v1)))))
name382
  = "Function.Related.TypeIsomorphisms.×-⊎-commutativeSemiring"
d382 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1818
d382 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C20443 erased erased erased erased
      (d368 (coe v0) (coe v1))
name408 = "Function.Related.TypeIsomorphisms.ΠΠ↔ΠΠ"
d408 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> MAlonzo.Code.Function.Inverse.T58
d408 v0 v1 v2 v3 v4 v5 = du408
du408 :: MAlonzo.Code.Function.Inverse.T58
du408
  = coe
      MAlonzo.Code.Function.Inverse.du156
      (coe (\ v0 v1 v2 -> coe v0 v2 v1))
      (coe (\ v0 v1 v2 -> coe v0 v2 v1)) erased erased
name434 = "Function.Related.TypeIsomorphisms.∃∃↔∃∃"
d434 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> MAlonzo.Code.Function.Inverse.T58
d434 v0 v1 v2 v3 v4 v5 = du434
du434 :: MAlonzo.Code.Function.Inverse.T58
du434
  = coe
      MAlonzo.Code.Function.Inverse.du156 (coe du450) (coe du466) erased
      erased
name450 = "Function.Related.TypeIsomorphisms._.to"
d450 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d450 v0 v1 v2 v3 v4 v5 v6 = du450 v6
du450 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du450 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C32 v3 v4
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v3)
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v1) (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name466 = "Function.Related.TypeIsomorphisms._.from"
d466 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d466 v0 v1 v2 v3 v4 v5 v6 = du466 v6
du466 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du466 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C32 v3 v4
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v3)
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v1) (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name490 = "Function.Related.TypeIsomorphisms.Π↔Π"
d490 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> ()) -> MAlonzo.Code.Function.Inverse.T58
d490 v0 v1 v2 v3 = du490
du490 :: MAlonzo.Code.Function.Inverse.T58
du490
  = coe
      MAlonzo.Code.Function.Inverse.du156 (coe (\ v0 v1 -> coe v0 v1))
      (coe (\ v0 v1 -> coe v0 v1)) erased erased
name520 = "Function.Related.TypeIsomorphisms._→-cong-⇔_"
d520 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Function.Equivalence.T16 ->
  MAlonzo.Code.Function.Equivalence.T16 ->
  MAlonzo.Code.Function.Equivalence.T16
d520 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du520 v8 v9
du520 ::
  MAlonzo.Code.Function.Equivalence.T16 ->
  MAlonzo.Code.Function.Equivalence.T16 ->
  MAlonzo.Code.Function.Equivalence.T16
du520 v0 v1
  = coe
      MAlonzo.Code.Function.Equivalence.du56
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Function.Equality.d38
              (MAlonzo.Code.Function.Equivalence.d34 (coe v1))
              (coe
                 v2
                 (coe
                    MAlonzo.Code.Function.Equality.d38
                    (MAlonzo.Code.Function.Equivalence.d36 (coe v0)) v3))))
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Function.Equality.d38
              (MAlonzo.Code.Function.Equivalence.d36 (coe v1))
              (coe
                 v2
                 (coe
                    MAlonzo.Code.Function.Equality.d38
                    (MAlonzo.Code.Function.Equivalence.d34 (coe v0)) v3))))
name552 = "Function.Related.TypeIsomorphisms.→-cong"
d552 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (() ->
   (AgdaAny -> ()) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
   MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  (() ->
   (AgdaAny -> ()) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
   MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  MAlonzo.Code.Function.Related.T142 ->
  () -> () -> () -> () -> AgdaAny -> AgdaAny -> AgdaAny
d552 v0 v1 v2 v3 v4 v5 v6 = du552 v4 v5 v6
du552 ::
  (() ->
   (AgdaAny -> ()) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
   MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  (() ->
   (AgdaAny -> ()) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
   MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  MAlonzo.Code.Function.Related.T142 ->
  () -> () -> () -> () -> AgdaAny -> AgdaAny -> AgdaAny
du552 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Function.Related.C144
        -> coe (\ v3 v4 v5 v6 v7 v8 -> coe du520 (coe v7) (coe v8))
      MAlonzo.Code.Function.Related.C146
        -> coe
             (\ v3 v4 v5 v6 v7 v8 ->
                coe
                  MAlonzo.Code.Function.Inverse.C2555
                  (coe
                     MAlonzo.Code.Function.Equivalence.d34
                     (coe du574 (coe v7) (coe v8)))
                  (coe
                     MAlonzo.Code.Function.Equivalence.d36
                     (coe du574 (coe v7) (coe v8)))
                  (coe
                     MAlonzo.Code.Function.Inverse.C1525
                     (coe
                        (\ v9 ->
                           coe
                             v0 v3 (\ v10 -> v5)
                             (coe
                                MAlonzo.Code.Function.Equality.d38
                                (MAlonzo.Code.Function.Equivalence.d36
                                   (coe du574 (coe v7) (coe v8)))
                                (coe
                                   MAlonzo.Code.Function.Equality.d38
                                   (MAlonzo.Code.Function.Equivalence.d34
                                      (coe du574 (coe v7) (coe v8)))
                                   v9))
                             v9 erased))
                     (coe
                        (\ v9 ->
                           coe
                             v1 v4 (\ v10 -> v6)
                             (coe
                                MAlonzo.Code.Function.Equality.d38
                                (MAlonzo.Code.Function.Equivalence.d34
                                   (coe du574 (coe v7) (coe v8)))
                                (coe
                                   MAlonzo.Code.Function.Equality.d38
                                   (MAlonzo.Code.Function.Equivalence.d36
                                      (coe du574 (coe v7) (coe v8)))
                                   v9))
                             v9 erased))))
      _ -> MAlonzo.RTE.mazUnreachableError
name574 = "Function.Related.TypeIsomorphisms._.A→C⇔B→D"
d574 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (() ->
   (AgdaAny -> ()) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
   MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  (() ->
   (AgdaAny -> ()) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
   MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  () ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Function.Inverse.T58 ->
  MAlonzo.Code.Function.Inverse.T58 ->
  MAlonzo.Code.Function.Equivalence.T16
d574 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du574 v10 v11
du574 ::
  MAlonzo.Code.Function.Inverse.T58 ->
  MAlonzo.Code.Function.Inverse.T58 ->
  MAlonzo.Code.Function.Equivalence.T16
du574 v0 v1
  = coe
      du520
      (coe
         MAlonzo.Code.Function.Related.du130
         (coe MAlonzo.Code.Function.Related.C58) v0)
      (coe
         MAlonzo.Code.Function.Related.du130
         (coe MAlonzo.Code.Function.Related.C58) v1)
name592 = "Function.Related.TypeIsomorphisms.¬-cong-⇔"
d592 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Function.Equivalence.T16 ->
  MAlonzo.Code.Function.Equivalence.T16
d592 v0 v1 v2 v3 v4 = du592 v4
du592 ::
  MAlonzo.Code.Function.Equivalence.T16 ->
  MAlonzo.Code.Function.Equivalence.T16
du592 v0
  = coe
      du520 (coe v0)
      (coe
         MAlonzo.Code.Function.Related.du410
         (coe MAlonzo.Code.Function.Related.C58))
name610 = "Function.Related.TypeIsomorphisms.¬-cong"
d610 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (() ->
   (AgdaAny -> ()) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
   MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  (() ->
   (AgdaAny -> ()) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
   MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  MAlonzo.Code.Function.Related.T142 ->
  () -> () -> AgdaAny -> AgdaAny
d610 v0 v1 v2 v3 v4 v5 v6 v7 = du610 v4 v7
du610 :: MAlonzo.Code.Function.Related.T142 -> AgdaAny -> AgdaAny
du610 v0 v1
  = coe
      du552 erased erased v0 erased erased erased erased v1
      (coe
         MAlonzo.Code.Function.Related.du410
         (coe MAlonzo.Code.Function.Related.d148 (coe v0)))
name640 = "Function.Related.TypeIsomorphisms.Related-cong"
d640 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  () ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Function.Equivalence.T16
d640 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du640 v0 v9 v10
du640 ::
  MAlonzo.Code.Function.Related.T142 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Function.Equivalence.T16
du640 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Equivalence.du56
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Function.Related.du340
              (coe MAlonzo.Code.Function.Related.d148 (coe v0))
              (coe MAlonzo.Code.Function.Related.du286 v0 v1)
              (coe
                 MAlonzo.Code.Function.Related.du340
                 (coe MAlonzo.Code.Function.Related.d148 (coe v0)) (coe v3)
                 (coe
                    MAlonzo.Code.Function.Related.du340
                    (coe MAlonzo.Code.Function.Related.d148 (coe v0)) (coe v2)
                    (coe
                       MAlonzo.Code.Function.Related.du410
                       (coe MAlonzo.Code.Function.Related.d148 (coe v0)))))))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Function.Related.du340
              (coe MAlonzo.Code.Function.Related.d148 (coe v0)) (coe v1)
              (coe
                 MAlonzo.Code.Function.Related.du340
                 (coe MAlonzo.Code.Function.Related.d148 (coe v0)) (coe v3)
                 (coe
                    MAlonzo.Code.Function.Related.du340
                    (coe MAlonzo.Code.Function.Related.d148 (coe v0))
                    (coe MAlonzo.Code.Function.Related.du286 v0 v2)
                    (coe
                       MAlonzo.Code.Function.Related.du410
                       (coe MAlonzo.Code.Function.Related.d148 (coe v0)))))))
name672 = "Function.Related.TypeIsomorphisms.True↔"
d672 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Nullary.T32 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  MAlonzo.Code.Function.Inverse.T58
d672 v0 v1 v2 v3 = du672 v2
du672 ::
  MAlonzo.Code.Relation.Nullary.T32 ->
  MAlonzo.Code.Function.Inverse.T58
du672 v0
  = case coe v0 of
      MAlonzo.Code.Relation.Nullary.C46 v1 v2
        -> if coe v1
             then coe
                    MAlonzo.Code.Function.Inverse.du156
                    (coe
                       (\ v3 -> coe MAlonzo.Code.Relation.Nullary.Reflects.du20 (coe v2)))
                    (coe (\ v3 -> coe MAlonzo.Code.Agda.Builtin.Unit.C8)) erased erased
             else coe
                    MAlonzo.Code.Function.Inverse.du156 erased
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.du20 (coe v2)) erased
                    erased
      _ -> MAlonzo.RTE.mazUnreachableError
name700 = "Function.Related.TypeIsomorphisms.Σ-≡,≡↔≡"
d700 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Function.Inverse.T58
d700 v0 v1 v2 v3 v4 v5 = du700
du700 :: MAlonzo.Code.Function.Inverse.T58
du700
  = coe
      MAlonzo.Code.Function.Inverse.du156 erased (\ v0 -> coe du724)
      erased erased
name716 = "Function.Related.TypeIsomorphisms._.to"
d716 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d716 = erased
name724 = "Function.Related.TypeIsomorphisms._.from"
d724 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d724 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du724
du724 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
du724 = coe MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased
name734 = "Function.Related.TypeIsomorphisms._.left-inverse-of"
d734 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d734 = erased
name742 = "Function.Related.TypeIsomorphisms._.right-inverse-of"
d742 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d742 = erased
name756 = "Function.Related.TypeIsomorphisms.×-≡,≡↔≡"
d756 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Function.Inverse.T58
d756 v0 v1 v2 v3 v4 v5 = du756
du756 :: MAlonzo.Code.Function.Inverse.T58
du756
  = coe
      MAlonzo.Code.Function.Inverse.du156 erased (\ v0 -> coe du776)
      erased erased
name770 = "Function.Related.TypeIsomorphisms._.to"
d770 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d770 = erased
name776 = "Function.Related.TypeIsomorphisms._.from"
d776 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d776 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du776
du776 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
du776 = coe MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased
name784 = "Function.Related.TypeIsomorphisms._.left-inverse-of"
d784 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d784 = erased
name792 = "Function.Related.TypeIsomorphisms._.right-inverse-of"
d792 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d792 = erased
name808 = "Function.Related.TypeIsomorphisms.×-≡×≡↔≡,≡"
d808 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Function.Inverse.T58
d808 v0 v1 v2 v3 v4 v5 v6 = du808
du808 :: MAlonzo.Code.Function.Inverse.T58
du808
  = coe
      MAlonzo.Code.Function.Inverse.du156 erased (coe du822) erased
      erased
name820 = "Function.Related.TypeIsomorphisms._.to"
d820 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d820 = erased
name822 = "Function.Related.TypeIsomorphisms._.from"
d822 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d822 v0 v1 v2 v3 v4 v5 v6 = du822
du822 ::
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du822 = coe MAlonzo.Code.Data.Product.du132 erased erased
name826 = "Function.Related.TypeIsomorphisms._.from∘to"
d826 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d826 = erased
name830 = "Function.Related.TypeIsomorphisms._.to∘from"
d830 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d830 = erased
name832 = "Function.Related.TypeIsomorphisms.×-CommutativeMonoid"
d832 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Agda.Primitive.T4 -> MAlonzo.Code.Algebra.Bundles.T496
d832 v0 v1 = coe du276 v0
name834 = "Function.Related.TypeIsomorphisms.⊎-CommutativeMonoid"
d834 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Agda.Primitive.T4 -> MAlonzo.Code.Algebra.Bundles.T496
d834 v0 v1 = coe du358 v0
name836
  = "Function.Related.TypeIsomorphisms.×⊎-CommutativeSemiring"
d836 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1818
d836 = coe d382
name7807 = "Function.Related.TypeIsomorphisms..absurdlambda"
d7807 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Level.T8 -> MAlonzo.Code.Agda.Builtin.Equality.T12
d7807 = erased
name7815 = "Function.Related.TypeIsomorphisms..absurdlambda"
d7815 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Level.T8 -> AgdaAny
d7815 = erased
name8183 = "Function.Related.TypeIsomorphisms..absurdlambda"
d8183 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Level.T8 -> MAlonzo.Code.Agda.Builtin.Equality.T12
d8183 = erased
name8191 = "Function.Related.TypeIsomorphisms..absurdlambda"
d8191 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Level.T8 -> AgdaAny
d8191 = erased
name48349 = "Function.Related.TypeIsomorphisms..absurdlambda"
d48349 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Nullary.T14 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  MAlonzo.Code.Data.Empty.T4 -> AgdaAny
d48349 = erased
name48365 = "Function.Related.TypeIsomorphisms..absurdlambda"
d48365 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Nullary.T14 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  MAlonzo.Code.Data.Empty.T4 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d48365 = erased
