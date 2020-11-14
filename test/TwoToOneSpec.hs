module TwoToOneSpec (spec) where

import Test.Hspec (it, shouldBe, Spec)
import Test.QuickCheck (property)
import TwoToOne (longest,longest')

spec :: Spec
spec = do
  it "Basic tests" $ do
    longest "aretheyhere" "yestheyarehere" `shouldBe` "aehrsty"
    longest "loopingisfunbutdangerous" "lessdangerousthancoding" `shouldBe` "abcdefghilnoprstu"
    longest "inmanylanguages" "theresapairoffunctions" `shouldBe` "acefghilmnoprstuy"

  it "property test" $ property $
    \s1 s2 -> longest s1 s2 == longest' s1 s2
