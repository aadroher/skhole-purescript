module Zelkova.Application where

import Prelude


data Html message = Html message

type Application model message = {
  init :: model,
  update :: model -> message -> model,
  view :: model -> Html message
}