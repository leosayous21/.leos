#
# ~/.bashrc
#

# If not running interactively, don't do anything
#[[ $- != *i* ]] && return

export LANG=en_US.utf8

export EDITOR="vim"
export TERM="xterm-256color"
export PAGER="less"

export HISTSIZE=100000
export HISTCONTROL="ignoredups"
export PS1='\e[m[\t] \e[0;32m\u@\h:\w $ \e[m'

alias ls='ls -G'
. ./z.sh
