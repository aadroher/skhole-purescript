module Room where

import RIO

newtype Room = Room
  { roomName :: Text
  }
  deriving (Show, Eq)
