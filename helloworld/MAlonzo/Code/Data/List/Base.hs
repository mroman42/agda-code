{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.List.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.Fin.Base
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.These.Base
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Relation.Nullary.Negation
import qualified MAlonzo.Code.Relation.Unary.Properties

name20 = "Data.List.Base.map"
d20 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> [AgdaAny]
d20 v0 v1 v2 v3 v4 v5 = du20 v4 v5
du20 :: (AgdaAny -> AgdaAny) -> [AgdaAny] -> [AgdaAny]
du20 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C22 (coe v0 v2)
             (coe du20 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
name30 = "Data.List.Base.mapMaybe"
d30 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  [AgdaAny] -> [AgdaAny]
d30 v0 v1 v2 v3 v4 v5 = du30 v4 v5
du30 ::
  (AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  [AgdaAny] -> [AgdaAny]
du30 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> let v4 = coe v0 v2 in
           case coe v4 of
             MAlonzo.Code.Data.Maybe.Base.C26 -> coe du30 (coe v0) (coe v3)
             MAlonzo.Code.Data.Maybe.Base.C30 v5
               -> coe
                    MAlonzo.Code.Agda.Builtin.List.C22 (coe v5)
                    (coe du30 (coe v0) (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name58 = "Data.List.Base._++_"
d58 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d58 v0 v1 v2 v3 = du58 v2 v3
du58 :: [AgdaAny] -> [AgdaAny] -> [AgdaAny]
du58 v0 v1
  = case coe v0 of
      [] -> coe v1
      (:) v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C22 (coe v2)
             (coe du58 (coe v3) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
name68 = "Data.List.Base.intersperse"
d68 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> AgdaAny -> [AgdaAny] -> [AgdaAny]
d68 v0 v1 v2 v3 = du68 v2 v3
du68 :: AgdaAny -> [AgdaAny] -> [AgdaAny]
du68 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> let v4
                 = coe
                     MAlonzo.Code.Agda.Builtin.List.C22 (coe v2)
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C22 (coe v0)
                        (coe du68 (coe v0) (coe v3))) in
           case coe v3 of
             [] -> coe v1
             _ -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name82 = "Data.List.Base.intercalate"
d82 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> [[AgdaAny]] -> [AgdaAny]
d82 v0 v1 v2 v3 = du82 v2 v3
du82 :: [AgdaAny] -> [[AgdaAny]] -> [AgdaAny]
du82 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> let v4
                 = coe
                     du58 (coe v2) (coe du58 (coe v0) (coe du82 (coe v0) (coe v3))) in
           case coe v3 of
             [] -> coe v2
             _ -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name96 = "Data.List.Base.alignWith"
d96 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (MAlonzo.Code.Data.These.Base.T38 -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d96 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du96 v6 v7 v8
du96 ::
  (MAlonzo.Code.Data.These.Base.T38 -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
du96 v0 v1 v2
  = case coe v1 of
      []
        -> coe
             du20
             (coe
                (\ v3 -> coe v0 (coe MAlonzo.Code.Data.These.Base.C50 (coe v3))))
             (coe v2)
      (:) v3 v4
        -> case coe v2 of
             []
               -> coe
                    du20
                    (coe
                       (\ v5 -> coe v0 (coe MAlonzo.Code.Data.These.Base.C48 (coe v5))))
                    (coe v1)
             (:) v5 v6
               -> coe
                    MAlonzo.Code.Agda.Builtin.List.C22
                    (coe v0 (coe MAlonzo.Code.Data.These.Base.C52 (coe v3) (coe v5)))
                    (coe du96 (coe v0) (coe v4) (coe v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name116 = "Data.List.Base.zipWith"
d116 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d116 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du116 v6 v7 v8
du116 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
du116 v0 v1 v2
  = let v3 = coe MAlonzo.Code.Agda.Builtin.List.C16 in
    case coe v1 of
      (:) v4 v5
        -> case coe v2 of
             (:) v6 v7
               -> coe
                    MAlonzo.Code.Agda.Builtin.List.C22 (coe v0 v4 v6)
                    (coe du116 (coe v0) (coe v5) (coe v7))
             _ -> coe v3
      _ -> coe v3
name130 = "Data.List.Base.unalignWith"
d130 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.These.Base.T38) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d130 v0 v1 v2 v3 v4 v5 v6 v7 = du130 v6 v7
du130 ::
  (AgdaAny -> MAlonzo.Code.Data.These.Base.T38) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du130 v0 v1
  = case coe v1 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v1) (coe v1)
      (:) v2 v3
        -> let v4 = coe v0 v2 in
           case coe v4 of
             MAlonzo.Code.Data.These.Base.C48 v5
               -> coe
                    MAlonzo.Code.Data.Product.du158
                    (\ v6 -> coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v5) (coe v6))
                    (coe du130 (coe v0) (coe v3))
             MAlonzo.Code.Data.These.Base.C50 v5
               -> coe
                    MAlonzo.Code.Data.Product.du170
                    (\ v6 v7 ->
                       coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v5) (coe v7))
                    (coe du130 (coe v0) (coe v3))
             MAlonzo.Code.Data.These.Base.C52 v5 v6
               -> coe
                    MAlonzo.Code.Data.Product.du148
                    (coe
                       (\ v7 -> coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v5) (coe v7)))
                    (coe
                       (\ v7 v8 ->
                          coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v6) (coe v8)))
                    (coe du130 (coe v0) (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name178 = "Data.List.Base.unzipWith"
d178 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d178 v0 v1 v2 v3 v4 v5 v6 v7 = du178 v6 v7
du178 ::
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du178 v0 v1
  = case coe v1 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v1) (coe v1)
      (:) v2 v3
        -> coe
             MAlonzo.Code.Data.Product.du186
             (coe MAlonzo.Code.Agda.Builtin.List.C22)
             (coe (\ v4 v5 -> coe MAlonzo.Code.Agda.Builtin.List.C22))
             (coe v0 v2) (coe du178 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
name188 = "Data.List.Base.partitionSumsWith"
d188 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d188 v0 v1 v2 v3 v4 v5 v6 = du188 v6
du188 ::
  (AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du188 v0
  = coe
      du130
      (coe (\ v1 -> coe MAlonzo.Code.Data.These.Base.du54 (coe v0 v1)))
name192 = "Data.List.Base.align"
d192 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> [AgdaAny] -> [MAlonzo.Code.Data.These.Base.T38]
d192 v0 v1 v2 v3 = du192
du192 ::
  [AgdaAny] -> [AgdaAny] -> [MAlonzo.Code.Data.These.Base.T38]
du192 = coe du96 (coe (\ v0 -> v0))
name194 = "Data.List.Base.zip"
d194 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] -> [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T14]
d194 v0 v1 v2 v3 = du194
du194 ::
  [AgdaAny] -> [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T14]
du194 = coe du116 (coe MAlonzo.Code.Agda.Builtin.Sigma.C32)
name196 = "Data.List.Base.unalign"
d196 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [MAlonzo.Code.Data.These.Base.T38] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d196 v0 v1 v2 v3 = du196
du196 ::
  [MAlonzo.Code.Data.These.Base.T38] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du196 = coe du130 (coe (\ v0 -> v0))
name198 = "Data.List.Base.unzip"
d198 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d198 v0 v1 v2 v3 = du198
du198 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du198 = coe du178 (coe (\ v0 -> v0))
name200 = "Data.List.Base.partitionSums"
d200 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [MAlonzo.Code.Data.Sum.Base.T30] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d200 v0 v1 v2 v3 = du200
du200 ::
  [MAlonzo.Code.Data.Sum.Base.T30] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du200 = coe du188 (coe (\ v0 -> v0))
name202 = "Data.List.Base.foldr"
d202 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> [AgdaAny] -> AgdaAny
d202 v0 v1 v2 v3 v4 v5 v6 = du202 v4 v5 v6
du202 ::
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> [AgdaAny] -> AgdaAny
du202 v0 v1 v2
  = case coe v2 of
      [] -> coe v1
      (:) v3 v4 -> coe v0 v3 (coe du202 (coe v0) (coe v1) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
name216 = "Data.List.Base.foldl"
d216 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> [AgdaAny] -> AgdaAny
d216 v0 v1 v2 v3 v4 v5 v6 = du216 v4 v5 v6
du216 ::
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> [AgdaAny] -> AgdaAny
du216 v0 v1 v2
  = case coe v2 of
      [] -> coe v1
      (:) v3 v4 -> coe du216 (coe v0) (coe v0 v1 v3) (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
name230 = "Data.List.Base.concat"
d230 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> [[AgdaAny]] -> [AgdaAny]
d230 v0 v1 = du230
du230 :: [[AgdaAny]] -> [AgdaAny]
du230
  = coe du202 (coe du58) (coe MAlonzo.Code.Agda.Builtin.List.C16)
name232 = "Data.List.Base.concatMap"
d232 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> [AgdaAny]) -> [AgdaAny] -> [AgdaAny]
d232 v0 v1 v2 v3 v4 v5 = du232 v4 v5
du232 :: (AgdaAny -> [AgdaAny]) -> [AgdaAny] -> [AgdaAny]
du232 v0 v1 = coe du230 (coe du20 (coe v0) (coe v1))
name236 = "Data.List.Base.null"
d236 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> [AgdaAny] -> Bool
d236 v0 v1 v2 = du236 v2
du236 :: [AgdaAny] -> Bool
du236 v0
  = case coe v0 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Bool.C10
      (:) v1 v2 -> coe MAlonzo.Code.Agda.Builtin.Bool.C8
      _ -> MAlonzo.RTE.mazUnreachableError
name242 = "Data.List.Base.and"
d242 :: [Bool] -> Bool
d242
  = coe
      du202 (coe MAlonzo.Code.Data.Bool.Base.d24)
      (coe MAlonzo.Code.Agda.Builtin.Bool.C10)
name244 = "Data.List.Base.or"
d244 :: [Bool] -> Bool
d244
  = coe
      du202 (coe MAlonzo.Code.Data.Bool.Base.d30)
      (coe MAlonzo.Code.Agda.Builtin.Bool.C8)
name246 = "Data.List.Base.any"
d246 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> Bool) -> [AgdaAny] -> Bool
d246 v0 v1 v2 v3 = du246 v2 v3
du246 :: (AgdaAny -> Bool) -> [AgdaAny] -> Bool
du246 v0 v1 = coe d244 (coe du20 (coe v0) (coe v1))
name250 = "Data.List.Base.all"
d250 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> Bool) -> [AgdaAny] -> Bool
d250 v0 v1 v2 v3 = du250 v2 v3
du250 :: (AgdaAny -> Bool) -> [AgdaAny] -> Bool
du250 v0 v1 = coe d242 (coe du20 (coe v0) (coe v1))
name254 = "Data.List.Base.sum"
d254 :: [Integer] -> Integer
d254 = coe du202 (coe addInt) (coe (0 :: Integer))
name256 = "Data.List.Base.product"
d256 :: [Integer] -> Integer
d256 = coe du202 (coe mulInt) (coe (1 :: Integer))
name258 = "Data.List.Base.length"
d258 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> [AgdaAny] -> Integer
d258 v0 v1 = du258
du258 :: [AgdaAny] -> Integer
du258
  = coe
      du202 (coe (\ v0 v1 -> addInt (coe (1 :: Integer)) (coe v1)))
      (coe (0 :: Integer))
name260 = "Data.List.Base.[_]"
d260 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> AgdaAny -> [AgdaAny]
d260 v0 v1 v2 = du260 v2
du260 :: AgdaAny -> [AgdaAny]
du260 v0
  = coe
      MAlonzo.Code.Agda.Builtin.List.C22 (coe v0)
      (coe MAlonzo.Code.Agda.Builtin.List.C16)
name264 = "Data.List.Base.fromMaybe"
d264 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Data.Maybe.Base.T22 -> [AgdaAny]
d264 v0 v1 v2 = du264 v2
du264 :: MAlonzo.Code.Data.Maybe.Base.T22 -> [AgdaAny]
du264 v0
  = case coe v0 of
      MAlonzo.Code.Data.Maybe.Base.C26
        -> coe MAlonzo.Code.Agda.Builtin.List.C16
      MAlonzo.Code.Data.Maybe.Base.C30 v1
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C22 (coe v1)
             (coe MAlonzo.Code.Agda.Builtin.List.C16)
      _ -> MAlonzo.RTE.mazUnreachableError
name268 = "Data.List.Base.replicate"
d268 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> AgdaAny -> [AgdaAny]
d268 v0 v1 v2 v3 = du268 v2 v3
du268 :: Integer -> AgdaAny -> [AgdaAny]
du268 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Agda.Builtin.List.C16
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             MAlonzo.Code.Agda.Builtin.List.C22 (coe v1)
             (coe du268 (coe v2) (coe v1))
name276 = "Data.List.Base.inits"
d276 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> [AgdaAny] -> [[AgdaAny]]
d276 v0 v1 v2 = du276 v2
du276 :: [AgdaAny] -> [[AgdaAny]]
du276 v0
  = case coe v0 of
      [] -> coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v0) (coe v0)
      (:) v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C22
             (coe MAlonzo.Code.Agda.Builtin.List.C16)
             (coe
                du20
                (coe
                   (\ v3 -> coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v1) (coe v3)))
                (coe du276 (coe v2)))
      _ -> MAlonzo.RTE.mazUnreachableError
name284 = "Data.List.Base.tails"
d284 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> [AgdaAny] -> [[AgdaAny]]
d284 v0 v1 v2 = du284 v2
du284 :: [AgdaAny] -> [[AgdaAny]]
du284 v0
  = case coe v0 of
      [] -> coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v0) (coe v0)
      (:) v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C22 (coe v0) (coe du284 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
name290 = "Data.List.Base.scanr"
d290 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> [AgdaAny] -> [AgdaAny]
d290 v0 v1 v2 v3 v4 v5 v6 = du290 v4 v5 v6
du290 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> [AgdaAny] -> [AgdaAny]
du290 v0 v1 v2
  = case coe v2 of
      [] -> coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v1) (coe v2)
      (:) v3 v4
        -> let v5 = coe du290 (coe v0) (coe v1) (coe v4) in
           case coe v5 of
             [] -> coe v5
             (:) v6 v7
               -> coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v0 v3 v6) (coe v5)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name328 = "Data.List.Base.scanl"
