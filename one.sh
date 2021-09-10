#!/bin/bash
brew update
brew upgrade

# Taps
brew tap aws/tap
brew tap mongodb/brew

# Packages that were previously here
# brew install coreutils
# brew install moreutils
# brew install findutils
# brew install ngrep
# brew install gnu-sed --default-names
# brew install homebrew/dupes/grep
# brew install homebrew/dupes/screen

# Core Utilities
brew install wget
brew install ack
brew install nmap
brew install vim

# Development Tools
brew install nginx
brew install apache2
brew install awscli
brew install aws-sam-cli
brew install docker
brew install docker-compose
brew install gh
brew install imagemagick
brew install graphicsmagick
brew install ngrok
brew install wkhtmltopdf
brew install autossh
brew install tidy-html5

# PHP
#brew tap shivammathur/extensions
#brew install php
#brew install php@7.2 --build-from-source
#brew install shivammathur/extensions/imap@7.2

# Databases
brew install mysql
brew install mongodb-community@4.0
brew install redis

# Finish
brew cleanup
