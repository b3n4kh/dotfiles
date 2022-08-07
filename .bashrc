PS1='\[\e[0;32m\]\u\[\e[0;31m\]@\[\e[0;32m\]\h\[\e[m\] \[\e[0;34m\]\W\[\e[m\] '


export EDITOR="vim"
export HISTCONTROL=ignoreboth:erasedups
export LESS=' -R '
export HISTSIZE=100000
export HISTFILESIZE=100000
export LS_OPTIONS='--color=auto'

alias top='htop'
alias ll='ls -lah'
alias ls='ls --color=auto'
alias sud='sudo -i'
alias tmux="tmux -2"

shopt -s histappend
shopt -s autocd

complete -cf sudo
complete -cf man

source ~/.bash_git_prompt
PS1="$PS1\$(print_git_prompt)\[\e[1;02m\]\$\[\e[m\] "

eval "$(dircolors -b ~/.dir_colors)"
eval "$(direnv hook bash)"

