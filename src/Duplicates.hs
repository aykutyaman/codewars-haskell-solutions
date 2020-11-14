module Duplicates where
import Text.Printf (printf)

createPhoneNumber :: [Int] -> String
createPhoneNumber [] = []
createPhoneNumber (x:xs)
  | l == 10 = "(" ++ show x ++ (createPhoneNumber xs)
  | l == 8 = show x ++ ") " ++ (createPhoneNumber xs)
  | l == 5 = show x ++ "-" ++ (createPhoneNumber xs)
  | otherwise = show x ++ (createPhoneNumber xs)
    where
      l = length xs + 1

createPhoneNumber' :: [Int] -> String
createPhoneNumber' [a,b,c,d,e,f,g,h,i,j] = printf "(%d%d%d) %d%d%d-%d%d%d%d" a b c d e f g h i j
