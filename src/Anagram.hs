module Anagram where

import Data.Function (on)
import qualified Data.Map as Map

toMap :: String -> Map.Map Char Int
toMap = foldr (\x acc -> Map.insertWith (+) x 1 acc) Map.empty

isAnagram :: String -> String -> Bool
isAnagram w1 w2 = toMap w1 == toMap w2

isAnagram' :: String -> String -> Bool
isAnagram' = on (==) toMap

anagrams :: String -> [String] -> [String]
anagrams w = filter $ isAnagram w
