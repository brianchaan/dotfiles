#!/bin/bash
brew update
brew upgrade

# Taps
brew tap homebrew/cask
brew tap aws/tap
brew tap mongodb/brew

# Install GNU core utilities (those that come with OS X are outdated)
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
# brew install coreutils
# brew install moreutils
# brew install findutils
# brew install ngrep
# brew install gnu-sed --default-names

# Install Bash 4
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before running `chsh`.
brew install bash
brew install bash-completion

# Install wget
# brew install wget

# Install more recent versions of some OS X tools
# brew install vim
#brew install homebrew/dupes/grep
#brew install homebrew/dupes/screen

# Install some CTF tools; see https://github.com/ctfs/write-ups
# Since I only know about nmap, that's all I'm installing
# brew install nmap
#brew install bfg
#brew install binwalk
#brew install dex2jar
#brew install dns2tcp
#brew install fcrackzip
#brew install foremost
#brew install hashpump
#brew install hydra
#brew install john
#brew install knock
#brew install pngcheck
#brew install sqlmap
#brew install tcpflow
#brew install tcpreplay
#brew install ucspi-tcp # `tcpserver` et al.
#brew install xz
#brew install ettercap


brew install git && brew link --overwrite git
# brew install nginx
# # brew install ack

# # Development Tools
# brew install awscli
# brew install aws-sam-cli
# brew install docker
# brew install docker-compose
# brew install gh
# brew install imagemagick
# brew install graphicsmagick
# brew install sips
# brew install autossh

# # Databases
# brew install mysql
# brew install mongodb-community@4.2
# brew install redis

# # Install after Xcode - osxfuse may fail and need restart or need permission in Security & Privacy
# # brew cask install osxfuse

# # Casks
# brew install --cask vscode
# brew install --cask chrome
# brew install --cask postman
# brew install --cask slack
# brew install --cask iterm2
# brew install --cask evernote


brew cleanup
