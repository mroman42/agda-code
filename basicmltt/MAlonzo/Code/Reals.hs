{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Reals where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.IO
import qualified MAlonzo.Code.Base
import qualified MAlonzo.Code.Booleans
import qualified MAlonzo.Code.Dyadics
import qualified MAlonzo.Code.Prop

name2 = "Reals._+_"
d2 = MAlonzo.Code.Dyadics.d708
name4 = "Reals._*_"
d4 = MAlonzo.Code.Dyadics.d740
name6 = "Reals._<_"
d6 = MAlonzo.Code.Dyadics.d1424
name14 = "Reals.<plus"
d14 = erased
name36 = "Reals.<sqbetween"
d36
  = error
      "MAlonzo Runtime Error: postulate evaluated: Reals.<sqbetween"
name42 = "Reals.+nonzero"
d42 = erased
name58 = "Reals.<trans"
d58 = erased
name116 = "Reals.min"
d116 v0 v1
  = let v2 = coe d6 v0 v1 in
    case coe v2 of
      MAlonzo.Code.Booleans.C4 -> coe v1
      MAlonzo.Code.Booleans.C6 -> coe v0
      _ -> coe MAlonzo.RTE.mazUnreachableError
name140 = "Reals.min-bound"
d140 = erased
name194 = "Reals.min-def1"
d194 = erased
name242 = "Reals.min-def2"
d242 = erased
name290 = "Reals.min-or"
d290 v0 v1 v2 v3 v4 = du290 v1 v2 v3 v4
du290 v0 v1 v2 v3
  = let v4 = coe MAlonzo.Code.Booleans.d10 (coe d6 v0 v1) in
    case coe v4 of
      MAlonzo.Code.Base.C92 v5 -> coe v2
      MAlonzo.Code.Base.C94 v5 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name338 = "Reals.<halfone"
d338 = erased
name358 = "Reals.<halfpos"
d358 = erased
name390 = "Reals.<halfless"
d390 = erased
name442 = "Reals.<plusone"
d442 = erased
name478 = "Reals.<pluscomp"
d478 = erased
name496 = "Reals._.lemma1"
d496 = erased
name506 = "Reals._.lemma2"
d506 = erased
name528 = "Reals.<plus+zero"
d528 = erased
name560 = "Reals.halfsplit"
d560 = erased
name568 = "Reals._.lemma"
d568 = erased
name586 = "Reals.mean"
d586 v0 v1 = coe d4 MAlonzo.Code.Dyadics.d706 (coe d2 v0 v1)
name596 = "Reals.<mean-max"
d596 = erased
name606 = "Reals._.lemma"
d606 = erased
name630 = "Reals.<mean-max'"
d630 = erased
name650 = "Reals.<mean-min"
d650 = erased
name660 = "Reals._.lemma"
d660 = erased
name680 = "Reals.<mean-min'"
d680 = erased
name700 = "Reals.<mean-max-true"
d700 = erased
name720 = "Reals.<mean-min-true"
d720 = erased
name740 = "Reals.<sqless"
d740 = erased
name794 = "Reals.<*zero"
d794 = erased
name812 = "Reals.<sqcrec"
d812 = erased
name906 = "Reals.F-lemma1"
d906 = erased
name974 = "Reals.F-lemma2"
d974 = erased
name1020 = "Reals.F-lemma3"
d1020 = erased
name1058 = "Reals.F-lemma4"
d1058 = erased
name1080 = "Reals.F-lemma5"
d1080 = erased
name1140 = "Reals.F-lemma6"
d1140 = erased
name1150 = "Reals.F-lemma7"
d1150 v0 v1 v2 v3 = du1150
du1150 = coe MAlonzo.Code.Dyadics.d4 erased
name1164 = "Reals.F-lemma8"
d1164 = erased
name1170 = "Reals.\8477\8314"
d1170 = ()
data T1170 a0 a1 a2 a3 a4 = C1216 a0 a1 a2
name1194 = "Reals.\8477\8314.cut"
d1194 = erased
name1198 = "Reals.\8477\8314.isprop"
d1198 = erased
name1202 = "Reals.\8477\8314.bound"
d1202 v0
  = case coe v0 of
      C1216 v3 v4 v5 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1208 = "Reals.\8477\8314.round1"
d1208 v0
  = case coe v0 of
      C1216 v3 v4 v5 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1214 = "Reals.\8477\8314.round2"
d1214 v0
  = case coe v0 of
      C1216 v3 v4 v5 -> coe v5
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1220 = "Reals._.bound"
d1220 v0 = coe d1202 v0
name1222 = "Reals._.cut"
d1222 = erased
name1224 = "Reals._.isprop"
d1224 = erased
name1226 = "Reals._.round1"
d1226 v0 = coe d1208 v0
name1228 = "Reals._.round2"
d1228 v0 = coe d1214 v0
name1236 = "Reals.real-eq'"
d1236 = erased
name1288 = "Reals._.prop-eq"
d1288 = erased
name1300 = "Reals._.bound-eq"
d1300 = erased
name1302 = "Reals._.round1-eq"
d1302 = erased
name1312 = "Reals._.round2-eq"
d1312 = erased
name1348 = "Reals.prop-univ"
d1348
  = error
      "MAlonzo Runtime Error: postulate evaluated: Reals.prop-univ"
name1358 = "Reals.real-eq"
d1358 = erased
name1374 = "Reals._.lemma"
d1374 = erased
name1378 = "Reals.r0"
d1378
  = coe
      C1216
      (coe MAlonzo.Code.Prop.du142 MAlonzo.Code.Dyadics.d704 erased)
      (\ v0 v1 ->
         coe
           MAlonzo.Code.Prop.du142 (coe d4 MAlonzo.Code.Dyadics.d706 v0)
           (coe MAlonzo.Code.Base.C54 erased erased))
      (\ v0 v1 -> coe MAlonzo.Code.Prop.du160 v1 erased)
name1400 = "Reals.rat"
d1400 v0
  = coe
      C1216
      (coe
         MAlonzo.Code.Prop.du142 (coe d2 MAlonzo.Code.Dyadics.d704 v0)
         erased)
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Prop.du142 (coe d586 v0 v1)
           (coe MAlonzo.Code.Base.C54 erased erased))
      (\ v1 v2 -> coe MAlonzo.Code.Prop.du160 v2 erased)
