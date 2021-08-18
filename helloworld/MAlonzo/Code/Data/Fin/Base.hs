{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Fin.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Sum.Base

name6 = "Data.Fin.Base.Fin"
d6 a0 = ()
data T6 = C10 | C16 T6
name20 = "Data.Fin.Base.toℕ"
d20 :: Integer -> T6 -> Integer
d20 v0 v1 = du20 v1
du20 :: T6 -> Integer
du20 v0
  = case coe v0 of
      C10 -> coe (0 :: Integer)
      C16 v2 -> coe addInt (coe (1 :: Integer)) (coe du20 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
name26 = "Data.Fin.Base.Fin′"
d26 :: Integer -> T6 -> ()
d26 = erased
name36 = "Data.Fin.Base.cast"
d36 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> T6 -> T6
d36 v0 v1 v2 v3 = du36 v0 v3
du36 :: Integer -> T6 -> T6
du36 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> case coe v1 of
             C10 -> coe C10
             C16 v3
               -> coe
                    C16
                    (coe du36 (coe MAlonzo.Code.Data.Nat.Base.d62 (coe v0)) (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
name58 = "Data.Fin.Base.fromℕ"
d58 :: Integer -> T6
d58 v0
  = case coe v0 of
      0 -> coe C10
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe C16 (d58 (coe v1))
name66 = "Data.Fin.Base.fromℕ<"
d66 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6 -> T6
d66 v0 v1 v2 = du66 v0
du66 :: Integer -> T6
du66 v0
  = case coe v0 of
      0 -> coe C10
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe C16 (coe du66 (coe v1))
name82 = "Data.Fin.Base.fromℕ<″"
d82 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T156 -> T6
d82 v0 v1 v2 = du82 v0 v2
du82 :: Integer -> MAlonzo.Code.Data.Nat.Base.T156 -> T6
du82 v0 v1
  = case coe v0 of
      0 -> coe seq (coe v1) (coe C10)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             MAlonzo.Code.Data.Nat.Base.C170 v3
               -> coe
                    C16 (coe du82 (coe v2) (coe MAlonzo.Code.Data.Nat.Base.C170 v3))
             _ -> MAlonzo.RTE.mazUnreachableError
name90 = "Data.Fin.Base.raise"
d90 :: Integer -> Integer -> T6 -> T6
d90 v0 v1 v2 = du90 v1 v2
du90 :: Integer -> T6 -> T6
du90 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe C16 (coe du90 (coe v2) (coe v1))
name106 = "Data.Fin.Base.reduce≥"
d106 ::
  Integer -> Integer -> T6 -> MAlonzo.Code.Data.Nat.Base.T6 -> T6
d106 v0 v1 v2 v3 = du106 v0 v2 v3
du106 :: Integer -> T6 -> MAlonzo.Code.Data.Nat.Base.T6 -> T6
du106 v0 v1 v2
  = case coe v0 of
      0 -> coe v1
      _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             C16 v5
               -> case coe v2 of
                    MAlonzo.Code.Data.Nat.Base.C18 v8
                      -> coe du106 (coe v3) (coe v5) (coe v8)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
name122 = "Data.Fin.Base.inject"
d122 :: Integer -> T6 -> T6 -> T6
d122 v0 v1 v2 = du122 v1 v2
du122 :: T6 -> T6 -> T6
du122 v0 v1
  = case coe v0 of
      C16 v3
        -> case coe v1 of
             C10 -> coe C10
             C16 v5 -> coe C16 (coe du122 (coe v3) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name134 = "Data.Fin.Base.inject!"
d134 :: Integer -> T6 -> T6 -> T6
d134 v0 v1 v2 = du134 v1 v2
du134 :: T6 -> T6 -> T6
du134 v0 v1
  = case coe v0 of
      C16 v3
        -> case coe v1 of
             C10 -> coe C10
             C16 v5 -> coe C16 (coe du134 (coe v3) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name142 = "Data.Fin.Base.inject+"
d142 :: Integer -> Integer -> T6 -> T6
d142 v0 v1 v2 = du142 v2
du142 :: T6 -> T6
du142 v0 = coe v0
name152 = "Data.Fin.Base.inject₁"
d152 :: Integer -> T6 -> T6
d152 v0 v1 = du152 v1
du152 :: T6 -> T6
du152 v0 = coe v0
name160 = "Data.Fin.Base.inject≤"
d160 ::
  Integer -> Integer -> T6 -> MAlonzo.Code.Data.Nat.Base.T6 -> T6
d160 v0 v1 v2 v3 = du160 v2
du160 :: T6 -> T6
du160 v0 = coe v0
name176 = "Data.Fin.Base.lower₁"
d176 ::
  Integer ->
  T6 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Data.Empty.T4) ->
  T6
d176 v0 v1 v2 = du176 v0 v1
du176 :: Integer -> T6 -> T6
du176 v0 v1
  = case coe v0 of
      0 -> coe
             seq (coe v1) (coe MAlonzo.Code.Data.Empty.d10 () erased erased)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             C10 -> coe C10
             C16 v4 -> coe C16 (coe du176 (coe v2) (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
name194 = "Data.Fin.Base.strengthen"
d194 :: Integer -> T6 -> T6
d194 v0 v1 = du194 v1
du194 :: T6 -> T6
du194 v0 = coe v0
name202 = "Data.Fin.Base.splitAt"
d202 :: Integer -> Integer -> T6 -> MAlonzo.Code.Data.Sum.Base.T30
d202 v0 v1 v2 = du202 v0 v2
du202 :: Integer -> T6 -> MAlonzo.Code.Data.Sum.Base.T30
du202 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Sum.Base.C42 (coe v1)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             C10 -> coe MAlonzo.Code.Data.Sum.Base.C38 (coe C10)
             C16 v4
               -> coe
                    MAlonzo.Code.Data.Sum.Base.du82 (coe C16) (\ v5 -> v5)
                    (coe du202 (coe v2) (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
name222 = "Data.Fin.Base.fold"
d222 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (Integer -> ()) ->
  Integer ->
  (Integer -> AgdaAny -> AgdaAny) ->
  (Integer -> AgdaAny) -> T6 -> AgdaAny
d222 v0 v1 v2 v3 v4 v5 = du222 v2 v3 v4 v5
du222 ::
  Integer ->
  (Integer -> AgdaAny -> AgdaAny) ->
  (Integer -> AgdaAny) -> T6 -> AgdaAny
du222 v0 v1 v2 v3
  = case coe v3 of
      C10 -> let v5 = subInt (coe v0) (coe (1 :: Integer)) in coe v2 v5
      C16 v5
        -> let v6 = subInt (coe v0) (coe (1 :: Integer)) in
           coe v1 v6 (coe du222 (coe v6) (coe v1) (coe v2) (coe v5))
      _ -> MAlonzo.RTE.mazUnreachableError
name248 = "Data.Fin.Base.fold′"
d248 ::
  Integer ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (T6 -> ()) ->
  (T6 -> AgdaAny -> AgdaAny) -> AgdaAny -> T6 -> AgdaAny
d248 v0 v1 v2 v3 v4 v5 = du248 v3 v4 v5
du248 :: (T6 -> AgdaAny -> AgdaAny) -> AgdaAny -> T6 -> AgdaAny
du248 v0 v1 v2
  = case coe v2 of
      C10 -> coe v1
      C16 v4
        -> coe
             v0 v4 (coe du248 (coe (\ v5 -> coe v0 v5)) (coe v1) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
name272 = "Data.Fin.Base.lift"
d272 :: Integer -> Integer -> Integer -> (T6 -> T6) -> T6 -> T6
d272 v0 v1 v2 v3 v4 = du272 v2 v3 v4
du272 :: Integer -> (T6 -> T6) -> T6 -> T6
du272 v0 v1 v2
  = case coe v0 of
      0 -> coe v1 v2
      _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v2 of
             C10 -> coe C10
             C16 v5 -> coe C16 (coe du272 (coe v3) (coe v1) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
name296 = "Data.Fin.Base._+_"
d296 :: Integer -> Integer -> T6 -> T6 -> T6
d296 v0 v1 v2 v3 = du296 v2 v3
du296 :: T6 -> T6 -> T6
du296 v0 v1
  = case coe v0 of
      C10 -> coe v1
      C16 v3 -> coe C16 (coe du296 (coe v3) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
name310 = "Data.Fin.Base._-_"
d310 :: Integer -> T6 -> T6 -> T6
d310 v0 v1 v2 = du310 v1 v2
du310 :: T6 -> T6 -> T6
du310 v0 v1
  = case coe v1 of
      C10 -> coe v0
      C16 v3
        -> case coe v0 of
             C16 v5 -> coe du310 (coe v5) (coe v3)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name322 = "Data.Fin.Base._ℕ-_"
d322 :: Integer -> T6 -> T6
d322 v0 v1
  = case coe v1 of
      C10 -> coe d58 (coe v0)
      C16 v3
        -> let v4 = subInt (coe v0) (coe (1 :: Integer)) in
           coe d322 (coe v4) (coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
name332 = "Data.Fin.Base._ℕ-ℕ_"
d332 :: Integer -> T6 -> Integer
d332 v0 v1
  = case coe v1 of
      C10 -> coe v0
      C16 v3
        -> let v4 = subInt (coe v0) (coe (1 :: Integer)) in
           coe d332 (coe v4) (coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
name342 = "Data.Fin.Base.pred"
d342 :: Integer -> T6 -> T6
d342 v0 v1 = du342 v1
du342 :: T6 -> T6
du342 v0
  = case coe v0 of
      C10 -> coe C10
      C16 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name352 = "Data.Fin.Base.punchOut"
d352 ::
  Integer ->
  T6 ->
  T6 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Data.Empty.T4) ->
  T6
d352 v0 v1 v2 v3 = du352 v1 v2
du352 :: T6 -> T6 -> T6
du352 v0 v1
  = case coe v0 of
      C10
        -> case coe v1 of
             C10 -> coe MAlonzo.Code.Data.Empty.d10 () erased erased
             C16 v4 -> coe v4
             _ -> MAlonzo.RTE.mazUnreachableError
      C16 v3
        -> case coe v1 of
             C10 -> coe C10
             C16 v5 -> coe C16 (coe du352 (coe v3) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name372 = "Data.Fin.Base.punchIn"
d372 :: Integer -> T6 -> T6 -> T6
d372 v0 v1 v2 = du372 v1 v2
du372 :: T6 -> T6 -> T6
du372 v0 v1
  = case coe v0 of
      C10 -> coe C16 v1
      C16 v3
        -> case coe v1 of
             C10 -> coe C10
             C16 v5 -> coe C16 (coe du372 (coe v3) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name384 = "Data.Fin.Base._≤_"
d384 :: Integer -> T6 -> T6 -> ()
d384 = erased
name388 = "Data.Fin.Base._<_"
d388 :: Integer -> T6 -> T6 -> ()
d388 = erased
name390 = "Data.Fin.Base._≺_"
d390 a0 a1 = ()
newtype T390 = C396 T6
name400 = "Data.Fin.Base.Ordering"
d400 a0 a1 a2 = ()
data T400 = C408 T6 | C412 | C418 T6
name426 = "Data.Fin.Base.compare"
d426 :: Integer -> T6 -> T6 -> T400
d426 v0 v1 v2 = du426 v1 v2
du426 :: T6 -> T6 -> T400
du426 v0 v1
  = case coe v0 of
      C10
        -> case coe v1 of
             C10 -> coe C412
             C16 v4 -> coe C408 (coe C10)
             _ -> MAlonzo.RTE.mazUnreachableError
      C16 v3
        -> case coe v1 of
             C10 -> coe C418 (coe C10)
             C16 v5
               -> let v6 = coe du426 (coe v3) (coe v5) in
                  case coe v6 of
                    C408 v8 -> coe C408 (coe C16 v8)
                    C412 -> coe C412
                    C418 v8 -> coe C418 (coe C16 v8)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name460 = "Data.Fin.Base.fromℕ≤"
d460 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6 -> T6
d460 v0 v1 v2 = coe du66 v0
name462 = "Data.Fin.Base.fromℕ≤″"
d462 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T156 -> T6
d462 v0 v1 v2 = coe du82 v0 v2