d328 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> [AgdaAny] -> [AgdaAny]
d328 v0 v1 v2 v3 v4 v5 v6 = du328 v4 v5 v6
du328 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> [AgdaAny] -> [AgdaAny]
du328 v0 v1 v2
  = case coe v2 of
      [] -> coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v1) (coe v2)
      (:) v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C22 (coe v1)
             (coe du328 (coe v0) (coe v0 v1 v3) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
name342 = "Data.List.Base.applyUpTo"
d342 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (Integer -> AgdaAny) -> Integer -> [AgdaAny]
d342 v0 v1 v2 v3 = du342 v2 v3
du342 :: (Integer -> AgdaAny) -> Integer -> [AgdaAny]
du342 v0 v1
  = case coe v1 of
      0 -> coe MAlonzo.Code.Agda.Builtin.List.C16
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             MAlonzo.Code.Agda.Builtin.List.C22 (coe v0 (0 :: Integer))
             (coe
                du342 (coe (\ v3 -> coe v0 (addInt (coe (1 :: Integer)) (coe v3))))
                (coe v2))
name350 = "Data.List.Base.applyDownFrom"
d350 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (Integer -> AgdaAny) -> Integer -> [AgdaAny]
d350 v0 v1 v2 v3 = du350 v2 v3
du350 :: (Integer -> AgdaAny) -> Integer -> [AgdaAny]
du350 v0 v1
  = case coe v1 of
      0 -> coe MAlonzo.Code.Agda.Builtin.List.C16
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             MAlonzo.Code.Agda.Builtin.List.C22 (coe v0 v2)
             (coe du350 (coe v0) (coe v2))
name362 = "Data.List.Base.tabulate"
d362 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer -> (MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) -> [AgdaAny]
d362 v0 v1 v2 v3 = du362 v2 v3
du362 ::
  Integer -> (MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) -> [AgdaAny]
du362 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Agda.Builtin.List.C16
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             MAlonzo.Code.Agda.Builtin.List.C22
             (coe v1 (coe MAlonzo.Code.Data.Fin.Base.C10))
             (coe
                du362 (coe v2)
                (coe (\ v3 -> coe v1 (coe MAlonzo.Code.Data.Fin.Base.C16 v3))))
name372 = "Data.List.Base.lookup"
d372 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny
d372 v0 v1 v2 v3 = du372 v2 v3
du372 :: [AgdaAny] -> MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny
du372 v0 v1
  = case coe v0 of
      (:) v2 v3
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.Base.C10 -> coe v2
             MAlonzo.Code.Data.Fin.Base.C16 v5 -> coe du372 (coe v3) (coe v5)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name384 = "Data.List.Base.upTo"
d384 :: Integer -> [Integer]
d384 = coe du342 (coe (\ v0 -> v0))
name386 = "Data.List.Base.downFrom"
d386 :: Integer -> [Integer]
d386 = coe du350 (coe (\ v0 -> v0))
name390 = "Data.List.Base.allFin"
d390 :: Integer -> [MAlonzo.Code.Data.Fin.Base.T6]
d390 v0 = coe du362 (coe v0) (coe (\ v1 -> v1))
name402 = "Data.List.Base.unfold"
d402 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (Integer -> ()) ->
  (Integer -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  Integer -> AgdaAny -> [AgdaAny]
d402 v0 v1 v2 v3 v4 v5 v6 = du402 v4 v5 v6
du402 ::
  (Integer -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  Integer -> AgdaAny -> [AgdaAny]
du402 v0 v1 v2
  = case coe v1 of
      0 -> coe MAlonzo.Code.Agda.Builtin.List.C16
      _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
           let v4 = coe v0 v3 v2 in
           case coe v4 of
             MAlonzo.Code.Data.Maybe.Base.C26
               -> coe MAlonzo.Code.Agda.Builtin.List.C16
             MAlonzo.Code.Data.Maybe.Base.C30 v5
               -> case coe v5 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C32 v6 v7
                      -> coe
                           MAlonzo.Code.Agda.Builtin.List.C22 (coe v6)
                           (coe du402 (coe v0) (coe v3) (coe v7))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
name442 = "Data.List.Base.uncons"
d442 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Data.Maybe.Base.T22
d442 v0 v1 v2 = du442 v2
du442 :: [AgdaAny] -> MAlonzo.Code.Data.Maybe.Base.T22
du442 v0
  = case coe v0 of
      [] -> coe MAlonzo.Code.Data.Maybe.Base.C26
      (:) v1 v2
        -> coe
             MAlonzo.Code.Data.Maybe.Base.C30
             (coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v1) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
name448 = "Data.List.Base.head"
d448 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Data.Maybe.Base.T22
d448 v0 v1 v2 = du448 v2
du448 :: [AgdaAny] -> MAlonzo.Code.Data.Maybe.Base.T22
du448 v0
  = case coe v0 of
      [] -> coe MAlonzo.Code.Data.Maybe.Base.C26
      (:) v1 v2 -> coe MAlonzo.Code.Data.Maybe.Base.C30 (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
name452 = "Data.List.Base.tail"
d452 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Data.Maybe.Base.T22
d452 v0 v1 v2 = du452 v2
du452 :: [AgdaAny] -> MAlonzo.Code.Data.Maybe.Base.T22
du452 v0
  = case coe v0 of
      [] -> coe MAlonzo.Code.Data.Maybe.Base.C26
      (:) v1 v2 -> coe MAlonzo.Code.Data.Maybe.Base.C30 (coe v2)
      _ -> MAlonzo.RTE.mazUnreachableError
name456 = "Data.List.Base.take"
d456 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> [AgdaAny] -> [AgdaAny]
d456 v0 v1 v2 v3 = du456 v2 v3
du456 :: Integer -> [AgdaAny] -> [AgdaAny]
du456 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Agda.Builtin.List.C16
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             [] -> coe v1
             (:) v3 v4
               -> coe
                    MAlonzo.Code.Agda.Builtin.List.C22 (coe v3)
                    (coe du456 (coe v2) (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
name468 = "Data.List.Base.drop"
d468 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> [AgdaAny] -> [AgdaAny]
d468 v0 v1 v2 v3 = du468 v2 v3
du468 :: Integer -> [AgdaAny] -> [AgdaAny]
du468 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             [] -> coe v1
             (:) v3 v4 -> coe du468 (coe v2) (coe v4)
             _ -> MAlonzo.RTE.mazUnreachableError
name480 = "Data.List.Base.splitAt"
d480 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d480 v0 v1 v2 v3 = du480 v2 v3
du480 ::
  Integer -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du480 v0 v1
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C32
             (coe MAlonzo.Code.Agda.Builtin.List.C16) (coe v1)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             [] -> coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v1) (coe v1)
             (:) v3 v4
               -> let v5 = coe du480 (coe v2) (coe v4) in
                  case coe v5 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C32 v6 v7
                      -> coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C32
                           (coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v3) (coe v6)) (coe v7)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
name508 = "Data.List.Base.takeWhile"
d508 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [AgdaAny]
d508 v0 v1 v2 v3 v4 v5 = du508 v4 v5
du508 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [AgdaAny]
du508 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> let v4 = MAlonzo.Code.Relation.Nullary.d42 (coe v0 v2) in
           if coe v4
             then coe
                    MAlonzo.Code.Agda.Builtin.List.C22 (coe v2)
                    (coe du508 (coe v0) (coe v3))
             else coe MAlonzo.Code.Agda.Builtin.List.C16
      _ -> MAlonzo.RTE.mazUnreachableError
name536 = "Data.List.Base.dropWhile"
d536 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [AgdaAny]
d536 v0 v1 v2 v3 v4 v5 = du536 v4 v5
du536 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [AgdaAny]
du536 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> let v4 = MAlonzo.Code.Relation.Nullary.d42 (coe v0 v2) in
           if coe v4 then coe du536 (coe v0) (coe v3) else coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name564 = "Data.List.Base.filter"
d564 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [AgdaAny]
d564 v0 v1 v2 v3 v4 v5 = du564 v4 v5
du564 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [AgdaAny]
du564 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> let v4 = MAlonzo.Code.Relation.Nullary.d42 (coe v0 v2) in
           if coe v4
             then coe
                    MAlonzo.Code.Agda.Builtin.List.C22 (coe v2)
                    (coe du564 (coe v0) (coe v3))
             else coe du564 (coe v0) (coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
name592 = "Data.List.Base.partition"
d592 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d592 v0 v1 v2 v3 v4 v5 = du592 v4 v5
du592 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du592 v0 v1
  = case coe v1 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v1) (coe v1)
      (:) v2 v3
        -> let v4 = MAlonzo.Code.Relation.Nullary.d42 (coe v0 v2) in
           let v5 = coe du592 (coe v0) (coe v3) in
           if coe v4
             then case coe v5 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C32 v6 v7
                      -> coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C32
                           (coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v2) (coe v6)) (coe v7)
                    _ -> MAlonzo.RTE.mazUnreachableError
             else (case coe v5 of
                     MAlonzo.Code.Agda.Builtin.Sigma.C32 v6 v7
                       -> coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v6)
                            (coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v2) (coe v7))
                     _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
name628 = "Data.List.Base.span"
d628 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d628 v0 v1 v2 v3 v4 v5 = du628 v4 v5
du628 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du628 v0 v1
  = case coe v1 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v1) (coe v1)
      (:) v2 v3
        -> let v4 = MAlonzo.Code.Relation.Nullary.d42 (coe v0 v2) in
           if coe v4
             then coe
                    MAlonzo.Code.Data.Product.du148
                    (coe
                       (\ v5 -> coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v2) (coe v5)))
                    (coe (\ v5 v6 -> v6)) (coe du628 (coe v0) (coe v3))
             else coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C32
                    (coe MAlonzo.Code.Agda.Builtin.List.C16) (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
name658 = "Data.List.Base.break"
d658 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d658 v0 v1 v2 v3 v4 = du658 v4
du658 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du658 v0
  = coe
      du628 (coe MAlonzo.Code.Relation.Unary.Properties.du74 (coe v0))
name664 = "Data.List.Base.derun"
d664 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [AgdaAny]
d664 v0 v1 v2 v3 v4 v5 = du664 v4 v5
du664 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [AgdaAny]
du664 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> case coe v3 of
             [] -> coe v1
             (:) v4 v5
               -> let v6 = MAlonzo.Code.Relation.Nullary.d42 (coe v0 v2 v4) in
                  let v7 = coe du664 (coe v0) (coe v3) in
                  if coe v6
                    then coe v7
                    else coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v2) (coe v7)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name706 = "Data.List.Base.deduplicate"
