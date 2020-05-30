import XMonad
import XMonad.Config.Desktop
import XMonad.Util.SpawnOnce

import XMonad.Layout.Spacing

baseConfig = desktopConfig

main = xmonad baseConfig {
  borderWidth         = 4,
  terminal            = "alacritty",
  normalBorderColor   = "#928374",
  focusedBorderColor  = "#689d6a",
  layoutHook          = spacingRaw True (Border 0 5 5 5) True (Border 5 5 5 5) True $ layoutHook def,
  startupHook         = startupHook baseConfig <+> spawnOnce "alacritty"
}
