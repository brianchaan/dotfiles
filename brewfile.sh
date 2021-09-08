#!/bin/bash
brew update
brew upgrade

# Taps
brew tap aws/tap
brew tap mongodb/brew

# Install GNU core utilities (those that come with OS X are outdated)
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
# brew install coreutils
# brew install moreutils
# brew install findutils
# brew install ngrep
# brew install gnu-sed --default-names


# Install some core tools
brew install git && brew link --overwrite git
brew install bash
brew install bash-completion
brew install wget
brew install ack
brew install nmap

# Install more recent versions of some OS X tools
# brew install vim
#brew install homebrew/dupes/grep
#brew install homebrew/dupes/screen

# Development Tools
brew install nginx
brew install awscli
brew install aws-sam-cli
brew install docker
brew install docker-compose
brew install gh
brew install imagemagick
brew install graphicsmagick
brew install autossh

# Databases
brew install mysql
brew install mongodb-community@4.2
brew install redis

# # Install after Xcode - osxfuse may fail and need restart or need permission in Security & Privacy
# # brew cask install osxfuse

# Finish
brew cleanup