name1426 = "Reals._+\7523_"
d1426 v0 v1
  = coe
      C1216
      (coe
         MAlonzo.Code.Prop.du160 (coe d1202 v0)
         (\ v2 ->
            coe
              MAlonzo.Code.Prop.du160 (coe d1202 v1)
              (let v3 = coe MAlonzo.Code.Base.d50 v2 in
               let v4 = coe MAlonzo.Code.Base.d52 v2 in
               \ v5 ->
                 coe
                   MAlonzo.Code.Prop.du142 (coe d2 v3 (coe MAlonzo.Code.Base.d50 v5))
                   (coe
                      MAlonzo.Code.Prop.du142 v3
                      (coe
                         MAlonzo.Code.Prop.du142 (coe MAlonzo.Code.Base.d50 v5)
                         (coe
                            MAlonzo.Code.Base.C54
                            (coe MAlonzo.Code.Base.C54 v4 (coe MAlonzo.Code.Base.d52 v5))
                            erased))))))
      (\ v2 v3 ->
         coe
           MAlonzo.Code.Prop.du160 v3
           (\ v4 ->
              coe
                MAlonzo.Code.Prop.du160 (coe MAlonzo.Code.Base.d52 v4)
                (let v5 = coe MAlonzo.Code.Base.d50 v4 in
                 \ v6 ->
                   case coe v6 of
                     MAlonzo.Code.Base.C54 v7 v8
                       -> case coe v8 of
                            MAlonzo.Code.Base.C54 v9 v10
                              -> coe
                                   MAlonzo.Code.Prop.du160
                                   (coe d1208 v0 v5 (coe MAlonzo.Code.Base.d50 v9))
                                   (let v11 = coe MAlonzo.Code.Base.d52 v9 in
                                    \ v12 ->
                                      coe
                                        MAlonzo.Code.Prop.du160 (coe d1208 v1 v7 v11)
                                        (let v13 = coe MAlonzo.Code.Base.d50 v12 in
                                         let v14
                                               = coe
                                                   MAlonzo.Code.Base.d52
                                                   (coe MAlonzo.Code.Base.d52 v12) in
                                         \ v15 ->
                                           coe
                                             MAlonzo.Code.Prop.du142
                                             (coe d2 v13 (coe MAlonzo.Code.Base.d50 v15))
                                             (coe
                                                MAlonzo.Code.Base.C54 erased
                                                (coe
                                                   MAlonzo.Code.Prop.du142 v13
                                                   (coe
                                                      MAlonzo.Code.Prop.du142
                                                      (coe MAlonzo.Code.Base.d50 v15)
                                                      (coe
                                                         MAlonzo.Code.Base.C54
                                                         (coe
                                                            MAlonzo.Code.Base.C54 v14
                                                            (coe
                                                               MAlonzo.Code.Base.d52
                                                               (coe MAlonzo.Code.Base.d52 v15)))
                                                         erased))))))
                            _ -> coe MAlonzo.RTE.mazUnreachableError
                     _ -> MAlonzo.RTE.mazUnreachableError)))
      (\ v2 v3 ->
         coe
           MAlonzo.Code.Prop.du160 v3
           (\ v4 ->
              coe
                MAlonzo.Code.Prop.du160
                (coe MAlonzo.Code.Base.d52 (coe MAlonzo.Code.Base.d52 v4))
                (let v5 = coe MAlonzo.Code.Base.d50 v4 in
                 \ v6 ->
                   coe
                     MAlonzo.Code.Prop.du160 (coe MAlonzo.Code.Base.d52 v6)
                     (let v7 = coe MAlonzo.Code.Base.d50 v6 in
                      \ v8 ->
                        coe
                          MAlonzo.Code.Base.du62 (coe MAlonzo.Code.Dyadics.du1678 v5 v2)
                          (let v9 = coe MAlonzo.Code.Base.d50 v8 in
                           let v10
                                 = coe
                                     MAlonzo.Code.Base.d50
                                     (coe MAlonzo.Code.Base.d50 (coe MAlonzo.Code.Base.d52 v8)) in
                           let v11
                                 = coe
                                     MAlonzo.Code.Base.d52
                                     (coe MAlonzo.Code.Base.d50 (coe MAlonzo.Code.Base.d52 v8)) in
                           \ v12 ->
                             coe
                               MAlonzo.Code.Prop.du142
                               (coe
                                  d2 v7
                                  (coe
                                     d4 MAlonzo.Code.Dyadics.d706 (coe MAlonzo.Code.Base.d50 v12)))
                               (coe
                                  MAlonzo.Code.Prop.du142
                                  (coe
                                     d2 v9
                                     (coe
                                        d4 MAlonzo.Code.Dyadics.d706
                                        (coe MAlonzo.Code.Base.d50 v12)))
                                  (coe
                                     MAlonzo.Code.Base.C54
                                     (coe
                                        MAlonzo.Code.Base.C54
                                        (coe
                                           d1214 v0
                                           (coe
                                              d2 v7
                                              (coe
                                                 d4 MAlonzo.Code.Dyadics.d706
                                                 (coe MAlonzo.Code.Base.d50 v12)))
                                           (coe
                                              MAlonzo.Code.Prop.du142 v7
                                              (coe MAlonzo.Code.Base.C54 erased v10)))
                                        (coe
                                           d1214 v1
                                           (coe
                                              d2 v9
                                              (coe
                                                 d4 MAlonzo.Code.Dyadics.d706
                                                 (coe MAlonzo.Code.Base.d50 v12)))
                                           (coe
                                              MAlonzo.Code.Prop.du142 v9
                                              (coe MAlonzo.Code.Base.C54 erased v11))))
                                     erased)))))))
