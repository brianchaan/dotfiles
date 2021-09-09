#!/bin/bash
brew update
brew upgrade

# Taps
brew tap homebrew/cask

# Casks to Install, Open, and Configure
brew install --cask iterm2
sleep 1
open /Applications/iTerm.app/

brew install --cask postman
sleep 1
open /Applications/Postman.app/

brew install --cask lastpass
sleep 1
open /Applications/LastPass.app/

brew install --cask slack
sleep 1
open /Applications/Slack.app/

brew install --cask dropbox
sleep 1
open /Applications/Dropbox.app/

brew install --cask google-chrome
sleep 1
open /Applications/Google\ Chrome.app/

brew install --cask notion
sleep 1
open /Applications/Notion.app/

brew install --cask visual-studio-code
sleep 1
open /Applications/Visual\ Studio\ Code.app/

#TODO open these to configure as well
brew install --cask alfred
brew install --cask ringcentral
brew install --cask quicken
brew install --cask spotify
brew install --cask discord
brew install --cask adobe-creative-cloud

# Casks to Install only
brew install --cask firefox
#brew install --cask docker
brew install --cask adobe-acrobat-reader
brew install --cask zoom
brew install --cask kindle
brew install --cask vlc

# Finish
brew cleanup
