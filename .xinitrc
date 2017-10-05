#!/bin/sh

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

fcitx-autostart &
compton &
twmnd &

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

sh ~/.fehbg &
xinput disable "SynPS/2 Synaptics TouchPad"
#xinput set-prop "TPPS/2 IBM TrackPoint" "Coordinate Transformation Matrix" 2 0 0 0 2 0 0 0 1
unclutter &

exec xmonad
#exec startxfce4