name1526 = "Reals.r+comm"
d1526 = erased
name1542 = "Reals._.lemma"
d1542 v0 v1 v2 v3 v4 v5 = du1542 v5
du1542 v0
  = coe
      MAlonzo.Code.Prop.du160 v0
      (\ v1 ->
         coe
           MAlonzo.Code.Prop.du160 (coe MAlonzo.Code.Base.d52 v1)
           (let v2 = coe MAlonzo.Code.Base.d50 v1 in
            \ v3 ->
              coe
                MAlonzo.Code.Prop.du142 (coe MAlonzo.Code.Base.d50 v3)
                (coe
                   MAlonzo.Code.Prop.du142 v2
                   (coe
                      MAlonzo.Code.Base.C54
                      (coe
                         MAlonzo.Code.Base.C54
                         (coe
                            MAlonzo.Code.Base.d52
                            (coe MAlonzo.Code.Base.d50 (coe MAlonzo.Code.Base.d52 v3)))
                         (coe
                            MAlonzo.Code.Base.d50
                            (coe MAlonzo.Code.Base.d50 (coe MAlonzo.Code.Base.d52 v3))))
                      erased))))
name1562 = "Reals._._.sublemma"
d1562 = erased
name1596 = "Reals.sqrt"
d1596 v0
  = coe
      C1216
      (coe
         MAlonzo.Code.Prop.du160 (coe d1202 v0)
         (\ v1 ->
            coe
              MAlonzo.Code.Prop.du142
              (coe d2 MAlonzo.Code.Dyadics.d704 (coe MAlonzo.Code.Base.d50 v1))
              (coe
                 MAlonzo.Code.Prop.du142 (coe MAlonzo.Code.Base.d50 v1)
                 (coe
                    MAlonzo.Code.Base.C54 (coe MAlonzo.Code.Base.d52 v1) erased))))
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Prop.du160 v2
           (\ v3 ->
              coe
                MAlonzo.Code.Base.du62
                (coe d36 (coe MAlonzo.Code.Base.d50 v3) (coe d4 v1 v1) erased)
                (let v4 = coe MAlonzo.Code.Base.d50 v3 in
                 let v5
                       = coe MAlonzo.Code.Base.d50 (coe MAlonzo.Code.Base.d52 v3) in
                 \ v6 ->
                   coe
                     MAlonzo.Code.Prop.du142 (coe MAlonzo.Code.Base.d50 v6)
                     (coe
                        MAlonzo.Code.Base.C54 erased
                        (coe
                           MAlonzo.Code.Prop.du142 v4
                           (coe
                              MAlonzo.Code.Base.C54 v5
                              (coe MAlonzo.Code.Base.d50 (coe MAlonzo.Code.Base.d52 v6))))))))
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Prop.du160 v2
           (\ v3 ->
              coe
                MAlonzo.Code.Prop.du160
                (coe MAlonzo.Code.Base.d52 (coe MAlonzo.Code.Base.d52 v3))
                (\ v4 ->
                   coe
                     MAlonzo.Code.Prop.du142 (coe MAlonzo.Code.Base.d50 v4)
                     (coe
                        MAlonzo.Code.Base.C54
                        (coe MAlonzo.Code.Base.d50 (coe MAlonzo.Code.Base.d52 v4))
                        erased))))
