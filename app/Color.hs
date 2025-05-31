module Color where

import ColorTables
import Data.Word
import Text.Printf

type RawColor = Word32

class Paintable a where
  color :: a -> RawColor
  render :: a -> String
  render = printf "%.6X" . color

class Named a where
  name :: a -> String

data NamedColor = NamedColor {brand :: String, _name :: String, named_color :: RawColor}

newtype IntColor = IntColor {int_color :: RawColor}

data Color = Named NamedColor | Int IntColor

instance Paintable NamedColor where
  color = named_color

instance Paintable IntColor where
  color = int_color

instance Paintable Color where
  color = color

instance Named NamedColor where
  name = _name

hatchbox :: String -> RawColor -> NamedColor
hatchbox = NamedColor "Hatchbox"

names :: NamedColor -> (String, String)
names (NamedColor b n _) = (b, n)

instance Eq NamedColor where
  x == y = names x == names y

hb :: String -> Maybe RawColor
hb n = color <$> lookup ("Hatchbox", n) plaLookup

plaLookup :: [((String, String), NamedColor)]
plaLookup = map (\x -> (names x, x)) pla
