
```haskell top
module ColorTables where

import ColorT
import Data.List
import Text.Printf
```

# Color Tables

| Brand | Name | Color |
|-------|------|-------|
| Hatchbox | Yellow | ![#ECD018](https://placehold.co/15x15/ECD018/ECD018.png) `#ECD018` |
| Hatchbox | Dark Yellow | ![#F6C14B](https://placehold.co/15x15/F6C14B/F6C14B.png) `#F6C14B` |
| Hatchbox | Black | ![#2A2A2B](https://placehold.co/15x15/2A2A2B/2A2A2B.png) `#2A2A2B` |
| Hatchbox | White | ![#E3E5E7](https://placehold.co/15x15/E3E5E7/E3E5E7.png) `#E3E5E7` |
| Hatchbox | Bronze | ![#8E7350](https://placehold.co/15x15/8E7350/8E7350.png) `#8E7350` |
| Hatchbox | Beige | ![#CBB9B1](https://placehold.co/15x15/CBB9B1/CBB9B1.png) `#CBB9B1` |
| Hatchbox | Copper | ![#936F49](https://placehold.co/15x15/936F49/936F49.png) `#936F49` |
| Hatchbox | Cool Gray | ![#959494](https://placehold.co/15x15/959494/959494.png) `#959494` |
| Hatchbox | Silver | ![#969996](https://placehold.co/15x15/969996/969996.png) `#969996` |
| Hatchbox | Gold | ![#CA902B](https://placehold.co/15x15/CA902B/CA902B.png) `#CA902B` |
| Hatchbox | Green | ![#0E9749](https://placehold.co/15x15/0E9749/0E9749.png) `#0E9749` |
| Hatchbox | Forest Green | ![#0D4B0D](https://placehold.co/15x15/0D4B0D/0D4B0D.png) `#0D4B0D` |
| Hatchbox | Neon Green | ![#86D553](https://placehold.co/15x15/86D553/86D553.png) `#86D553` |
| Hatchbox | Lime Green | ![#95C532](https://placehold.co/15x15/95C532/95C532.png) `#95C532` |
| Hatchbox | Mint Green | ![#8ED7B1](https://placehold.co/15x15/8ED7B1/8ED7B1.png) `#8ED7B1` |
| Hatchbox | Iron Red | ![#79111E](https://placehold.co/15x15/79111E/79111E.png) `#79111E` |
| Hatchbox | Red | ![#AB2A2C](https://placehold.co/15x15/AB2A2C/AB2A2C.png) `#AB2A2C` |
| Hatchbox | Pink | ![#D76294](https://placehold.co/15x15/D76294/D76294.png) `#D76294` |
| Hatchbox | Light Blue | ![#A6C5D2](https://placehold.co/15x15/A6C5D2/A6C5D2.png) `#A6C5D2` |
| Hatchbox | Gray Blue | ![#959494](https://placehold.co/15x15/959494/959494.png) `#959494` |
| Hatchbox | Orange | ![#D65E17](https://placehold.co/15x15/D65E17/D65E17.png) `#D65E17` |
| Hatchbox | Purple | ![#983587](https://placehold.co/15x15/983587/983587.png) `#983587` |
| Hatchbox | Light Purple | ![#8875D6](https://placehold.co/15x15/8875D6/8875D6.png) `#8875D6` |
| Hatchbox | Midnight Purple | ![#492668](https://placehold.co/15x15/492668/492668.png) `#492668` |
| Hatchbox | Blue | ![#00479C](https://placehold.co/15x15/00479C/00479C.png) `#00479C` |

```haskell
hatchbox :: String -> RawColor -> NamedColor
hatchbox = NamedColor "Hatchbox"

pla :: [NamedColor]
pla =
  -- Missing:
  -- Rose gold
  [ hatchbox "Yellow" 0xECD018,
    hatchbox "Dark Yellow" 0xF6C14B,
    hatchbox "Black" 0x2A2A2B,
    hatchbox "White" 0xE3E5E7,
    hatchbox "Bronze" 0x8E7350,
    hatchbox "Beige" 0xCBB9B1,
    hatchbox "Copper" 0x936F49,
    hatchbox "Cool Gray" 0x959494,
    hatchbox "Silver" 0x969996,
    hatchbox "Gold" 0xCA902B,
    hatchbox "Green" 0x0E9749,
    hatchbox "Forest Green" 0x0D4B0D,
    hatchbox "Neon Green" 0x86D553,
    hatchbox "Lime Green" 0x95C532,
    hatchbox "Mint Green" 0x8ED7B1,
    hatchbox "Iron Red" 0x79111E,
    hatchbox "Red" 0xAB2A2C,
    hatchbox "Pink" 0xD76294, -- FF81BA
    hatchbox "Light Blue" 0xA6C5D2,
    hatchbox "Gray Blue" 0x959494,
    hatchbox "Orange" 0xD65E17,
    hatchbox "Purple" 0x983587,
    hatchbox "Light Purple" 0x8875D6,
    hatchbox "Midnight Purple" 0x492668,
    hatchbox "Blue" 0x00479C
  ]

colorSqr :: NamedColor -> String
colorSqr nc = printf "![#%s](https://placehold.co/15x15/%s/%s.png) `#%s`" c c c c
  where
    c = render nc

asRow :: [String] -> [String]
asRow r = "|" : intersperse "|" r ++ ["|"]

toRow :: NamedColor -> String
toRow nc@(NamedColor b n _) = unwords $ asRow [b, n, colorSqr nc]

toMd :: [NamedColor] -> String
toMd colors = unlines $ asRow ["Brand", "Name", "Color"] ++ map toRow colors

```
