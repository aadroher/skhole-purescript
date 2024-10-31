module Person where

import RIO

-- | Domain models
newtype Person = Person
  { personName :: Text
  }
  deriving (Show, Eq)