d706 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [AgdaAny]
d706 v0 v1 v2 v3 v4 v5 = du706 v4 v5
du706 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [AgdaAny]
du706 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C22 (coe v2)
             (coe
                du564
                (coe
                   (\ v4 ->
                      coe MAlonzo.Code.Relation.Nullary.Negation.du52 (coe v0 v2 v4)))
                (coe du706 (coe v0) (coe v3)))
      _ -> MAlonzo.RTE.mazUnreachableError
name718 = "Data.List.Base._[_]%=_"
d718 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Fin.Base.T6 -> (AgdaAny -> AgdaAny) -> [AgdaAny]
d718 v0 v1 v2 v3 v4 = du718 v2 v3 v4
du718 ::
  [AgdaAny] ->
  MAlonzo.Code.Data.Fin.Base.T6 -> (AgdaAny -> AgdaAny) -> [AgdaAny]
du718 v0 v1 v2
  = case coe v0 of
      (:) v3 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.Base.C10
               -> coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v2 v3) (coe v4)
             MAlonzo.Code.Data.Fin.Base.C16 v6
               -> coe
                    MAlonzo.Code.Agda.Builtin.List.C22 (coe v3)
                    (coe du718 (coe v4) (coe v6) (coe v2))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name736 = "Data.List.Base._[_]∷=_"
