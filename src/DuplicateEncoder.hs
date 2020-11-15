module DuplicateEncoder where

import qualified Data.Map as Map
import Data.Char (toLower)

insertChar :: Char -> Map.Map Char Int -> Map.Map Char Int
insertChar x = Map.insertWith (+) (toLower x) 1

getParen :: Int -> Char
getParen n
 | n > 1 = ')'
 | otherwise = '('

toParen :: Map.Map Char Int -> Char -> Char
toParen hm x =
  case Map.lookup (toLower x) hm of
    Nothing -> getParen 0
    Just n -> getParen n

duplicateEncode :: String -> String
duplicateEncode xs = map (toParen hm) xs
  where hm = foldr insertChar Map.empty xs
