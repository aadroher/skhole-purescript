module Organisation where

import Calendar
import Person
import RIO

data Organisation = Organisation
  { organisationName :: Text,
    organisationCalendars :: Set Calendar,
    organisationPersons :: Set Person
  }
  deriving (Show, Eq)