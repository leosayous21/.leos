#
# ~/.bashrc
#

# If not running interactively, don't do anything
#[[ $- != *i* ]] && return


export EDITOR="vim"
export TERM="xterm-256color"
export PAGER="less"

export HISTSIZE=100000
export HISTCONTROL="ignoredups"
export PS1="\[\e[32m\]\u\[\e[m\]:\[\e[36m\]\w\[\e[m\]\\$ "
#export PS1='\[\e[32m\u\] \[\e[36m\w\] \[\e[33m\]\[\e[1m\]$ \[\e[0m\]'

alias ls='ls -G'
source ~/z.sh

#nvm
#source ~/.nvm/nvm.sh
#nvm use default

export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

#bash-completion (on mac brew install bash-completion)
[ -f /usr/local/etc/bash_completion ] && source /usr/local/etc/bash_completion

