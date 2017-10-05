autoload -Uz compinit promptinit predict-on
compinit
zstyle ':completion:*' menu select
promptinit
setopt correct
#predict-on

source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

LENGTH=50

update_pwd()
{
    if [ ${COLUMNS} -gt $(expr 30 + ${LENGTH}) ]; then
        if [ ${LENGTH} -gt ${#PWD} ]; then
            local zsh_pwd="%F{green}%U%B$PWD%b%u%f"
        else
            local zsh_pwd="%B%U%F{red}..%F{green}$(echo $PWD | tail -c $(expr ${LENGTH} - 2))%f%u%b"
        fi
    else
        local zsh_pwd="%B%U%F{red}..%F{green}$(echo $PWD | tail -c $(expr ${COLUMNS} - 32))%f%b%u"
    fi
    PROMPT="%F{white}%K{green}█▓▒░%F{white}%K{green}%B%n@%m%b%k%F{green}█▓▒░%f ${zsh_pwd}%}
 %# "
}
precmd_functions=($precmd_functions update_pwd)
PROMPT2="%F{green} > %f"

PATH="${PATH}:/home/temama/.gem/ruby/2.4.0/bin"
bindkey "^[[7~" beginning-of-line
bindkey "^[[8~" end-of-line
bindkey "^[[3~" delete-char
bindkey -v # set vimmode

#alias ls="ls --color=always"
alias ls="tree -L 1 -h -C"
alias rm="rm -i"
alias tree="tree -L 2 -C"
alias less="less -MR"
alias wifi-menu="sudo ip link set wlp4s0 down; sudo wifi-menu"
alias gcc="gcc -Wall"

alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'

alias al_output="xrandr --output HDMI2 --auto --right-of eDP1; ~/.fehbg"
alias urxvt_pt10="urxvt --font 'xft:Ricty Diminished:size=10:Regular'"
alias urxvt_alpha="urxvt --background '[0]black'"
alias pulse_output_daifuku="export PULSE_SERVER=192.168.150.170"

#alias google-chrome="google-chrome-stable --force-device-scale-factor=1.15"
alias ffplay="ffplay -nodisp -autoexit"

alias ✓="echo checked!"
alias echo-yayoi='echo -n "ζ*'"'"'ヮ'"'"')ζ< ";echo'

alias git='expr $(cat ~/.expgit/exp) + 10 > ~/.expgit/exp; echo current gitexp is $(cat ~/.expgit/exp).; git'
export LANG=ja_JP.UTF-8

alias kinpatsu="export PROMPT=\"${PROMPT}%F{yellow}\""

# notifys
alias ncftp="echo 'ncftp is not secure! you should use sftp (sftp can recursicve get and put.)'"

#screenfetch
