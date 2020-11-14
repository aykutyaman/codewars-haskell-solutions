module CenturySpec (spec) where

import Test.Hspec (it, shouldBe, Spec)
import Test.QuickCheck (property)
import Century (century, century')

spec :: Spec
spec = do
  it "Basic tests" $ do
    century 1705 `shouldBe` 18
    century 1900 `shouldBe` 19
    century 1601 `shouldBe` 17
    century 2000 `shouldBe` 20

  it "property test" $ property $
    \year -> century year == century' year
