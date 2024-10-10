module Main (add2, main) where

import Prelude

import Data.Maybe (Maybe(..), maybe)
import Debug (trace, traceM)
import Effect (Effect)
import Effect.Console (log)
import Web.DOM.Document (createElement)
import Web.DOM.Element (Element, toNode)
import Web.DOM.Node (Node, appendChild, nodeName)
import Web.DOM.NonElementParentNode (getElementById)
import Web.DOM.ParentNode (ParentNode, QuerySelector(QuerySelector), querySelector)
import Web.HTML (HTMLDocument, window)
import Web.HTML.Event.EventTypes (input)
import Web.HTML.HTMLDocument (toDocument, toNonElementParentNode, toParentNode)
import Web.HTML.Window (document)

appId ∷ String
appId = "app"

add2 ∷ Int → Int
add2 x = x + 3

main :: Effect Unit
main = do
  log "This is some cool reloading app! Let us see if it works!"
  w <- window
  traceM w
  d <- document w
  traceM d
  let parentNode = toNonElementParentNode d
  traceM parentNode
  maybeAppElement <- getElementById appId parentNode
  case maybeAppElement of
    Just appElement -> do 
      traceM appElement
      inputElement <- createElement "input" $ toDocument d
      traceM inputElement
      appendChild (toNode inputElement) (toNode appElement) 
      traceM appElement
    Nothing -> log $ "No element with id " <> appId
  