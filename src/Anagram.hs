module Anagram where

-- https://www.codewars.com/kata/523a86aa4230ebb5420001e1

import Data.Function (on)
import qualified Data.Map as Map

toMap :: String -> Map.Map Char Int
toMap = foldr (\x acc -> Map.insertWith (+) x 1 acc) Map.empty

isAnagram :: String -> String -> Bool
isAnagram w1 w2 = toMap w1 == toMap w2

isAnagram' :: String -> String -> Bool
isAnagram' = on (==) toMap

anagrams :: String -> [String] -> [String]
anagrams = filter . isAnagram
