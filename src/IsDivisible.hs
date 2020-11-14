module IsDivisible where

isDivisible :: Int -> Int -> Int -> Bool
isDivisible x y z = x `mod` y == 0 && x `mod` z == 0