name1652 = "Reals._*\7523_"
d1652 v0 v1
  = coe
      C1216
      (coe
         MAlonzo.Code.Prop.du160 (coe d1202 v0)
         (\ v2 ->
            coe
              MAlonzo.Code.Prop.du160 (coe d1202 v1)
              (let v3 = coe MAlonzo.Code.Base.d50 v2 in
               let v4 = coe MAlonzo.Code.Base.d52 v2 in
               \ v5 ->
                 coe
                   MAlonzo.Code.Prop.du142 (coe d4 v3 (coe MAlonzo.Code.Base.d50 v5))
                   (coe
                      MAlonzo.Code.Prop.du142 v3
                      (coe
                         MAlonzo.Code.Prop.du142 (coe MAlonzo.Code.Base.d50 v5)
                         (coe
                            MAlonzo.Code.Base.C54
                            (coe MAlonzo.Code.Base.C54 v4 (coe MAlonzo.Code.Base.d52 v5))
                            erased))))))
      (\ v2 v3 ->
         coe
           MAlonzo.Code.Prop.du160 v3
           (\ v4 ->
              coe
                MAlonzo.Code.Prop.du160 (coe MAlonzo.Code.Base.d52 v4)
                (let v5 = coe MAlonzo.Code.Base.d50 v4 in
                 \ v6 ->
                   coe
                     MAlonzo.Code.Prop.du160
                     (coe
                        d1208 v0 v5
                        (coe
                           MAlonzo.Code.Base.d50
                           (coe MAlonzo.Code.Base.d50 (coe MAlonzo.Code.Base.d52 v6))))
                     (let v7 = coe MAlonzo.Code.Base.d50 v6 in
                      let v8
                            = coe
                                MAlonzo.Code.Base.d52
                                (coe MAlonzo.Code.Base.d50 (coe MAlonzo.Code.Base.d52 v6)) in
                      \ v9 ->
                        coe
                          MAlonzo.Code.Prop.du160 (coe d1208 v1 v7 v8)
                          (let v10 = coe MAlonzo.Code.Base.d50 v9 in
                           let v11
                                 = coe MAlonzo.Code.Base.d52 (coe MAlonzo.Code.Base.d52 v9) in
                           \ v12 ->
                             coe
                               MAlonzo.Code.Prop.du142
                               (coe d4 v10 (coe MAlonzo.Code.Base.d50 v12))
                               (coe
                                  MAlonzo.Code.Base.C54 erased
                                  (coe
                                     MAlonzo.Code.Prop.du142 v10
                                     (coe
                                        MAlonzo.Code.Prop.du142 (coe MAlonzo.Code.Base.d50 v12)
                                        (coe
                                           MAlonzo.Code.Base.C54
                                           (coe
                                              MAlonzo.Code.Base.C54 v11
                                              (coe
                                                 MAlonzo.Code.Base.d52
                                                 (coe MAlonzo.Code.Base.d52 v12)))
                                           erased)))))))))
      (\ v2 v3 ->
         coe
           MAlonzo.Code.Prop.du160 v3
           (\ v4 ->
              coe
                MAlonzo.Code.Prop.du160
                (coe MAlonzo.Code.Base.d52 (coe MAlonzo.Code.Base.d52 v4))
                (\ v5 ->
                   coe
                     MAlonzo.Code.Prop.du160 (coe MAlonzo.Code.Base.d52 v5)
                     (let v6 = coe MAlonzo.Code.Base.d50 v5 in
                      \ v7 ->
                        case coe v7 of
                          MAlonzo.Code.Base.C54 v8 v9
                            -> case coe v9 of
                                 MAlonzo.Code.Base.C54 v10 v11
                                   -> coe
                                        MAlonzo.Code.Base.du62 du1150
                                        (let v12 = coe MAlonzo.Code.Base.d50 v10 in
                                         let v13 = coe MAlonzo.Code.Base.d52 v10 in
                                         \ v14 ->
                                           coe
                                             MAlonzo.Code.Prop.du142
                                             (coe d2 v6 (coe MAlonzo.Code.Base.d50 v14))
                                             (coe
                                                MAlonzo.Code.Prop.du142 v8
                                                (coe
                                                   MAlonzo.Code.Base.C54
                                                   (coe
                                                      MAlonzo.Code.Base.C54
                                                      (coe
                                                         d1214 v0
                                                         (coe d2 v6 (coe MAlonzo.Code.Base.d50 v14))
                                                         (coe
                                                            MAlonzo.Code.Prop.du142 v6
                                                            (coe MAlonzo.Code.Base.C54 erased v12)))
                                                      v13)
                                                   (coe
                                                      MAlonzo.Code.Base.d52
                                                      (coe MAlonzo.Code.Base.d52 v14)))))
                                 _ -> coe MAlonzo.RTE.mazUnreachableError
                          _ -> MAlonzo.RTE.mazUnreachableError))))
