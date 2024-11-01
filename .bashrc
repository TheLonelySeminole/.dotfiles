#
# ~/.bashrc

#GBM_BACKEND=nvidia-drm
#__GLX_VENDOR_LIBRARY_NAME=nvidia
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#alias ls='ls --color=auto'
alias ls='exa'
alias cat='bat --theme=ansi'
alias grep='rg'
alias top='btop'
alias vim='nvim'
alias gogdownloader='lgogdownloader'
PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH
