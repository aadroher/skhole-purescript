{-# LANGUAGE NoImplicitPrelude #-}

module Meeting where

import Data.UUID
import RIO
import RIO.Process

data Meeting = Meeting
  { start :: Text,
    end :: Text
  }
  deriving (Show)
