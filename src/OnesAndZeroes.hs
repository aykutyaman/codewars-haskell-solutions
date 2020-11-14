module OnesAndZeroes (toNumber) where

toNumber :: [Int] -> Int
toNumber [] = 0
toNumber (x:xs) = x * ( 2 ^ (length xs)) + (toNumber xs)
