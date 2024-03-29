if [[ ${EUID} == 0 ]] ; then
PS1='\[\e[0;31m\]\u\[\e[0;32m\]@\[\e[0;31m\]\h\[\e[m\] \[\e[0;34m\]\W\[\e[m\] \[\e[0;31m\]\$\[\e[m\] '
else
PS1='\[\e[0;32m\]\u\[\e[0;31m\]@\[\e[0;32m\]\h\[\e[m\] \[\e[0;34m\]\W\[\e[m\] \[\e[1;02m\]\$\[\e[m\] '
fi

export EDITOR="vim"
export HISTCONTROL=ignoreboth:erasedups
export LESS=' -R '
export HISTSIZE=100000
export HISTFILESIZE=100000
export LS_OPTIONS='--color=auto'
GIT_PROMPT_ONLY_IN_REPO=1
GIT_PROMPT_THEME=Single_line

alias top='htop'
alias ll='ls -lah'
alias ls='ls --color=auto'
alias sud='sudo -i'
alias tmux="tmux -2"

shopt -s histappend
shopt -s autocd

complete -cf sudo
complete -cf man

source ~/.bash-git-prompt/gitprompt.sh
eval "$(dircolors -b ~/.dir_colors)"
eval "$(direnv hook bash)"

