module GrowthOfPopulation where

nbYear :: Int -> Double -> Int -> Int -> Int
nbYear p0 percent aug p = go 0 (fromIntegral p0)
  where
    go :: Int -> Int -> Int
    go acc x
      | x >= p = acc
      | otherwise = go (acc + 1) (aug + x + floor (fromIntegral x * percent / 100))
