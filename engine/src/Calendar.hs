module Calendar where

import Data.Time
import Person
import RIO
import qualified RIO.Set as S
import Room

data Meeting = Meeting
  { meetingStart :: UTCTime,
    meetingEnd :: UTCTime,
    meetingPersons :: Set Person,
    meetingRoom :: Room
  }
  deriving (Show, Eq)

defaultDaysOfWeek :: Set DayOfWeek
defaultDaysOfWeek =
  S.fromList
    [ Monday,
      Tuesday,
      Wednesday,
      Thursday,
      Friday,
      Saturday,
      Sunday
    ]

type TimeSlotLength = Int

defaultTimeSlotLength :: TimeSlotLength
defaultTimeSlotLength = 1

data Calendar = Calendar
  { calendarName :: Text,
    calendarMeetings :: Set Meeting,
    calendarDaysOfWeeek :: Set DayOfWeek,
    calendarTimeSlotLength :: TimeSlotLength
  }
  deriving (Show, Eq)