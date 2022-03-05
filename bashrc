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
# auto add history and reload from history for each command
shopt -s histappend
alias r="history -n; echo reloading history"
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

if which md5 > /dev/null ; then
  alias md5="md5 -q"
else
  alias md5=md5sum
fi

case `echo $(hostname) | md5 | grep -oE '^.'` in
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

#kube config
source ~/.leos/kube-ps1.sh
PS1='\[\e[0;${USER_COLOR}m\]\u\[\e[m\]@$(kube_ps1):\[\e[0;36m\]\w\[\e[m\]$ '
alias k=kubectl
complete -F __start_kubectl k

alias ls='ls -G'
source ~/z.sh

#nvm
source ~/.nvm/nvm.sh
nvm use default

export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

#bash-completion (on mac brew install bash-completion)
[ -f /usr/local/etc/bash_completion ] && source /usr/local/etc/bash_completion

#to use  for reverse ^R (reverse-i-search)
stty -ixon

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

complete -C /usr/local/bin/terraform terraform

# Added by serverless binary installer
export PATH="$HOME/.serverless/bin:$PATH"
. "$HOME/.cargo/env"
