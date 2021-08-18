module Helloworld where

open import Agda.Builtin.IO using (IO)
open import Agda.Builtin.Unit using (⊤)
open import Agda.Builtin.String using (String)
open import IO.Primitive hiding (putStrLn)

{-# FOREIGN GHC import qualified Data.Text as T #-}
postulate putStrLn : String -> IO ⊤
{-# COMPILE GHC putStrLn = putStrLn . T.unpack #-}
postulate getStr : IO String
{-# COMPILE GHC getStr = T.pack <$> getLine #-}

main : IO ⊤
main =
  (putStrLn "Hello world!") >>=
  (λ _ -> getStr) >>=
  (λ name -> putStrLn name)
