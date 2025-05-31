module Color where

import ColorT
import ColorTables

hb :: String -> Maybe RawColor
hb n = color <$> lookup ("Hatchbox", n) plaLookup

plaLookup :: [((String, String), NamedColor)]
plaLookup = map (\x -> (names x, x)) pla
