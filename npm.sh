#!/bin/bash

# Install nvm and let nvm install node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
source ~/.bashrc
nvm install stable

# Global node packages
#TODO I don't think you really use globals anymore...
#npm install -g 