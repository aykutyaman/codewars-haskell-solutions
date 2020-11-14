module DnaToRnaSpec (spec) where

import Test.Hspec (describe, it, shouldBe, Spec)
import DnaToRna (dnaToRna)

spec :: Spec
spec = do
  describe "getInitials" $ do
    it "should work for some examples" $ do
      dnaToRna "TTTT" `shouldBe` "UUUU"
      dnaToRna "GCAT" `shouldBe` "GCAU"
      dnaToRna "GACCGCCGCC" `shouldBe` "GACCGCCGCC"
