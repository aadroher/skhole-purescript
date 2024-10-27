module Test.Main where

import Prelude
import Control.Monad.List.Trans (cons)
import Effect (Effect)
import Effect.Class.Console (log)
import Main (add2)
import Test.Spec (Spec, describe, it)
import Test.Spec.Assertions (shouldEqual)
import Test.Spec.Reporter (consoleReporter)
import Test.Spec.Runner.Node (runSpecAndExitProcess)

main :: Effect Unit
main = runSpecAndExitProcess [ consoleReporter ] spec

spec :: Spec Unit
spec =
  describe "Main" do
    it "add2" do
      add2 2 `shouldEqual` 5
