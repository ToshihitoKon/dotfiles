autoload -Uz compinit promptinit
compinit
promptinit

alias ls="ls --color=always"
alias less="less -MR"
alias wifi-menu="sudo ip link set wls1 down; sudo wifi-menu"

alias al_output="xrandr --output VGA1 --auto --right-of LVDS1; ~/.fehbg"
alias pulse_output_daifuku="export PULSE_SERVER=192.168.150.170"

export LANG=ja_JP.UTF-8

prompt fade green
#screenfetch
