path+=/opt/homebrew/bin
alias c="clear"
alias ch="history -p"
alias cat='bat --paging=never'
alias vi="nvim"
alias gs="git status"
alias gu="gitu"
alias oldvim="vim"
alias la='eza -lbhHigUmuSa@ --time-style=long-iso --git --color-scale'
alias ls='eza --group-directories-first --git --icons'
alias lt='eza --icons --color=auto --tree --level=2'
alias harl="harlequin"
alias zj="zellij"

. /opt/homebrew/opt/asdf/libexec/asdf.sh
. "$HOME/.cargo/env"
eval "$(sheldon source)"

# Created by `pipx` on 2024-03-15 02:41:55
export PATH="$PATH:/Users/cam/.local/bin"

