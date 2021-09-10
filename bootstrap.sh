#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";
git pull origin main;

# Add symlinks to dotfiles
read -p "This may overwrite existing files in your home directory. Are you sure? (y/N) " -n 1;
echo "";
if [[ $REPLY =~ ^[Yy]$ ]]; then
  ln -sf $PWD/.vim ~/.vim
  ln -sf $PWD/Themes ~/Themes
  ln -sf $PWD/.aliases ~/.aliases
  ln -sf $PWD/.bash_profile ~/.bash_profile
  ln -sf $PWD/.bash_prompt ~/.bash_prompt
  ln -sf $PWD/.curlrc ~/.curlrc
  ln -sf $PWD/.editorconfig ~/.editorconfig
  ln -sf $PWD/.exports ~/.exports
  ln -sf $PWD/.extras ~/.extras
  ln -sf $PWD/.functions ~/.functions
  ln -sf $PWD/.gitattributes ~/.gitattributes
  ln -sf $PWD/.gitconfig ~/.gitconfig
  ln -sf $PWD/.gvimrc ~/.gvimrc
  ln -sf $PWD/.hushlogin ~/.hushlogin
  ln -sf $PWD/.inputrc ~/.inputrc
  ln -sf $PWD/.npmrc ~/.npmrc
  ln -sf $PWD/.osx ~/.osx
  ln -sf $PWD/.path ~/.path
  ln -sf $PWD/.screenrc ~/.screenrc
  ln -sf $PWD/.vimrc ~/.vimrc
  ln -sf $PWD/.wgetrc ~/.wgetrc

  cp $PWD/.bashrc ~/.bashrc
else
  exit 0;
fi;

# Folders
source $PWD/folders.sh

# Open tabs to go through manually in succession
open https://www.github.com/brianchaan/dotfiles

# Brew - install all programs; bash in particular is needed for the next section
source $PWD/brewfile.sh

# Set Bash as default shell
echo /usr/local/bin/bash | sudo tee -a /etc/shells
chsh -s /usr/local/bin/bash

# Install Applications
source $PWD/caskfile.sh

# Install Node
source $PWD/npm.sh

# Source OSX Preferences
source $PWD/.osx

#TODO
# Do I need docker in caskfile?
# Keep old packages in brewfile?