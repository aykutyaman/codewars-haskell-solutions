module Persistence where
import Data.List.Split (splitOn)
import Data.Char (digitToInt)

toPro :: [[Char]] -> Int
toPro xs = foldr (\x acc -> acc * (read x :: Int)) 1 xs

pers :: Int -> Int -> Int
pers times n
  | (length r == 1) = times
  | otherwise = pers (times + 1) (toPro r)
  where
    r = (filter (/="")) (splitOn "" (show n))

persistence :: Int -> Int
persistence n = pers 0 n


--
persistence' :: Int -> Int
persistence' n
  | n < 10 = 0
  | otherwise = 1 + persistence' (product (map digitToInt (show n)))
