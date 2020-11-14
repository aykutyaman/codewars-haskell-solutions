module Century where

century, century' :: Int -> Int
century year
  | year `mod` 100 == 0 = d
  | otherwise = d + 1
  where
    d = year `div` 100

century' year = (year + 99) `div` 100