name1750 = "Reals.sqrt*linv"
d1750 = erased
name1760 = "Reals._.lemma"
d1760 v0 v1 v2 = du1760 v0 v2
du1760 v0 v1
  = coe
      MAlonzo.Code.Prop.du160 v1
      (\ v2 ->
         coe
           MAlonzo.Code.Prop.du160 (coe MAlonzo.Code.Base.d52 v2)
           (let v3 = coe MAlonzo.Code.Base.d50 v2 in
            \ v4 ->
              case coe v4 of
                MAlonzo.Code.Base.C54 v5 v6
                  -> case coe v6 of
                       MAlonzo.Code.Base.C54 v7 v8
                         -> coe
                              MAlonzo.Code.Prop.du160 (coe MAlonzo.Code.Base.d50 v7)
                              (let v9 = coe MAlonzo.Code.Base.d52 v7 in
                               \ v10 ->
                                 coe
                                   MAlonzo.Code.Prop.du160 v9
                                   (let v11 = coe MAlonzo.Code.Base.d50 v10 in
                                    let v12
                                          = coe
                                              MAlonzo.Code.Base.d50
                                              (coe MAlonzo.Code.Base.d52 v10) in
                                    \ v13 ->
                                      coe
                                        d1214 v0 (coe MAlonzo.Code.Dyadics.d740 v3 v5)
                                        (coe
                                           MAlonzo.Code.Prop.du142
                                           (coe d116 (coe MAlonzo.Code.Base.d50 v13) v11)
                                           (coe
                                              MAlonzo.Code.Base.C54 erased
                                              (coe
                                                 du290 (coe MAlonzo.Code.Base.d50 v13) v11
                                                 (coe
                                                    MAlonzo.Code.Base.d50
                                                    (coe MAlonzo.Code.Base.d52 v13))
                                                 v12)))))
                       _ -> coe MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError))
