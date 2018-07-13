{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Dyadics where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Base
import qualified MAlonzo.Code.Booleans
import qualified MAlonzo.Code.Naturals

name4 = "Dyadics.ADMITTED"
d4
  = error
      "MAlonzo Runtime Error: postulate evaluated: Dyadics.ADMITTED"
name6 = "Dyadics.normalized"
d6 v0 v1
  = coe
      MAlonzo.Code.Booleans.d106 (coe MAlonzo.Code.Naturals.d810 v0)
      (coe MAlonzo.Code.Naturals.d942 v1)
name16 = "Dyadics.iszero-normalized"
d16 = erased
name36 = "Dyadics.odd-normalized"
d36 = erased
name52 = "Dyadics.nonzero-normalized"
d52 = erased
name72 = "Dyadics.nonzero-normalized2"
d72 = erased
name92 = "Dyadics.D"
d92 = ()
data T92 a0 a1 = C98 a0 a1
name100 = "Dyadics.num$"
d100 v0
  = case coe v0 of
      C98 v1 v2 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name104 = "Dyadics.pow$"
d104 v0
  = case coe v0 of
      C98 v1 v2 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name116 = "Dyadics.drefl"
d116 = erased
name142 = "Dyadics.drefl-app"
d142 = erased
name176 = "Dyadics.drefl'"
d176 = erased
name220 = "Dyadics._.refute"
d220 = erased
name260 = "Dyadics._.refute"
d260 = erased
name298 = "Dyadics._.lemma1"
d298 = erased
name300 = "Dyadics._.nonzero-n"
d300 = erased
name302 = "Dyadics._.lemma2"
d302 = erased
name314 = "Dyadics.d\8801"
d314 = erased
name322 = "Dyadics.mkd"
d322 v0 v1
  = case coe v1 of
      0 -> coe C98 v0 (0 :: Integer)
      _ -> let v2 = coe subInt v1 (1 :: Integer) in
           let v3
                 = coe
                     MAlonzo.Code.Booleans.d10 (coe MAlonzo.Code.Naturals.d810 v0) in
           case coe v3 of
             MAlonzo.Code.Base.C92 v4 -> coe C98 v0 v1
             MAlonzo.Code.Base.C94 v4
               -> let v5 = coe MAlonzo.Code.Naturals.du1026 v0 in
                  coe d322 (coe MAlonzo.Code.Base.d50 v5) v2
             _ -> coe MAlonzo.RTE.mazUnreachableError
name368 = "Dyadics.mkdrefl"
d368 = erased
name376 = "Dyadics.mkdzero"
d376 = erased
name414 = "Dyadics.mkd-sound"
d414 = erased
name474 = "Dyadics.mkd-norm"
d474 = erased
name528 = "Dyadics._.refute"
d528 = erased
name538 = "Dyadics.cross\8801"
d538 = erased
name672 = "Dyadics.c\8801"
d672 = erased
name690 = "Dyadics.dmk\8801"
d690 = erased
name702 = "Dyadics.zer"
d702 = coe d322 (0 :: Integer) (0 :: Integer)
name704 = "Dyadics.oned"
d704 = coe d322 (1 :: Integer) (0 :: Integer)
name706 = "Dyadics.half"
d706 = coe d322 (1 :: Integer) (1 :: Integer)
name708 = "Dyadics.add"
d708 v0 v1
  = case coe v0 of
      C98 v2 v3
        -> case coe v1 of
             C98 v5 v6
               -> coe
                    d322
                    (coe
                       addInt (coe mulInt v2 (coe MAlonzo.Code.Naturals.d1104 v6))
                       (coe mulInt v5 (coe MAlonzo.Code.Naturals.d1104 v3)))
                    (coe addInt v3 v6)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name722 = "Dyadics.add'"
d722 v0 v1
  = coe
      d322
      (coe
         addInt
         (coe
            mulInt (coe du736 v1)
            (coe MAlonzo.Code.Naturals.d1104 (coe du734 v0)))
         (coe
            mulInt (coe du732 v0)
            (coe MAlonzo.Code.Naturals.d1104 (coe du738 v1))))
      (coe addInt (coe du738 v1) (coe du734 v0))
name732 = "Dyadics._.n"
d732 v0 v1 = du732 v0
du732 v0 = coe d100 v0
name734 = "Dyadics._.e"
d734 v0 v1 = du734 v0
du734 v0 = coe d104 v0
name736 = "Dyadics._.n'"
d736 v0 v1 = du736 v1
du736 v0 = coe d100 v0
name738 = "Dyadics._.e'"
d738 v0 v1 = du738 v1
du738 v0 = coe d104 v0
name740 = "Dyadics.mult"
d740 v0 v1
  = case coe v0 of
      C98 v2 v3
        -> case coe v1 of
             C98 v5 v6 -> coe d322 (coe mulInt v2 v5) (coe addInt v3 v6)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name758 = "Dyadics.add-numden"
d758 = erased
name776 = "Dyadics.mult-numden"
d776 = erased
name796 = "Dyadics.mk-const"
d796 v0 v1
  = case coe v1 of
      0 -> coe
             MAlonzo.Code.Base.C54 (1 :: Integer)
             (coe
                MAlonzo.Code.Base.C54 erased
                (coe MAlonzo.Code.Base.C54 erased erased))
      _ -> let v2 = coe subInt v1 (1 :: Integer) in
           let v3
                 = coe
                     MAlonzo.Code.Booleans.d10 (coe MAlonzo.Code.Naturals.d810 v0) in
           case coe v3 of
             MAlonzo.Code.Base.C92 v4
               -> coe
                    MAlonzo.Code.Base.C54 (1 :: Integer)
                    (coe
                       MAlonzo.Code.Base.C54 erased
                       (coe MAlonzo.Code.Base.C54 erased erased))
             MAlonzo.Code.Base.C94 v4
               -> let v5 = coe MAlonzo.Code.Naturals.du1026 v0 in
                  let v6 = coe d796 (coe MAlonzo.Code.Base.d50 v5) v2 in
                  coe
                    MAlonzo.Code.Base.C54
                    (coe mulInt (2 :: Integer) (coe MAlonzo.Code.Base.d50 v6))
                    (coe
                       MAlonzo.Code.Base.C54 erased
                       (coe MAlonzo.Code.Base.C54 erased erased))
             _ -> coe MAlonzo.RTE.mazUnreachableError
name862 = "Dyadics._.lemma1"
d862 = erased
name868 = "Dyadics._.lemma2"
d868 = erased
name894 = "Dyadics._.lemma3"
d894 = erased
name924 = "Dyadics.add-mk"
d924 = erased
name986 = "Dyadics._.lemma2"
d986 = erased
name1004 = "Dyadics._.lemma"
d1004 = erased
name1018 = "Dyadics.mult-mk"
d1018 = erased
name1060 = "Dyadics._.lemma"
d1060 = erased
name1078 = "Dyadics.add-comm"
d1078 = erased
name1096 = "Dyadics._.lemma"
d1096 = erased
name1110 = "Dyadics.mult-comm"
d1110 = erased
name1128 = "Dyadics._.lemma"
d1128 = erased
name1140 = "Dyadics.add-zero"
d1140 = erased
name1156 = "Dyadics.addhalfhalf"
d1156 = erased
name1160 = "Dyadics.mult-zero"
d1160 = erased
name1170 = "Dyadics.mult-one"
d1170 = erased
name1188 = "Dyadics.add-assoc"
d1188 = erased
name1210 = "Dyadics._.lemma"
d1210 = erased
name1234 = "Dyadics.mult-assoc"
d1234 = erased
name1258 = "Dyadics._.lemma"
d1258 = erased
name1290 = "Dyadics.mp-distr"
d1290 = erased
name1314 = "Dyadics._.lemma"
d1314 = erased
name1332 = "Dyadics.dec\8801"
d1332 v0 v1
  = case coe v0 of
      C98 v2 v3
        -> case coe v1 of
             C98 v5 v6
               -> let v8 = coe MAlonzo.Code.Naturals.d1726 v2 v5 in
                  case coe v8 of
                    MAlonzo.Code.Base.C92 v9
                      -> let v10 = coe MAlonzo.Code.Naturals.d1726 v3 v6 in
                         case coe v10 of
                           MAlonzo.Code.Base.C92 v11 -> coe MAlonzo.Code.Base.C92 erased
                           MAlonzo.Code.Base.C94 v11
                             -> coe MAlonzo.Code.Base.C94 (\ v12 -> coe v11 erased)
                           _ -> coe MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Base.C94 v9
                      -> coe MAlonzo.Code.Base.C94 (\ v10 -> coe v9 erased)
                    _ -> coe MAlonzo.RTE.mazUnreachableError
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1406 = "Dyadics.lt'"
d1406 v0 v1
  = coe
      ltInt
      (coe
         mulInt (coe du1416 v0)
         (coe MAlonzo.Code.Naturals.d1104 (coe du1422 v1)))
      (coe
         mulInt (coe du1420 v1)
         (coe MAlonzo.Code.Naturals.d1104 (coe du1418 v0)))
name1416 = "Dyadics._.n"
d1416 v0 v1 = du1416 v0
du1416 v0 = coe d100 v0
name1418 = "Dyadics._.e"
d1418 v0 v1 = du1418 v0
du1418 v0 = coe d104 v0
name1420 = "Dyadics._.n'"
d1420 v0 v1 = du1420 v1
du1420 v0 = coe d100 v0
name1422 = "Dyadics._.e'"
d1422 v0 v1 = du1422 v1
du1422 v0 = coe d104 v0
name1424 = "Dyadics.lt"
d1424 v0 v1
  = case coe v0 of
      C98 v2 v3
        -> case coe v1 of
             C98 v5 v6
               -> coe
                    ltInt (coe mulInt v2 (coe MAlonzo.Code.Naturals.d1104 v6))
                    (coe mulInt v5 (coe MAlonzo.Code.Naturals.d1104 v3))
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1442 = "Dyadics.lt$"
d1442 = erased
name1456 = "Dyadics.lthalf"
d1456 = erased
name1460 = "Dyadics.ltzero"
d1460 = erased
name1478 = "Dyadics.ltone"
d1478 = erased
name1488 = "Dyadics.ltmk"
d1488 = erased
name1592 = "Dyadics.ltplus"
d1592 = erased
name1622 = "Dyadics.ltmult"
d1622 = erased
name1656 = "Dyadics.dpositivity"
d1656 = erased
name1678 = "Dyadics.ltevd"
d1678 v0 v1 v2 = du1678 v0 v1
du1678 v0 v1
  = case coe v0 of
      C98 v2 v3
        -> case coe v3 of
             0 -> case coe v1 of
                    C98 v5 v6
                      -> case coe v6 of
                           0 -> let v8 = coe MAlonzo.Code.Naturals.du398 v2 v5 in
                                let v9 = coe MAlonzo.Code.Base.d50 v8 in
                                coe
                                  MAlonzo.Code.Base.C54 (coe C98 v9 (0 :: Integer))
                                  (coe MAlonzo.Code.Base.C54 (coe d4 erased) (coe d4 erased))
                           _ -> coe d4 erased
                    _ -> coe MAlonzo.RTE.mazUnreachableError
             _ -> case coe v1 of
                    C98 v5 v6 -> coe d4 erased
                    _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError