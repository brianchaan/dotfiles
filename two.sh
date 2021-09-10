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

brew install --cask google-chrome
sleep 1
open /Applications/Google\ Drive.app/

brew install --cask notion
sleep 1
open /Applications/Notion.app/

brew install --cask alfred
sleep 1
open /Applications/Alfred\ 4.app/

brew install --cask google-drive
sleep 1
open /Applications/Google\ Drove.app/

brew install --cask ringcentral
sleep 1
open /Applications/RingCentral.app/

brew install --cask visual-studio-code
sleep 1
open /Applications/Visual\ Studio\ Code.app/

brew install --cask quicken
sleep 1
open /Applications/Quicken.app/

brew install --cask spotify
sleep 1
open /Applications/Spotify.app/

brew install --cask discord
sleep 1
open /Applications/Discord.app/

brew install --cask adobe-creative-cloud
sleep 1
open /Applications/Utilities/Adobe\ Creative\ Cloud/ACC/Creative\ Cloud.app/

brew install --cask adobe-acrobat-reader
sleep 1
open /Applications/Adobe\ Acrobat\ Reader\ DC.app/

# Casks to Install only
brew install --cask firefox
brew install --cask bettertouchtool
#brew install --cask docker
brew install --cask zoom
brew install --cask kindle
brew install --cask vlc

# Finish
brew cleanup
