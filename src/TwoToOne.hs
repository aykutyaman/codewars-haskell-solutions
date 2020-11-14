module TwoToOne where
import Data.List (sort,nub)

uniques :: Char -> [Char] -> [Char]
uniques c acc
  | c `elem` acc = acc
  | otherwise    = c:acc

longest' :: [Char] -> [Char] -> [Char]
longest' s1 s2 = foldr uniques [] (sort (s2 ++ s1))

longest :: [Char] -> [Char] -> [Char]
longest s1 s2 = (nub . sort) (s2 ++ s1)
