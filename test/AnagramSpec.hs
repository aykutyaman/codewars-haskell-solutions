module AnagramSpec (spec) where

import Test.Hspec (it, shouldBe, Spec, describe)
import Test.QuickCheck (property)
import Anagram (anagrams)

spec :: Spec
spec = do
  describe "anagrams" $ do
    it "should work on some easy examples" $ do
      anagrams "abba"  ["aabb", "abcd", "bbaa", "dada"] `shouldBe` ["aabb", "bbaa"]
      anagrams "laser" ["lazing", "lazy",  "lacer"] `shouldBe` []
