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

case `echo $(hostname) | md5sum | grep -oE '^.'` in
    "b"|"6")
        HOST_COLOR="31" ;;
    "1"|"8"|"7")
        HOST_COLOR="32" ;;
    "5"|"4"|"a")
        HOST_COLOR="33" ;;
    "2"|"9"|"d")
        HOST_COLOR="34" ;;
    "3"|"0"|"f")
        HOST_COLOR="35" ;;
    "f"|"c"|"e")
        HOST_COLOR="36" ;;
    *)
        HOST_COLOR="31" ;;
esac

USER_COLOR=0
[ $(id -u) -eq 0 ] && USER_COLOR=31

PS1='\[\e[0;${USER_COLOR}m\]\u\[\e[m\]@\[\e[0;${HOST_COLOR}m\]\h\[\e[m\]:\[\e[0;34m\]\w\[\e[m\]$ '
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

#to use  for reverse ^R (reverse-i-search)
stty -ixon
