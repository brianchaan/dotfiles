#!/usr/bin/env bash

# cd "$(dirname "${BASH_SOURCE}")";

# git pull origin master;

# function doIt() {
# 	rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" \
# 		--exclude "brewfile.sh" --exclude "npm.sh" --exclude "Gemfile" \
# 		--exclude "README.md" --exclude "LICENSE-MIT.txt" -avh --no-perms . ~;
# 	source ~/.bash_profile;
# }

# if [ "$1" == "--force" -o "$1" == "-f" ]; then
# 	doIt;
# else
# 	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
# 	echo "";
# 	if [[ $REPLY =~ ^[Yy]$ ]]; then
# 		doIt;
# 	fi;
# fi;
# unset doIt;
#TODO the above should symlink instead of copy each dotfile

# Set Bash as default shell
echo /usr/local/bin/bash | sudo tee -a /etc/shells
chsh -s /usr/local/bin/bash

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
