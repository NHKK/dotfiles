#Disable ALL animations
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
#Font
Jetbrains Mono
```
brew tap homebrew/cask-fonts
```
```
brew install --cask font-jetbrains-mono
```

#DB_UI
Repo: https://github.com/KenanBek/dbui

#Useful command-line tools
Bat: https://github.com/sharkdp/bat
Exa: https://the.exa.website/
Ripgrep: https://github.com/BurntSushi/ripgrep
Tig: https://jonas.github.io/tig/

#Useful GUI tools Installable via homebrew
Raycast
hiddenbar

#add to test tig
