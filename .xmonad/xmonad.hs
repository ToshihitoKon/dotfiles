import XMonad

--XMonad.Layout
import XMonad.Layout.Spacing
import XMonad.Layout.ResizableTile
import XMonad.Layout.Gaps
import XMonad.Layout.SimplestFloat
import XMonad.Layout.ToggleLayouts

--XMonad.Hooks
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks

--XMonad.Util
import XMonad.Util.Run
import XMonad.Util.EZConfig

modm = mod4Mask

main = do
    xmonad =<< xmobar
        ( defaultConfig
            { borderWidth       = 1
            , terminal          = "urxvt"
            , modMask           = modm
            , layoutHook        = toggleLayouts Full  myLayoutHooks
            }
          `additionalKeys`
          [ ((modm, xK_a), sendMessage MirrorExpand)
          , ((modm, xK_z), sendMessage MirrorShrink)
          , ((modm .|. controlMask, xK_space), sendMessage ToggleLayout)
          ]
        )


myLayoutHooks = do
    avoidStruts $ gaps [(U,8),(D,8),(L,8),(R,8)] $ spacing 3 $
                  ResizableTall 1 (2/50) (2/3) []