d736 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] -> MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny -> [AgdaAny]
d736 v0 v1 v2 v3 v4 = du736 v2 v3 v4
du736 ::
  [AgdaAny] -> MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny -> [AgdaAny]
du736 v0 v1 v2 = coe du718 (coe v0) (coe v1) (coe (\ v3 -> v2))
name746 = "Data.List.Base._─_"
d746 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Data.Fin.Base.T6 -> [AgdaAny]
d746 v0 v1 v2 v3 = du746 v2 v3
du746 :: [AgdaAny] -> MAlonzo.Code.Data.Fin.Base.T6 -> [AgdaAny]
du746 v0 v1
  = case coe v0 of
      (:) v2 v3
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.Base.C10 -> coe v3
             MAlonzo.Code.Data.Fin.Base.C16 v5
               -> coe
                    MAlonzo.Code.Agda.Builtin.List.C22 (coe v2)
                    (coe du746 (coe v3) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name758 = "Data.List.Base.reverseAcc"
d758 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d758 v0 v1 = du758
du758 :: [AgdaAny] -> [AgdaAny] -> [AgdaAny]
du758
  = coe
      du216
      (coe
         (\ v0 v1 ->
            coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v1) (coe v0)))
name760 = "Data.List.Base.reverse"
d760 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> [AgdaAny] -> [AgdaAny]
d760 v0 v1 = du760
du760 :: [AgdaAny] -> [AgdaAny]
du760 = coe du758 (coe MAlonzo.Code.Agda.Builtin.List.C16)
name762 = "Data.List.Base._ʳ++_"
d762 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d762 v0 v1 v2 v3 = du762 v2 v3
du762 :: [AgdaAny] -> [AgdaAny] -> [AgdaAny]
du762 v0 v1 = coe du758 v1 v0
name764 = "Data.List.Base._∷ʳ_"
d764 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> AgdaAny -> [AgdaAny]
d764 v0 v1 v2 v3 = du764 v2 v3
du764 :: [AgdaAny] -> AgdaAny -> [AgdaAny]
du764 v0 v1
  = coe
      du58 (coe v0)
      (coe
         MAlonzo.Code.Agda.Builtin.List.C22 (coe v1)
         (coe MAlonzo.Code.Agda.Builtin.List.C16))
