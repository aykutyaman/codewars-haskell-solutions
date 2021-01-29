{-# LANGUAGE OverloadedStrings #-}
module RPN where

import Data.Attoparsec.Text
import Data.Text as T
import Data.Either (fromRight)

-- https://www.codewars.com/kata/52f78966747862fc9a0009ae

data CalcOp
  = PushNum Double
  | BinOp (Double -> Double -> Double)

pRPN :: Parser [CalcOp]
pRPN = (`sepBy` space) $ choice
  [ char '+' >> return (BinOp (+))
  , char '-' >> return (BinOp (-))
  , char '*' >> return (BinOp (*))
  , char '/' >> return (BinOp (/))
  , PushNum <$> double
  ]

eval :: [Double] -> [CalcOp] -> Double
eval stack (PushNum n:rs) = eval (n:stack) rs
eval (a:b:ss) (BinOp op:rs) = eval (op b a : ss) rs
eval (result:_) [] = result
eval _ _ = error "bad touch"


parseRPN :: String -> [CalcOp]
parseRPN = fromRight (error "what?") . parseOnly pRPN . T.pack

calc :: String -> Double
calc = eval [0] . parseRPN
