module NoSpaceSpec (spec) where

import Test.Hspec        (it, shouldBe, describe, Spec)
import Test.Hspec.Runner (configFastFail, defaultConfig, hspecWith)
import NoSpace (noSpace, noSpace')
import Test.QuickCheck

spec :: Spec
spec =
  describe "NoSpace" $ do
    it "should work with example tests" $ do
      noSpace "8 j 8   mBliB8g  imjB8B8  jl  B" `shouldBe` "8j8mBliB8gimjB8B8jlB"
      noSpace "8 8 Bi fk8h B 8 BB8B B B  B888 c hl8 BhB fd" `shouldBe` "88Bifk8hB8BB8BBBB888chl8BhBfd"
      noSpace "8aaaaa dddd r     " `shouldBe` "8aaaaaddddr"
      noSpace "jfBm  gk lf8hg  88lbe8 " `shouldBe` "jfBmgklf8hg88lbe8"
      noSpace "8j aam" `shouldBe` "8jaam"

    it "property" $ property $
      \str -> noSpace' str == noSpace str
