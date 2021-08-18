{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Helloworld where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.IO
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.IO.Primitive

import qualified Data.Text as T
name2 = "Helloworld.putStrLn"
d2 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.IO.T8
    () MAlonzo.Code.Agda.Builtin.Unit.T6
d2 = putStrLn . T.unpack
name4 = "Helloworld.getStr"
d4 ::
  MAlonzo.Code.Agda.Builtin.IO.T8
    () MAlonzo.Code.Agda.Builtin.String.T6
d4 = T.pack <$> getLine
main = coe d6
name6 = "Helloworld.main"
d6 ::
  MAlonzo.Code.Agda.Builtin.IO.T8
    AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T6
d6
  = coe
      MAlonzo.Code.IO.Primitive.d18 () () erased erased
      (coe
         MAlonzo.Code.IO.Primitive.d18 () () erased erased
         (coe d2 (Data.Text.pack "Hello world!")) (\ v0 -> d4))
      d2
