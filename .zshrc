alias ...="cd ../.."
alias ..="cd .."
alias c="clear"
alias ch="history -p"
alias vi="nvim"
alias gb="git branch"
alias gs="git status"
alias gbr="git branch --all"
alias ls='exa -l --group-directories-first --color=auto --git --icons --no-permissions --no-user'
alias ll='exa -lahF --group-directories-first --color=auto --git --icons'

# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zap-zsh/supercharge"
plug "zap-zsh/exa"
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/zap-prompt"
plug "zsh-users/zsh-syntax-highlighting"
plug "zap-zsh/vim"

# Load and initialise completion system
autoload -Uz compinit
compinit

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

