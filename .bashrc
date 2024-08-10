#
# ~/.bashrc
# is this?

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#alias ls='ls --color=auto'
alias ls='exa'
alias cat='bat'
alias grep='grep --color=auto'
alias top='btop'
alias vim='nvim'
PS1='[\u@\h \W]\$ '
eval "$(starship init bash)"
