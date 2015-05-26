# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/simon/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

PATH=$PATH:/home/simon/.gem/ruby/2.2.0/bin:/home/simon/c++/imgtogb/bin:/home/simon/gb/gbdk/bin:/home/simon/share/ncbi-blast-2.2.30+/bin/
export PATH

export PS1="$(print '%{\e[1;34m%}%n%{\e[0m%}') :: $(print '%{\e[0;34m%}%~%{\e[0m%}') $ "
export CC=gcc
export EDITOR=vim
export BROWSER=firefox
export GBDKDIR=/home/simon/gb/gbdk/
export JOLIE_HOME=/usr/lib/jolie

alias ls='ls --color=auto'
alias lls='ls -l --color=auto'
alias lla='ls -a --color=auto'

alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -I'

alias sprunge='curl -F "sprunge=<-" http://sprunge.us'
alias xpaste='xclip -out'

# LESS/MAN colors and stuff, needed for git colored diff
export LESS="$LESS -iR"
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'
