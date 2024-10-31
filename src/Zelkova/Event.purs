module Zelkova.Event where

import Effect (Effect)
import Prelude

newtype Event a
  = Event ((a -> Effect Unit) -> Effect Unit)

instance functorEvent :: Functor Event where
  map f (Event e) = Event \g -> e (g <<< f)

-- intance applyEvent :: Apply Event where 
