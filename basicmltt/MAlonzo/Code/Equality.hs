{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Equality where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified MAlonzo.RTE
import qualified Data.Text

name12 = "Equality.ap"
d12 = erased
name22 = "Equality.inv"
d22 = erased
name32 = "Equality.transport"
d32 v0 v1 v2 v3 v4 v5 = du32 v5
du32 v0 = coe v0
name46 = "Equality._\183_"
d46 = erased
name58 = "Equality._\8801\10216_\10217_"
d58 = erased
name68 = "Equality._qed"
d68 = erased
name78 = "Equality.begin_"
d78 = erased