name770 = "Data.List.Base._?∷_"
d770 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Data.Maybe.Base.T22 -> [AgdaAny] -> [AgdaAny]
d770 v0 v1 = du770
du770 :: MAlonzo.Code.Data.Maybe.Base.T22 -> [AgdaAny] -> [AgdaAny]
du770
  = coe
      MAlonzo.Code.Data.Maybe.Base.du62
      (coe MAlonzo.Code.Agda.Builtin.List.C22) (\ v0 -> v0)
name772 = "Data.List.Base._∷ʳ?_"
d772 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Data.Maybe.Base.T22 -> [AgdaAny]
d772 v0 v1 v2 v3 = du772 v2 v3
du772 :: [AgdaAny] -> MAlonzo.Code.Data.Maybe.Base.T22 -> [AgdaAny]
du772 v0 v1
  = coe MAlonzo.Code.Data.Maybe.Base.du62 (coe du764 (coe v0)) v0 v1
name784 = "Data.List.Base.InitLast"
d784 a0 a1 a2 = ()
data T784 = C788 | C794 [AgdaAny] AgdaAny
name798 = "Data.List.Base.initLast"
d798 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> [AgdaAny] -> T784
d798 v0 v1 v2 = du798 v2
du798 :: [AgdaAny] -> T784
du798 v0
  = case coe v0 of
      [] -> coe C788
      (:) v1 v2
        -> let v3 = coe du798 (coe v2) in
           case coe v3 of
             C788 -> coe C794 (coe MAlonzo.Code.Agda.Builtin.List.C16) (coe v1)
             C794 v4 v5
               -> coe
                    C794 (coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v1) (coe v4))
                    (coe v5)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name820 = "Data.List.Base.gfilter"
