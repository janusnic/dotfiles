import XMonad
import XMonad.Config.Gnome
import XMonad.Util.EZConfig
import XMonad.Actions.CycleWS

main = xmonad  $ additionalKeysP (gnomeConfig {workspaces = (map show [1..6])})
              [
              --open terminal
              ("M4-t", spawn "gnome-terminal")
              -- moving workspaces
              , ("C-M1-<Left>",    prevWS )
              , ("C-M1-<Right>",   nextWS )
              , ("C-M1-S-<Left>",  shiftToPrev>>prevWS )
              , ("C-M1-S-<Right>", shiftToNext>>nextWS )
              -- use A-S-c instead , ("C-q", kill)
              ]
