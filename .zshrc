autoload -U colors && colors

export PATH="/usr/local/bin:$PATH"

alias c="clear"
alias ..="cd .."
alias ...="cd ../.."
alias gbr="git branch --all"
alias ctgr="ctags -R ."

source <(antibody init)
antibody bundle denysdovhan/spaceship-prompt
antibody bundle zdharma/fast-syntax-highlighting
antibody bundle zsh-users/zsh-autosuggestions

autoload -U colors && colors

export PATH="/usr/local/bin:$PATH"

alias c="clear"
alias ..="cd .."
alias ...="cd ../.."
alias gbr="git branch --all"
alias ctgr="ctags -R ."

#PostgresSql Alias
alias pg-start="pg_ctl -D /usr/local/var/postgres start"
alias pg-stop="pg_ctl -D /usr/local/var/postgres stop"
alias pg-restart="pg_ctl -D /usr/local/var/postgres restart"
