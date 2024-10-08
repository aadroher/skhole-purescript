module Main where

import Prelude

import Data.Maybe (Maybe(..))
import Debug (trace, traceM)
import Effect (Effect)
import Effect.Console (log)
import Web.DOM.Document (createElement)
import Web.DOM.Element (Element, toNode)
import Web.DOM.Node (Node, appendChild, nodeName)
import Web.DOM.ParentNode (ParentNode, QuerySelector(QuerySelector), querySelector)
import Web.HTML (HTMLDocument, window)
import Web.HTML.Event.EventTypes (input)
import Web.HTML.HTMLDocument (toDocument, toParentNode)
import Web.HTML.Window (document)

appId ∷ String
appId = "app"

getElementById ∷ String → ParentNode → Effect (Maybe Element)
getElementById id node = querySelector (QuerySelector $ "#" <> id) node


main :: Effect Unit
main = do
  log "This is some cool reloading app! Let us see if it works!"
  w <- window
  traceM w
  d <- document w
  traceM d
  let n = toParentNode d
  traceM n
  maybeAppElement <- getElementById appId n
  case maybeAppElement of
    Just appElement -> do 
      traceM appElement
      inputElement <- createElement "input" $ toDocument d
      traceM inputElement
      appendChild (toNode inputElement) (toNode appElement) 
      traceM appElement
    Nothing -> log $ "No element with id " <> appId
  