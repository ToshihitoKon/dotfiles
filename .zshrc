autoload -Uz compinit promptinit
compinit
promptinit

#alias ls="ls --color=always"
alias ls="tree -L 1 -h -C"
alias tree="tree -L 2 -C"
alias less="less -MR"
alias wifi-menu="sudo ip link set wlp4s0 down; sudo wifi-menu"

alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'

alias al_output="xrandr --output HDMI2 --auto --right-of eDP1; ~/.fehbg"
alias urxvt_pt10="urxvt --font 'xft:Ricty Diminished:size=10:Regular'"
alias urxvt_alpha="urxvt --background '[0]black'"
alias pulse_output_daifuku="export PULSE_SERVER=192.168.150.170"

alias google-chrome="google-chrome-stable --force-device-scale-factor=1.15"
alias ffplay="ffplay -nodisp -autoexit"

alias ✓="echo checked!"

export LANG=ja_JP.UTF-8

prompt fade green
alias kinpatsu="export PROMPT=\"${PROMPT}%F{yellow}\""

#screenfetch
