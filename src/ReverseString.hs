module ReverseString (reverseStr, reverseStr', reverseStr'') where

reverseStr, reverseStr', reverseStr'' :: String -> String
reverseStr [] = []
reverseStr (x:xs) = reverseStr xs ++ [x]

reverseStr' = foldl (\acc x -> x:acc) []

reverseStr'' = foldl (flip (:)) []
