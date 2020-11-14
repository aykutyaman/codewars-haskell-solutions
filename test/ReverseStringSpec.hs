module ReverseStringSpec (spec) where

import Test.Hspec        (it, shouldBe, describe, Spec)
import ReverseString
import Test.QuickCheck (property)

spec :: Spec
spec =
  describe "ReverseString" $ do
    it "should work" $ do
      reverseStr "world" `shouldBe` "dlrow"

    it "property" $ property $
      \str ->
        reverseStr str == reverse str
        && reverseStr str == reverseStr' str
        && reverse str == reverseStr'' str
