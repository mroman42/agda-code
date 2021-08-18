{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.String.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Char
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Data.Char.Properties
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Extrema
import qualified MAlonzo.Code.Data.List.Membership.DecSetoid
import qualified MAlonzo.Code.Data.List.NonEmpty
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Vec.Base
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality
import qualified MAlonzo.Code.Relation.Nullary

name118 = "Data.String.Base._≈_"
d118 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6 -> ()
d118 = erased
name120 = "Data.String.Base._<_"
d120 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6 -> ()
d120 = erased
name122 = "Data.String.Base.fromChar"
d122 ::
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6
d122 v0
  = coe
      MAlonzo.Code.Agda.Builtin.String.d10
      (coe
         MAlonzo.Code.Agda.Builtin.List.C22 (coe v0)
         (coe MAlonzo.Code.Agda.Builtin.List.C16))
name124 = "Data.String.Base.fromList⁺"
d124 ::
  MAlonzo.Code.Data.List.NonEmpty.T22 ->
  MAlonzo.Code.Agda.Builtin.String.T6
d124 v0
  = coe
      MAlonzo.Code.Agda.Builtin.String.d10
      (coe MAlonzo.Code.Data.List.NonEmpty.du60 (coe v0))
name126 = "Data.String.Base._++_"
d126 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6
d126 = coe MAlonzo.Code.Agda.Builtin.String.d12
name128 = "Data.String.Base.length"
d128 :: MAlonzo.Code.Agda.Builtin.String.T6 -> Integer
d128 v0
  = coe
      MAlonzo.Code.Data.List.Base.du258
      (coe MAlonzo.Code.Agda.Builtin.String.d8 v0)
name130 = "Data.String.Base.replicate"
d130 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6
d130 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.String.d10
      (coe MAlonzo.Code.Data.List.Base.du268 (coe v0) (coe v1))
name134 = "Data.String.Base.concat"
d134 ::
  [MAlonzo.Code.Agda.Builtin.String.T6] ->
  MAlonzo.Code.Agda.Builtin.String.T6
d134
  = coe
      MAlonzo.Code.Data.List.Base.du202 (coe d126)
      (coe (Data.Text.pack ""))
name136 = "Data.String.Base.intersperse"
d136 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  [MAlonzo.Code.Agda.Builtin.String.T6] ->
  MAlonzo.Code.Agda.Builtin.String.T6
d136 v0 v1
  = coe d134 (coe MAlonzo.Code.Data.List.Base.du68 (coe v0) (coe v1))
name140 = "Data.String.Base.unlines"
d140 ::
  [MAlonzo.Code.Agda.Builtin.String.T6] ->
  MAlonzo.Code.Agda.Builtin.String.T6
d140 = coe d136 (coe (Data.Text.pack "\n"))
name142 = "Data.String.Base.unwords"
d142 ::
  [MAlonzo.Code.Agda.Builtin.String.T6] ->
  MAlonzo.Code.Agda.Builtin.String.T6
d142 = coe d136 (coe (Data.Text.pack " "))
name144 = "Data.String.Base.parens"
d144 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6
d144 v0
  = coe d126 (Data.Text.pack "(") (coe d126 v0 (Data.Text.pack ")"))
name148 = "Data.String.Base.parensIfSpace"
d148 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6
d148 v0
  = let v1
          = MAlonzo.Code.Relation.Nullary.d42
              (coe
                 MAlonzo.Code.Data.List.Membership.DecSetoid.du62
                 (coe
                    MAlonzo.Code.Relation.Binary.PropositionalEquality.du78
                    (coe MAlonzo.Code.Data.Char.Properties.d52))
                 (coe ' ') (coe MAlonzo.Code.Agda.Builtin.String.d8 v0)) in
    if coe v1 then coe d144 (coe v0) else coe v0
name160 = "Data.String.Base.braces"
d160 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6
d160 v0
  = coe d126 (Data.Text.pack "{") (coe d126 v0 (Data.Text.pack "}"))
name164 = "Data.String.Base._<+>_"
d164 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6
d164 v0 v1
  = let v2
          = let v2 = coe d126 v0 (coe d126 (Data.Text.pack " ") v1) in
            case coe v1 of
              l | (==) l (Data.Text.pack "") -> coe v0
              _ -> coe v2 in
    case coe v0 of
      l | (==) l (Data.Text.pack "") -> coe v1
      _ -> coe v2
name174 = "Data.String.Base.padLeft"
d174 ::
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6
d174 v0 v1 v2
  = let v3
          = coe MAlonzo.Code.Agda.Builtin.Nat.d22 v1 (d128 (coe v2)) in
    let v4 = coe d126 (d130 (coe v3) (coe v0)) v2 in
    case coe v3 of
      0 -> coe v2
      _ -> coe v4
name200 = "Data.String.Base.padRight"
d200 ::
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6
d200 v0 v1 v2
  = let v3
          = coe MAlonzo.Code.Agda.Builtin.Nat.d22 v1 (d128 (coe v2)) in
    let v4 = coe d126 v2 (d130 (coe v3) (coe v0)) in
    case coe v3 of
      0 -> coe v2
      _ -> coe v4
name226 = "Data.String.Base.padBoth"
d226 ::
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6
d226 v0 v1 v2 v3
  = let v4
          = coe MAlonzo.Code.Agda.Builtin.Nat.d22 v2 (d128 (coe v3)) in
    let v5
          = coe
              d126 (d130 (coe MAlonzo.Code.Data.Nat.Base.d94 (coe v4)) (coe v0))
              (coe
                 d126 v3
                 (d130 (coe MAlonzo.Code.Data.Nat.Base.d98 (coe v4)) (coe v1))) in
    case coe v4 of
      0 -> coe v3
      _ -> coe v5
name258 = "Data.String.Base.Alignment"
d258 = ()
data T258 = C260 | C262 | C264
name266 = "Data.String.Base.fromAlignment"
d266 ::
  T258 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6
d266 v0
  = case coe v0 of
      C260 -> coe d200 (coe ' ')
      C262 -> coe d226 (coe ' ') (coe ' ')
      C264 -> coe d174 (coe ' ')
      _ -> MAlonzo.RTE.mazUnreachableError
name270 = "Data.String.Base.rectangle"
d270 ::
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T24 ->
  MAlonzo.Code.Data.Vec.Base.T24 -> MAlonzo.Code.Data.Vec.Base.T24
d270 v0 v1 v2 = du270 v1 v2
du270 ::
  MAlonzo.Code.Data.Vec.Base.T24 ->
  MAlonzo.Code.Data.Vec.Base.T24 -> MAlonzo.Code.Data.Vec.Base.T24
du270 v0 v1
  = coe
      MAlonzo.Code.Data.Vec.Base.du258
      (coe (\ v2 -> coe v2 (coe du282 (coe v1)))) (coe v0) (coe v1)
name280 = "Data.String.Base._.sizes"
d280 ::
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T24 ->
  MAlonzo.Code.Data.Vec.Base.T24 -> [Integer]
d280 v0 v1 v2 = du280 v2
du280 :: MAlonzo.Code.Data.Vec.Base.T24 -> [Integer]
du280 v0
  = coe
      MAlonzo.Code.Data.List.Base.du20 (coe d128)
      (coe MAlonzo.Code.Data.Vec.Base.du652 (coe v0))
name282 = "Data.String.Base._.width"
d282 ::
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T24 ->
  MAlonzo.Code.Data.Vec.Base.T24 -> Integer
d282 v0 v1 v2 = du282 v2
du282 :: MAlonzo.Code.Data.Vec.Base.T24 -> Integer
du282 v0
  = coe
      MAlonzo.Code.Data.List.Extrema.du124
      MAlonzo.Code.Data.Nat.Properties.d1496 (0 :: Integer)
      (coe du280 (coe v0))
name290 = "Data.String.Base.rectangleˡ"
d290 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Data.Vec.Base.T24 -> MAlonzo.Code.Data.Vec.Base.T24
d290 v0 v1
  = coe
      du270
      (coe MAlonzo.Code.Data.Vec.Base.du490 (coe v0) (coe d174 (coe v1)))
name296 = "Data.String.Base.rectangleʳ"
d296 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Data.Vec.Base.T24 -> MAlonzo.Code.Data.Vec.Base.T24
d296 v0 v1
  = coe
      du270
      (coe MAlonzo.Code.Data.Vec.Base.du490 (coe v0) (coe d200 (coe v1)))
name302 = "Data.String.Base.rectangleᶜ"
d302 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Data.Vec.Base.T24 -> MAlonzo.Code.Data.Vec.Base.T24
d302 v0 v1 v2
  = coe
      du270
      (coe
         MAlonzo.Code.Data.Vec.Base.du490 (coe v0)
         (coe d226 (coe v1) (coe v2)))
