
```haskell top
module ColorTables where

import Color
```

# Color Tables

| Brand | Name | Color |
|-------|------|-------|
| Hatchbox | Yellow | `#ECD018` |

```haskell
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
```
