#!/bin/bash
brew update
brew upgrade

# Taps
brew tap homebrew/cask

# Casks
brew install --cask iterm2
brew install --cask lastpass
brew install --cask dropbox
brew install --cask google-chrome
brew install --cask firefox
brew install --cask visual-studio-code
brew install --cask slack
brew install --cask postman
#brew install --cask docker
brew install --cask adobe-creative-cloud
brew install --cask adobe-acrobat-reader
brew install --cask notion
brew install --cask alfred
brew install --cask zoom
brew install --cask quicken
brew install --cask kindle
brew install --cask spotify
brew install --cask discord
brew install --cask ringcentral

# Finish
brew cleanup
