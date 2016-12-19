#!/bin/sh
setxkbmap -layout jp

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

fcitx-autostart &
compton &

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

sh ~/.fehbg &

exec xmonad
#exec startxfce4
