module Test.Main where

import Prelude

import Effect (Effect)
import Effect.Class.Console (log

)
import Main (add2)
import Test.Spec.Runner (runSpec)
main :: Effect Unit
main = do
  log "🍝"
  log "You should add some tests."
