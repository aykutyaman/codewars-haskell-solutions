{-# LANGUAGE OverloadedStrings #-}
module ParseHtmlColorSpec (spec) where

import Test.Hspec (it, shouldBe, Spec, describe)
import ParseHtmlColor (parseHtmlColor)
import Data.Map.Strict (Map, fromList, (!))

spec :: Spec
spec = do
  describe "parseHtmlColor" $ do
    it "should work on some easy examples" $ do
      parseHtmlColor "#80FFA0"
        `shouldBe` fromList [('r',128), ('g',255), ('b',160)]
      parseHtmlColor "#3B7"
        `shouldBe` fromList [('r',51), ('g',187), ('b',119)]
