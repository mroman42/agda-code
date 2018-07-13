{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Naturals where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Base
import qualified MAlonzo.Code.Booleans

name2 = "Naturals.\8469"
d2 = ()
data T2 a0 = C4 | C6 a0
name12 = "Naturals.succ-inj-l"
d12 = erased
name24 = "Naturals.succ-inj-r"
d24 = erased
name28 = "Naturals._+_"
d28 = ((+) :: Integer -> Integer -> Integer)
name38 = "Naturals.+rzero"
d38 = erased
name44 = "Naturals.+rone"
d44 = erased
name52 = "Naturals.+rsucc"
d52 = erased
name66 = "Naturals.+assoc"
d66 = erased
name82 = "Naturals.+comm"
d82 = erased
name104 = "Naturals.+inj"
d104 = erased
name126 = "Naturals.+inj-r"
d126 = erased
name158 = "Naturals._*_"
d158 = ((*) :: Integer -> Integer -> Integer)
name168 = "Naturals.*rzero"
d168 = erased
name174 = "Naturals.*runit"
d174 = erased
name182 = "Naturals.*rsucc"
d182 = erased
name226 = "Naturals.*comm"
d226 = erased
name256 = "Naturals.*distr"
d256 = erased
name302 = "Naturals.*distr-r"
d302 = erased
name332 = "Naturals.*assoc"
d332 = erased
name356 = "Naturals.Less"
d356 a0 a1 = ()
newtype T356 a0 = C364 a0
name370 = "Naturals.LessThan"
d370 a0 a1 = ()
newtype T370 a0 = C378 a0
name380 = "Naturals._==_"
d380 = ((==) :: Integer -> Integer -> Bool)
name386 = "Naturals._<_"
d386 = ((<) :: Integer -> Integer -> Bool)
name398 = "Naturals.<evd"
d398 v0 v1 v2 = du398 v0 v1
du398 v0 v1
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Base.C54 v1 (coe MAlonzo.Code.Base.C54 erased erased)
      _ -> let v2 = coe subInt v0 (1 :: Integer) in
           let v3 = coe subInt v1 (1 :: Integer) in
           let v4 = coe du398 v2 v3 in
           coe
             MAlonzo.Code.Base.C54 (coe MAlonzo.Code.Base.d50 v4)
             (coe
                MAlonzo.Code.Base.C54 erased
                (coe MAlonzo.Code.Base.d52 (coe MAlonzo.Code.Base.d52 v4)))
name430 = "Naturals.<zero"
d430 = erased
name440 = "Naturals._\8804_"
d440 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Booleans.C6
      _ -> let v2 = coe subInt v0 (1 :: Integer) in
           case coe v1 of
             0 -> coe MAlonzo.Code.Booleans.C4
             _ -> let v3 = coe subInt v1 (1 :: Integer) in coe d440 v2 v3
name454 = "Naturals.<not"
d454 = erased
name468 = "Naturals.\8804not"
d468 = erased
name478 = "Naturals._.lemma"
d478 = erased
name494 = "Naturals.<plus"
d494 = erased
name512 = "Naturals.<plus-r"
d512 = erased
name550 = "Naturals.\8804plus"
d550 = erased
name576 = "Naturals.\8804plus-r"
d576 = erased
name602 = "Naturals.<trans"
d602 = erased
name660 = "Naturals.\8804trans"
d660 = erased
name704 = "Naturals.<mult"
d704 = erased
name740 = "Naturals._.lemma1"
d740 = erased
name754 = "Naturals._.lemma2"
d754 = erased
name780 = "Naturals._.lemma1"
d780 = erased
name790 = "Naturals._.lemma2"
d790 = erased
name810 = "Naturals.odd"
d810 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Booleans.C4
      1 -> coe MAlonzo.Code.Booleans.C6
      _ -> let v1 = coe subInt v0 (2 :: Integer) in coe d810 v1
name816 = "Naturals.even"
d816 v0 = coe MAlonzo.Code.Booleans.d30 (coe d810 v0)
name822 = "Naturals.oddsucc"
d822 = erased
name830 = "Naturals.oddplus"
d830 = erased
name856 = "Naturals.odd+both"
d856 = erased
name876 = "Naturals.oddmul"
d876 = erased
name918 = "Naturals.evenplus"
d918 = erased
name942 = "Naturals.iszero"
d942 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Booleans.C6
      _ -> coe MAlonzo.Code.Booleans.C4
name948 = "Naturals.iszero-sound"
d948 = erased
name958 = "Naturals.iszero-plus"
d958 = erased
name970 = "Naturals.iszero-not-plus-r"
d970 = erased
name984 = "Naturals.iszero-not-mult"
d984 = erased
name1008 = "Naturals.<mult-inj"
d1008 = erased
name1026 = "Naturals.not-odd-form"
d1026 v0 v1 = du1026 v0
du1026 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Base.C54 (0 :: Integer) erased
      _ -> let v1 = coe subInt v0 (2 :: Integer) in
           let v2 = coe du1026 v1 in
           let v3 = coe MAlonzo.Code.Base.d50 v2 in
           coe MAlonzo.Code.Base.C54 (coe addInt (1 :: Integer) v3) erased
name1056 = "Naturals.notodda+a"
d1056 = erased
name1070 = "Naturals.odda+a"
d1070 = erased
name1086 = "Naturals.notodd*a+b"
d1086 = erased
name1104 = "Naturals.exp2"
d1104 v0
  = case coe v0 of
      0 -> 1 :: Integer
      _ -> let v1 = coe subInt v0 (1 :: Integer) in
           coe addInt (coe d1104 v1) (coe d1104 v1)
name1110 = "Naturals.exp2-even"
d1110 = erased
name1142 = "Naturals.exp2-notzero"
d1142 = erased
name1148 = "Naturals.a+a\8801\&2a"
d1148 = erased
name1172 = "Naturals.a+a\8801b+b"
d1172 = erased
name1202 = "Naturals.a*b\8801\&0"
d1202 v0 v1 v2 = du1202 v0
du1202 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Base.C92 erased
      _ -> coe MAlonzo.Code.Base.C94 erased
name1220 = "Naturals.0\8801a*nz"
d1220 = erased
name1242 = "Naturals.0\8801a+b\8594\&0\8801a"
d1242 = erased
name1258 = "Naturals.*inj"
d1258 = erased
name1304 = "Naturals._.lemma1"
d1304 = erased
name1306 = "Naturals._.lemma2"
d1306 = erased
name1330 = "Naturals.*cancel"
d1330 = erased
name1344 = "Naturals.simpl-a2b\8801c2d"
d1344 = erased
name1378 = "Naturals.exp2-odd-div"
d1378 = erased
name1414 = "Naturals._.refute"
d1414 = erased
name1454 = "Naturals._.refute"
d1454 = MAlonzo.RTE.mazUnreachableError
name1492 = "Naturals.zero\8802succ"
d1492 = erased
name1500 = "Naturals.exp2-inj"
d1500 = erased
name1582 = "Naturals._.lemma"
d1582 = erased
name1616 = "Naturals.*cross"
d1616 = erased
name1640 = "Naturals._.lemma"
d1640 = erased
name1694 = "Naturals.*bicross"
d1694 = erased
name1726 = "Naturals.ndec\8801"
d1726 v0 v1
  = case coe v0 of
      0 -> case coe v1 of
             0 -> coe MAlonzo.Code.Base.C92 erased
             _ -> coe MAlonzo.Code.Base.C94 erased
      _ -> let v2 = coe subInt v0 (1 :: Integer) in
           case coe v1 of
             0 -> coe MAlonzo.Code.Base.C94 erased
             _ -> let v3 = coe subInt v1 (1 :: Integer) in
                  let v4 = coe d1726 v2 v3 in
                  case coe v4 of
                    MAlonzo.Code.Base.C92 v5 -> coe MAlonzo.Code.Base.C92 erased
                    MAlonzo.Code.Base.C94 v5
                      -> coe MAlonzo.Code.Base.C94 (\ v6 -> coe v5 erased)
                    _ -> coe MAlonzo.RTE.mazUnreachableError
name13689 = "Naturals..absurdlambda"
d13689 = erased
name13709 = "Naturals..absurdlambda"
d13709 = erased
name14369 = "Naturals..absurdlambda"
d14369 = erased
name18933 = "Naturals..absurdlambda"
d18933 = erased
name19441 = "Naturals._..absurdlambda"
d19441 = erased
name19515 = "Naturals._..absurdlambda"
d19515 = erased
name22091 = "Naturals..absurdlambda"
d22091 = erased
name22111 = "Naturals..absurdlambda"
d22111 = erased