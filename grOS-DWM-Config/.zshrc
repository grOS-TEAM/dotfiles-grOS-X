# WIP ZSHRC by grOS-X

# Start Tmux
# if [ "$TMUX" = "" ]; then tmux; fi

# Load colors and completions
autoload -U colors && colors
autoload -U compinit
compinit

# Completions Menu
zstyle ':completion:*' menu select

# Enable Delete Key
bindkey    "^[[3~"          delete-char
bindkey    "^[3;5~"         delete-char

# Cd without cd
setopt auto_cd

# HISTORY
HISTSIZE=300
SAVEHIST=300
HISTFILE=~/.zhistory

# Have a little history
setopt APPEND_HISTORY 
setopt INC_APPEND_HISTORY 
setopt HIST_IGNORE_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_REDUCE_BLANKS



# -- Prompt --------------------------------------------------------------------------
# %~		= 	current dir
# %n		=	user
# %m		= 	host
# %D{%I:%M}	= 	time + string

# Powerline
#PROMPT="%{${bg[black]}%} %n@%m %{$reset_color%}%{${bg[blue]}%}%{$fg[black]%}%}%{${bg[blue]}%}%{${fg[black]}%} %~ %{$reset_color%}%{${fg[blue]}%}%{$reset_color%} "

# Simple Black
#PROMPT="%{${bg[black]}%} %D{%I:%M}  %{$reset_color%}%{$fg[black]%}ü%}%{$reset_color%} "
#RPROMPT="%{$fg[black]%}ý%{$reset_color%}%{$bg[black]%}  %~  %{$reset_color%}"

# Blocks
#PROMPT="%{${bg[black]}%} %n@%m %{${bg[green]}%}%{${fg[black]}%} %~ %{$reset_color%} "

# GRML
#PROMPT="%{${fg[blue]}%} %n%{$reset_color%}@%m %% "
#RPROMPT="%~ %{$reset_color%}"

# Riced
PROMPT="%{${fg[green]}%} %D{%I:%M} %{${fg[red]}%} %~  %{$reset_color%}"
#PROMPT="%{${fg[blue]}%} »  %{$reset_color%}"
#RPROMPT="%{${fg[green]}%} %~ %{$reset_color%}"



# -- Alisaes -------------------------------------------------------------------------

# Package Management
alias update='sudo pacman -Sy && sudo pacman-key --refresh-keys'
alias search='yaourt'
alias install='sudo pacman -S'
alias remove='sudo pacman -R'
alias clean='sudo pacman -Scc'

# Install tar.xz package
alias pkg='sudo pacman -U'

# Cd
alias cd-='../.'
alias cd-2='../..'



# Programs
alias sound='alsamixer'
alias load='htop -u moeen'
alias music='mocp -T white'
alias font='xfontsel'
alias comp2='compton -cCb'
alias merge='xrdb ~/.Xresources'
alias calc='concalc'
alias b='bash'
alias c='clear'
alias cp='cp -avr'
alias rm='rm -rf'
alias light="~/.bin/light"
alias ud='urxvtd -q -f -o'
alias uc='urxvtc -lsp 4'
alias bmon='nbwmon'
alias laod='load'
alias s='sudo'
alias gs='gksudo'
alias :q='exit'

# Super User Tasks
alias :k='killall -v --ignore-case'
alias kill='killall -v --ignore-case'
alias kern='uname -r'
alias off='poweroff'
alias lock='i3lock -c 000000 -d'
alias build_dwm='cd ~/Public/dwm/ && sudo make clean install'
alias build_st='cd ~/Public/st/ && sudo make clean install'
alias mount="sudo mount -t auto -v"
alias mountall="sudo bash ~/.bin/mountall"
alias umount_all="sudo bash ~/.bin/umount_all"


# Configs, Scripts & Dirs
alias class='xprop | grep WM_CLASS'
alias zrc='geany ~/.zshrc'
alias xres='geany ~/.Xresources'
alias ls='ls --color=always'
alias ll='ls --color=always -l -h'
alias lsa='ls --color=always -l -a -h'
alias stat='zsh ~/.bin/status'
alias pkginfo='bash ~/.bin/pkginfo'
alias sync='bash ~/.bin/sync'
alias no_stat='killall zsh /home/moeen/.bin/status'
alias colors='bash ~/.bin/colors'
alias bin="cd ~/.bin/"
alias exec+="chmod +x"
alias info2="archey3"
alias info='bash ~/.bin/info'
alias df='dfc -f -s'
alias watch='watch -n 0.5 -t -c'
alias font-cache='xset fp rehash && fc-cache -fv'
alias fx='xterm -fullscreen'
alias get='proz -k=6'
alias sba='cat ~/.zshrc | grep'
alias bg='bash ~/.bin/bg'
alias wall='feh --bg-fill ~/.bg'
alias ram='~/.bin/ram'
alias st_conv='~/.bin/st_conv'


# Misc
alias setscreen='xrandr --output VGA1 --rotate left  --right-of LVDS1 -o left'
alias set_screen='xrandr --output VGA1 --left-of LVDS1'
alias rotate_left='xrandr --output VGA1 --rotate left'
alias no_rotate='xrandr --output VGA1 --rotate normal'
alias display='xrandr -q'
alias time="tty-clock -D -c -t -C 6"
alias keys="xev | grep -A2 --line-buffered '^KeyRelease' | sed -n '/keycode /s/^.*keycode \([0-9]*\).* (.*, \(.*\)).*$/\1 \2/p'"
alias keys2="xev | grep keysym | cut -d '(' -f2 | cut -d ')' -f1"
alias cc='clear'
alias k8="xmodmap -e 'keycode 17='"


# Network
alias mtr="~/.bin/mtr"
alias ping='~/.bin/ping'
alias net='bwm-ng'
alias interface='iwconfig'
alias testrc='awesome -k ~/.config/awesome/rc.lua'

# Export
export PATH=~/.config/panel:~/bin:/usr/local/bin:/usr/bin:/sbin:$PATH

# -- End of File -------------------------------------------------------------------------

