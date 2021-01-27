module ParseHtmlColor where

import qualified Data.Map.Strict as M
import Control.Applicative
import Data.Text (Text,pack)
import Data.Attoparsec.Text
import Numeric (readHex)
import Data.Tuple (swap)

presetColors :: M.Map String String
presetColors = M.fromList [
   ("aliceblue", "#f0f8ff")
  ,("antiquewhite", "#faebd7")
                        ]
value :: Parser Char
value = digit
  <|> char 'A' <|> char 'B' <|> char 'C' <|> char 'D' <|> char 'F'

-- TODO: refactor c6 and c3
c6 a b c d e f = [
  ('r', fst $ head $ readHex (a:[b])),
  ('g', fst $ head $ readHex (c:[d])),
  ('b', fst $ head $ readHex (e:[f]))
  ]

c3 a b c = [
  ('r', fst $ head $ readHex (a:[a])),
  ('g', fst $ head $ readHex (b:[b])),
  ('b', fst $ head $ readHex (c:[c]))
  ]

parseColor :: Parser [(Char, Integer)]
parseColor =
  c6 <$ char '#' <*> value <*> value <*> value <*> value <*> value <*> value
  <|>
  c3 <$ char '#' <*> value <*> value <*> value

parseHtmlColor :: String -> M.Map Char Integer
parseHtmlColor s = case parseOnly parseColor (pack s) of
                     Left _ -> M.empty
                     Right l -> M.fromList l


