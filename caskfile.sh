#!/bin/bash
brew update
brew upgrade

# Taps
brew tap homebrew/cask

# Casks to Install, Open, and Configure
brew install --cask iterm2
open /Applications/iTerm.app/

brew install --cask lastpass
open /Applications/LastPass.app/

brew install --cask dropbox
open /Applications/Dropbox.app/

brew install --cask google-chrome
open /Applications/Google\ Chrome.app/

brew install --cask firefox
open /Applications/Firefox.app/

brew install --cask visual-studio-code
open /Applications/Visual\ Studio\ Code.app/

brew install --cask slack
open /Applications/Slack.app/

brew install --cask postman
open /Applications/Postman.app/

brew install --cask notion
open /Applications/Notion.app/

# Casks to Install only
#brew install --cask docker
brew install --cask adobe-creative-cloud
brew install --cask adobe-acrobat-reader
brew install --cask alfred
brew install --cask zoom
brew install --cask quicken
brew install --cask kindle
brew install --cask spotify
brew install --cask discord
brew install --cask ringcentral
brew install --cask vlc

# Finish
brew cleanup
