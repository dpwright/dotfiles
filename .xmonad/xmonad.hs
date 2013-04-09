import XMonad
import XMonad.Actions.PhysicalScreens (sendToScreen, viewScreen)
import XMonad.Util.EZConfig(additionalKeys)
import XMonad.Prompt
import XMonad.Prompt.Shell
import Solarized

import qualified XMonad.StackSet as W
import qualified Data.Map as M

modm = mod4Mask
myWorkspaces = ["1","2","3","4","5","6","7","8","9"]

-- Prevent workspace focus switching
-- http://comments.gmane.org/gmane.comp.lang.haskell.xmonad/12617

myXPConfig :: XPConfig
myXPConfig = defaultXPConfig
              { bgColor     = solarizedBase03
              , fgColor     = solarizedBase1
              , bgHLight    = solarizedYellow
              , fgHLight    = solarizedBase02
              , borderColor = solarizedYellow
              }

main = do
    xmonad $ defaultConfig
       { modMask = modm
       , terminal = "urxvt"
       , focusFollowsMouse = False
       , workspaces = myWorkspaces
       , normalBorderColor = solarizedBase01
       , focusedBorderColor = solarizedYellow
       } `additionalKeys`
       ([ ((modm,               xK_r), shellPrompt myXPConfig)
        , ((modm,               xK_w), spawn "firefox")
        , ((modm .|. shiftMask, xK_w), sendMessage Shrink)
        , ((modm .|. shiftMask, xK_e), sendMessage Expand)
        , ((modm,               xK_h), viewScreen 0)
        , ((modm,               xK_l), viewScreen 1)
        , ((modm .|. shiftMask, xK_h), sendToScreen 0)
        , ((modm .|. shiftMask, xK_l), sendToScreen 1)
        ]
        ++
        [((m .|. modm, k), windows $ f i)
            | (i, k) <- zip myWorkspaces [xK_1 .. xK_9]
            , (f, m) <- [(W.view, 0), (W.shift, shiftMask)]])
