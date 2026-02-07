# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# aliases
alias ls='ls -AFoqv --color --group-directories-first'
alias grep='grep --color=auto'
alias dmesg='dmesg --color'

function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]\d'
}

PS1="\[$(tput setaf 243)\][\A] \[$(tput setaf 210)\]\h\[$(tput setaf 249)\]:\[$(tput setaf 181)\]\W \[$(tput setaf 249)\]| \[$(tput sgr0)\]"
