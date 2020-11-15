module DuplicateEncoderSpec (spec) where

import Test.Hspec (it, shouldBe, Spec)
import DuplicateEncoder (duplicateEncode)

spec :: Spec
spec = do
  it "encodes the codes" $ do
    duplicateEncode "din"             `shouldBe` "((("
    duplicateEncode "recede"          `shouldBe` "()()()"
    duplicateEncode "Success"         `shouldBe` ")())())"
    duplicateEncode "CodeWarrior"     `shouldBe` "()(((())())"
    duplicateEncode "Supralapsarian"  `shouldBe` ")()))()))))()("
    duplicateEncode "iiiiii"          `shouldBe` "))))))"