name1798 = "Reals._.lemma2"
d1798 v0 v1 v2
  = coe
      MAlonzo.Code.Prop.du160 (coe d1208 v0 v1 v2)
      (\ v3 ->
         coe
           MAlonzo.Code.Base.du62
           (coe d36 (coe MAlonzo.Code.Base.d50 v3) v1 erased)
           (let v4 = coe MAlonzo.Code.Base.d50 v3 in
            let v5
                  = coe MAlonzo.Code.Base.d52 (coe MAlonzo.Code.Base.d52 v3) in
            \ v6 ->
              coe
                d1214 (coe d1652 (coe d1596 v0) (coe d1596 v0)) v1
                (coe
                   MAlonzo.Code.Prop.du142
                   (coe
                      d4 (coe MAlonzo.Code.Base.d50 v6) (coe MAlonzo.Code.Base.d50 v6))
                   (coe
                      MAlonzo.Code.Base.C54
                      (coe MAlonzo.Code.Base.d52 (coe MAlonzo.Code.Base.d52 v6))
                      (coe
                         MAlonzo.Code.Prop.du142 (coe MAlonzo.Code.Base.d50 v6)
                         (coe
                            MAlonzo.Code.Prop.du142 (coe MAlonzo.Code.Base.d50 v6)
                            (coe
                               MAlonzo.Code.Base.C54
                               (coe
                                  MAlonzo.Code.Base.C54
                                  (coe
                                     MAlonzo.Code.Prop.du142 v4
                                     (coe
                                        MAlonzo.Code.Base.C54 v5
                                        (coe MAlonzo.Code.Base.d50 (coe MAlonzo.Code.Base.d52 v6))))
                                  (coe
                                     MAlonzo.Code.Prop.du142 v4
                                     (coe
                                        MAlonzo.Code.Base.C54 v5
                                        (coe
                                           MAlonzo.Code.Base.d50 (coe MAlonzo.Code.Base.d52 v6)))))
                               erased)))))))
