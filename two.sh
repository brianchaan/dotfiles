#!/bin/bash
brew update
brew upgrade

# Taps
brew tap homebrew/cask

# Casks to Install
# If necessary, each Application opens after the next is installed 
# This ordering is to prevent an error for missing executable
brew install --cask lastpass

brew install --cask postman
open /Applications/LastPass.app/

brew install --cask google-chrome
open /Applications/Postman.app/

brew install --cask slack
open /Applications/Google\ Chrome.app/

brew install --cask iterm2
open /Applications/Slack.app/

brew install --cask google-drive
open /Applications/iTerm.app/

brew install --cask notion
open /Applications/Google\ Drive.app/

brew install --cask alfred
open /Applications/Notion.app/

brew install --cask ringcentral
open /Applications/Alfred\ 4.app/

brew install --cask visual-studio-code
open /Applications/RingCentral.app/

brew install --cask quicken
open /Applications/Visual\ Studio\ Code.app/

brew install --cask spotify
open /Applications/Quicken.app/

brew install --cask discord
open /Applications/Spotify.app/

brew install --cask adobe-creative-cloud
open /Applications/Discord.app/

brew install --cask adobe-acrobat-reader
open /Applications/Utilities/Adobe\ Creative\ Cloud/ACC/Creative\ Cloud.app/

brew install --cask bettertouchtool
open /Applications/Adobe\ Acrobat\ Reader\ DC.app/

brew install --cask firefox
open /Applications/BetterTouchTool.app/

#brew install --cask docker
brew install --cask zoom
brew install --cask kindle
brew install --cask vlc
brew install --cask mysqlworkbench

# Finish
brew cleanup
