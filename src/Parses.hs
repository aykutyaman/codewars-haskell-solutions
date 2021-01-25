module Parses where
import Control.Applicative
import Data.Text
import Data.Attoparsec.Text

int :: Parser String
int = optional (char '-') *> some digit <* endOfInput
-- int = id <$ many (char '-') <*> some digit <* endOfInput

parses :: String -> Bool
parses s = case parseOnly int (pack s) of
             Right _ -> True
             Left _ -> False