d820 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  [AgdaAny] -> [AgdaAny]
d820 v0 v1 v2 v3 v4 v5 = coe du30 v4 v5
name822 = "Data.List.Base.boolFilter"
d822 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> Bool) -> [AgdaAny] -> [AgdaAny]
d822 v0 v1 v2 = du822 v2
du822 :: (AgdaAny -> Bool) -> [AgdaAny] -> [AgdaAny]
du822 v0
  = coe
      du30
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Data.Bool.Base.du42 (coe v0 v1)
              (coe MAlonzo.Code.Data.Maybe.Base.C30 (coe v1))
              (coe MAlonzo.Code.Data.Maybe.Base.C26)))
name828 = "Data.List.Base.boolPartition"
d828 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> Bool) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d828 v0 v1 v2 v3 = du828 v2 v3
du828 ::
  (AgdaAny -> Bool) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du828 v0 v1
  = case coe v1 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v1) (coe v1)
      (:) v2 v3
        -> let v4 = coe v0 v2 in
           let v5 = coe du828 (coe v0) (coe v3) in
           if coe v4
             then case coe v5 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C32 v6 v7
                      -> coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C32
                           (coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v2) (coe v6)) (coe v7)
                    _ -> MAlonzo.RTE.mazUnreachableError
             else (case coe v5 of
                     MAlonzo.Code.Agda.Builtin.Sigma.C32 v6 v7
                       -> coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v6)
                            (coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v2) (coe v7))
                     _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
