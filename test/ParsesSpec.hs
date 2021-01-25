module ParsesSpec (spec) where

import Test.Hspec (it, shouldBe, Spec, describe)
import Parses (parses)

spec :: Spec
spec = do
  describe "anagrams" $ do
    it "should work on some easy examples" $ do
      parses "5" `shouldBe` True
      parses "-5" `shouldBe` True
      parses "5.0" `shouldBe` False
      parses "-5" `shouldBe` True
      parses "--5" `shouldBe` False
      parses "" `shouldBe` False
