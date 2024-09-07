#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias refresh-connect='sudo firewall-cmd --reload'

PATH="$PATH:~/Scripts"

priring.sh
PS1='\[\e[0;35m\]┌─\[\e[0;32m\]\u@\h\[\e[0;35m\]─[\[\e[0;33m\]\w\[\e[0;35m\]]─[\[\e[0;34m\]\t\[\e[0;35m\]]─[\[\e[0;36m\]\$\[\e[0;35m\]]\n\[\e[0;35m\]└──\[\e[0;31m\]❯ \[\e[0m\]'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/anaconda/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export XDG_SESSION_TYPE=wayland
export GDK_BACKEND=wayland
export QT_QPA_PLATFORM=wayland

