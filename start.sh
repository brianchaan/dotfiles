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
  ln -sf $PWD/.functions ~/.functions
  ln -sf $PWD/.gitattributes ~/.gitattributes
  ln -sf $PWD/.gitconfig ~/.gitconfig
  ln -sf $PWD/.gvimrc ~/.gvimrc
  ln -sf $PWD/.hushlogin ~/.hushlogin
  ln -sf $PWD/.inputrc ~/.inputrc
  ln -sf $PWD/.npmrc ~/.npmrc
  ln -sf $PWD/.path ~/.path
  ln -sf $PWD/.screenrc ~/.screenrc
  ln -sf $PWD/.vimrc ~/.vimrc
  ln -sf $PWD/.wgetrc ~/.wgetrc

  # This file gets copied because it's just a stub and will have additional lines added to it during this process
  cp $PWD/.bashrc ~/.bashrc
else
  exit 0;
fi;

# Folders
source $PWD/folders.sh

# Install bash and git to proceed to the next steps
source $PWD/brewinit.sh

# Set Bash as default shell
echo /usr/local/bin/bash | sudo tee -a /etc/shells
chsh -s /usr/local/bin/bash

#TODO
# Do I need docker in caskfile?
# Keep old packages in brewfile?