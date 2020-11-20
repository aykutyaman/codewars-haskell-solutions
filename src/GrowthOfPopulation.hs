module GrowthOfPopulation where

-- https://www.codewars.com/kata/563b662a59afc2b5120000c6

nbYear :: Int -> Double -> Int -> Int -> Int
nbYear p0 percent aug p = go 0 p0
  where
    go :: Int -> Int -> Int
    go acc x
      | x >= p = acc
      | otherwise = go (acc + 1) (aug + x + floor (fromIntegral x * percent / 100))
