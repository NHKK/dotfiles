# Disable ALL animations
```
defaults write -g NSAutomaticWindowAnimationsEnabled -bool false
defaults write -g NSScrollAnimationEnabled -bool false
defaults write -g NSWindowResizeTime -float 0.001
defaults write -g QLPanelAnimationDuration -float 0
defaults write -g NSScrollViewRubberbanding -bool false
defaults write -g NSDocumentRevisionsWindowTransformAnimation -bool false
defaults write -g NSToolbarFullScreenAnimationDuration -float 0
defaults write -g NSBrowserColumnAnimationSpeedMultiplier -float 0
defaults write com.apple.dock autohide-time-modifier -float 0
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock expose-animation-duration -float 0
defaults write com.apple.dock springboard-show-duration -float 0
defaults write com.apple.dock springboard-hide-duration -float 0
defaults write com.apple.dock springboard-page-duration -float 0
defaults write com.apple.finder DisableAllAnimations -bool true
defaults write com.apple.Mail DisableSendAnimations -bool true
defaults write com.apple.Mail DisableReplyAnimations -bool true
```

# Font
Hack Nerd Font
```
brew tap homebrew/cask-fonts && brew install --cask font-hack-nerd-font
```

# Create SSH key for github/gitlab
```
mkdir ~/.ssh
cd ~/.ssh
touch config
vi config

#Personal github
Host github github.com
    HostName github.com
    IdentityFile ~/.ssh/personal

ssh-keygen -t ecdsa -C "example@gmail.com"

#Type 'personal' for first question

#Copy personal.pub file content
pbcopy < ~/.ssh/personal.pub

#Add ssh key on website

ssh-add ~/.ssh/personal
ssh -T git@github.com
```
# Set Neovim as git editor
git config --global core.editor "nvim"
export GIT_EDITOR=nvim

# DB_UI
Repo: https://github.com/KenanBek/dbui

# Useful command-line tools
Sheldon: https://sheldon.cli.rs
Bat: https://github.com/sharkdp/bat
Bat-extra: https://github.com/eth-p/bat-extras
Eza: https://github.com/eza-community/eza
Ripgrep: https://github.com/BurntSushi/ripgrep
Gitu: https://github.com/altsem/gitu?ref=console.dev
Harlequin: https://harlequin.sh/docs/adapters
Hurl: https://github.com/Orange-OpenSource/hurl

# Useful GUI tools Installable via homebrew
Raycast
Hiddenbar

# Mac Terminal Themes
https://github.com/lysyi3m/macos-terminal-themes/tree/master/themes

# Setup Docker without Desktop
https://how.wtf/how-to-use-docker-without-docker-desktop-on-macos.html

```
brew doctor
brew update
brew install colima
brew install docker-credential-helper docker docker-compose
```
