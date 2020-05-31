import XMonad
import XMonad.Config.Desktop
import XMonad.Util.SpawnOnce

import XMonad.Layout.NoBorders (smartBorders)
import XMonad.Layout.Spacing


mySpacing = spacingRaw True (Border 0 5 5 5) True (Border 5 5 5 5) True


main = xmonad desktopConfig {
  borderWidth         = 4,
  terminal            = "alacritty",
  normalBorderColor   = "#928374",
  focusedBorderColor  = "#689d6a",
  layoutHook          = smartBorders $ mySpacing $ layoutHook def, 
  startupHook         = startupHook desktopConfig <+> spawnOnce "alacritty"
}
