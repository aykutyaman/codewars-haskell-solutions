module DnaToRna where

dnaToRna :: String -> String
dnaToRna [] = []
dnaToRna ('T':xs) = 'U':dnaToRna xs
dnaToRna (x:xs)   = x:dnaToRna xs

-- alternative
dnaToRna' :: String -> String
dnaToRna' = map (\x -> (case (x == 'T') of
                          True -> 'U'
                          False -> x))
