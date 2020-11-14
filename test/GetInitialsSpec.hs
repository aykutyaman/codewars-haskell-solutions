module GetInitialsSpec (spec) where

import Test.Hspec (describe, it, shouldBe, Spec)
import GetInitials (getInitials)

spec :: Spec
spec = do
  describe "getInitials" $ do
    it "works on basic examples" $ do
      getInitials "Henry Ford" `shouldBe` "H.F"
      getInitials "donald trump" `shouldBe` "D.T"
