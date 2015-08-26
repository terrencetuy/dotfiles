
# Check for an interactive session
[ -z "$PS1" ] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

source ~/git-completion.bash
