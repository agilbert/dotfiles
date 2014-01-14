# Hook up brew cask
brew tap phinze/homebrew-cask
brew tap caskroom/versions
brew install brew-cask

# Must haves for work
brew cask install google-chrome
brew cask install firefox
brew cask install alfred
brew cask install iterm2
brew cask install sublime-text3
brew cask install virtualbox
brew cask install vagrant
brew cask install onepassword
brew cask install dropbox
brew cask install evernote
brew cask install divvy

# Extra stuff
brew cask install rdio
brew cask install dash
brew cask install fluid
brew cask install arq
brew cask install vlc
brew cask install transmission

# Quicklook plugins
brew cask install qlcolorcode
brew cask install qlstephen
brew cask install qlmarkdown
brew cask install quicklook-json
brew cask install qlprettypatch
brew cask install quicklook-csv
brew cask install betterzipql
brew cask install webp-quicklook
brew cask install suspicious-package

# Reload Quicklook
qlmanage -r

# Link Alfred to homebrew-cask
brew cask alfred link

exit 0