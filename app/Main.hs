module Main where

import Control.Monad (forM_, when)
import qualified Data.List as List
import qualified Day01
import qualified Day02
import qualified Day03
import qualified System.Environment as Env

main :: IO ()
main = do
  args <- Env.getArgs
  when (List.null args) (putStrLn "usage: stack run [dayID[ dayID[ dayID]]]")
  forM_ args $ \dayId -> do
    putStrLn $ "running " ++ dayId ++ ":"
    case dayId of
      "day01" -> Day01.run
      "day02" -> Day02.run
      "day03" -> Day03.run
      _ -> putStrLn $ "error: unknown day " ++ dayId
    putStrLn ""