name1822 = "Reals.sqrt*rinv"
d1822 = erased
name1832 = "Reals._.lemma"
d1832 v0 v1 v2
  = coe
      MAlonzo.Code.Prop.du160 v2
      (\ v3 ->
         coe
           MAlonzo.Code.Prop.du160
           (coe MAlonzo.Code.Base.d50 (coe MAlonzo.Code.Base.d52 v3))
           (\ v4 ->
              coe
                MAlonzo.Code.Prop.du160 (coe MAlonzo.Code.Base.d52 v4)
                (let v5 = coe MAlonzo.Code.Base.d50 v4 in
                 \ v6 ->
                   case coe v6 of
                     MAlonzo.Code.Base.C54 v7 v8
                       -> case coe v8 of
                            MAlonzo.Code.Base.C54 v9 v10
                              -> coe
                                   d1214 v0 v1
                                   (coe
                                      MAlonzo.Code.Prop.du142 (coe d116 v5 v7)
                                      (coe
                                         MAlonzo.Code.Base.C54 erased
                                         (coe
                                            du290 v5 v7 (coe MAlonzo.Code.Base.d50 v9)
                                            (coe MAlonzo.Code.Base.d52 v9))))
                            _ -> coe MAlonzo.RTE.mazUnreachableError
                     _ -> MAlonzo.RTE.mazUnreachableError)))
name1862 = "Reals._.lemma2"
d1862 v0 v1 v2
  = coe
      MAlonzo.Code.Prop.du160 (coe d1208 v0 v1 v2)
      (\ v3 ->
         coe
           MAlonzo.Code.Prop.du142
           (coe
              d4 (coe MAlonzo.Code.Base.d50 v3) (coe MAlonzo.Code.Base.d50 v3))
           (coe
              MAlonzo.Code.Base.C54
              (coe
                 MAlonzo.Code.Prop.du142 (coe MAlonzo.Code.Base.d50 v3)
                 (coe
                    MAlonzo.Code.Prop.du142 (coe MAlonzo.Code.Base.d50 v3)
                    (coe
                       MAlonzo.Code.Base.C54
                       (coe
                          MAlonzo.Code.Base.C54
                          (coe MAlonzo.Code.Base.d52 (coe MAlonzo.Code.Base.d52 v3))
                          (coe MAlonzo.Code.Base.d52 (coe MAlonzo.Code.Base.d52 v3)))
                       erased)))
              erased))
name1878 = "Reals.Locator"
d1878 = erased
name1886 = "Reals.loc-rational"
d1886 v0 v1 = coe MAlonzo.Code.Booleans.d10 (coe d6 v0 v1)
name1918 = "Reals.locate"
d1918 v0 v1 v2 = du1918 v1 v2
du1918 v0 v1
  = let v2 = coe v0 v1 in
    case coe v2 of
      MAlonzo.Code.Base.C92 v3 -> coe MAlonzo.Code.Booleans.C6
      MAlonzo.Code.Base.C94 v3 -> coe MAlonzo.Code.Booleans.C4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1946 = "Reals.loc-sqrt2"
