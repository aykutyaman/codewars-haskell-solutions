module NoSpace (noSpace, noSpace') where

noSpace :: String -> String
noSpace [] = []
-- noSpace str = str
noSpace (x:xs)
  | x == ' ' = noSpace xs
  | otherwise = x : noSpace xs

noSpace' :: String -> String
noSpace' = filter (/= ' ')
