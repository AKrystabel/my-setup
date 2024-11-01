#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'


alias battery="cat /sys/class/power_supply/BAT0/capacity"


export PATH="$PATH:~/Scripts"

priring.sh
PS1='\[\e[0;35m\]┌─\[\e[0;32m\]\u@\h\[\e[0;35m\]─[\[\e[0;33m\]\w\[\e[0;35m\]]─[\[\e[0;34m\]\t\[\e[0;35m\]]─[\[\e[0;36m\]\$\[\e[0;35m\]]\n\[\e[0;35m\]└──\[\e[0;31m\]❯ \[\e[0m\]'

export VISUAL=nvim
export EDITOR="$VISUAL"
export _JAVA_AWT_WM_NONREPARENTING=1 
export AWT_TOOLKIT=MToolkit 
export NVIM_PLUGINS=$HOME/.local/share/nvim/plugged/