d1946 v0
  = let v1
          = coe
              MAlonzo.Code.Booleans.d10
              (coe
                 d6 (coe d2 MAlonzo.Code.Dyadics.d704 MAlonzo.Code.Dyadics.d704)
                 (coe d4 v0 v0)) in
    case coe v1 of
      MAlonzo.Code.Base.C92 v2
        -> coe
             MAlonzo.Code.Base.C92
             (coe
                MAlonzo.Code.Prop.du142
                (coe
                   d586 (coe d2 MAlonzo.Code.Dyadics.d704 MAlonzo.Code.Dyadics.d704)
                   (coe d4 v0 v0))
                (coe MAlonzo.Code.Base.C54 erased erased))
      MAlonzo.Code.Base.C94 v2
        -> coe
             MAlonzo.Code.Base.C94
             (\ v3 -> coe MAlonzo.Code.Prop.du160 v3 erased)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1972 = "Reals._.lemma"
d1972 = erased
name2002 = "Reals.sqrt2"
d2002
  = coe
      d1596
      (coe
         d1400 (coe d2 MAlonzo.Code.Dyadics.d704 MAlonzo.Code.Dyadics.d704))
name2006 = "Reals.List"
d2006 a0 = ()
type T2006 a0 = [] a0
pattern C2010 = []
pattern C2012 a0 a1 = (:) a0 a1
check2010 :: (forall xA. (T2006 xA))
check2010 = []
check2012 :: (forall xA. (xA -> ((T2006 xA) -> (T2006 xA))))
check2012 = (:)
cover2006 :: [] a1 -> ()
cover2006 x
  = case x of
      [] -> ()
      (:) _ _ -> ()
name2014 = "Reals.Bit"
type T2014 = Int
d2014
  = error "MAlonzo Runtime Error: postulate evaluated: Reals.Bit"
name2016 = "Reals.O"
d2016 :: T2014
d2016 = 0
name2018 = "Reals.I"
d2018 :: T2014
d2018 = 1
name2024 = "Reals.locateBit"
d2024 v0 v1 v2 = du2024 v1 v2
du2024 v0 v1
  = let v2 = coe v0 v1 in
    case coe v2 of
      MAlonzo.Code.Base.C92 v3 -> coe d2016
      MAlonzo.Code.Base.C94 v3 -> coe d2018
      _ -> coe MAlonzo.RTE.mazUnreachableError
name2060 = "Reals.digits"
d2060 v0 v1 v2 v3 v4 = du2060 v1 v2 v3 v4
du2060 v0 v1 v2 v3
  = case coe v1 of
      0 -> coe C2012 (coe du2024 v0 (coe d2 v2 v3)) C2010
      _ -> let v4 = coe subInt v1 (1 :: Integer) in
           let v5 = coe du1918 v0 (coe d2 v2 v3) in
           case coe v5 of
             MAlonzo.Code.Booleans.C4
               -> coe
                    C2012 d2018
                    (coe
                       du2060 v0 v4 (coe d2 v2 v3) (coe d4 MAlonzo.Code.Dyadics.d706 v3))
             MAlonzo.Code.Booleans.C6
               -> coe
                    C2012 d2016
                    (coe du2060 v0 v4 v2 (coe d4 MAlonzo.Code.Dyadics.d706 v3))
             _ -> coe MAlonzo.RTE.mazUnreachableError
name2104 = "Reals.Unit"
type T2104 = ()
d2104
  = error "MAlonzo Runtime Error: postulate evaluated: Reals.Unit"
name2106 = "Reals.printBit"
d2106 :: (T2014 -> (MAlonzo.Code.Agda.Builtin.IO.T8 () T2104))
d2106 = Prelude.print
name2108 = "Reals.printBitList"
d2108 ::
  ((T2006 T2014) -> (MAlonzo.Code.Agda.Builtin.IO.T8 () T2104))
d2108 = Prelude.print
main = d2110
name2110 = "Reals.main"
d2110
  = coe
      d2108
      (coe
         du2060 d1946 (11 :: Integer) MAlonzo.Code.Dyadics.d704
         MAlonzo.Code.Dyadics.d706)
name23469 = "Reals._..absurdlambda"
d23469 = erased