name862 = "Data.List.Base.boolTakeWhile"
d862 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> Bool) -> [AgdaAny] -> [AgdaAny]
d862 v0 v1 v2 v3 = du862 v2 v3
du862 :: (AgdaAny -> Bool) -> [AgdaAny] -> [AgdaAny]
du862 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> let v4 = coe v0 v2 in
           if coe v4
             then coe
                    MAlonzo.Code.Agda.Builtin.List.C22 (coe v2)
                    (coe du862 (coe v0) (coe v3))
             else coe MAlonzo.Code.Agda.Builtin.List.C16
      _ -> MAlonzo.RTE.mazUnreachableError
name888 = "Data.List.Base.boolDropWhile"
d888 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> Bool) -> [AgdaAny] -> [AgdaAny]
d888 v0 v1 v2 v3 = du888 v2 v3
du888 :: (AgdaAny -> Bool) -> [AgdaAny] -> [AgdaAny]
du888 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> let v4 = coe v0 v2 in
           if coe v4 then coe du888 (coe v0) (coe v3) else coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name914 = "Data.List.Base.boolSpan"
d914 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> Bool) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d914 v0 v1 v2 v3 = du914 v2 v3
du914 ::
  (AgdaAny -> Bool) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du914 v0 v1
  = case coe v1 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v1) (coe v1)
      (:) v2 v3
        -> let v4 = coe v0 v2 in
           if coe v4
             then coe
                    MAlonzo.Code.Data.Product.du148
                    (coe
                       (\ v5 -> coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v2) (coe v5)))
                    (coe (\ v5 v6 -> v6)) (coe du914 (coe v0) (coe v3))
             else coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C32
                    (coe MAlonzo.Code.Agda.Builtin.List.C16) (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
name942 = "Data.List.Base.boolBreak"
d942 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> Bool) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d942 v0 v1 v2 = du942 v2
du942 ::
  (AgdaAny -> Bool) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du942 v0
  = coe
      du914 (coe (\ v1 -> MAlonzo.Code.Data.Bool.Base.d22 (coe v0 v1)))
