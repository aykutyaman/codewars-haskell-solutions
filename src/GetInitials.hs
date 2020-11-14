module GetInitials where
import Data.List.Split (splitOn)
import Data.List (intersperse)
import Data.Char (toUpper)

headWithDot :: String -> String
headWithDot = (:".") . toUpper. head

heads :: [String] -> String
heads [] = ""
heads (x:[]) = ((toUpper . head) x) : ""
heads (x:xs) = (headWithDot x) ++ (heads xs)

getInitials :: String -> String
getInitials = heads . (splitOn " ")

-- alternative

getInitials' :: String -> String
getInitials' = intersperse '.' . map (toUpper . head) . words
