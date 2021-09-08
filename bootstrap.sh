#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

git pull origin main;

# function doIt() {
# 	rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" \
# 		--exclude "brewfile.sh" --exclude "npm.sh" --exclude "Gemfile" \
# 		--exclude "README.md" --exclude "LICENSE-MIT.txt" -avh --no-perms . ~;
# 	source ~/.bash_profile;
# }

# if [ "$1" == "--force" -o "$1" == "-f" ]; then
# 	doIt;
# else

# fi;

# Add symlinks to dotfiles
read -p "This may overwrite existing files in your home directory. Are you sure? (y/N) " -n 1;
echo "";
if [[ $REPLY =~ ^[Yy]$ ]]; then
  ln -sf $PWD/.vim ~/.vim
  ln -sf $PWD/Themes ~/Themes
  ln -sf $PWD/.aliases ~/.aliases
  ln -sf $PWD/.bash_profile ~/.bash_profile
  ln -sf $PWD/.bash_prompt ~/.bash_prompt
  ln -sf $PWD/.bashrc ~/.bashrc
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
fi;

# Folders
mkdir -p ~/code/h1
mkdir -p /var/www

# Set Bash as default shell
echo /usr/local/bin/bash | sudo tee -a /etc/shells
chsh -s /usr/local/bin/bash


# Open dotfiles README to go through installation checklist
open https://www.github.com/brianchaan/dotfiles

  # 0 drwx------@  5 brianchaan  staff   160B Jun  2  2020 Applications
  # 0 drwx------@  4 brianchaan  staff   128B Sep  6 18:58 Creative Cloud Files
  # 0 drwx------@  4 brianchaan  staff   128B Aug 25 08:38 Desktop
  # 0 drwx------@ 14 brianchaan  staff   448B Aug 20 15:27 Documents
  # 0 drwx------@ 26 brianchaan  staff   832B Sep  3 15:50 Downloads
  # 0 drwx------@ 16 brianchaan  staff   512B Jul  6 17:08 Dropbox
  # 0 drwx------@ 81 brianchaan  staff   2.5K Apr  9 14:36 Library
  # 0 drwx------+  6 brianchaan  staff   192B Nov 12  2020 Movies
  # 0 drwx------+  4 brianchaan  staff   128B Jun  2  2020 Music
  # 0 drwx------+  5 brianchaan  staff   160B Jun  2  2020 Pictures
  # 0 drwxr-xr-x   3 brianchaan  staff    96B Jun 18  2020 Postman
  # 0 drwxr-xr-x   6 brianchaan  staff   192B Apr  2 10:34 Projects
  # 0 drwxr-xr-x+  4 brianchaan  staff   128B Jun  2  2020 Public
  # 0 drwxr-xr-x   5 brianchaan  staff   160B Sep  6 18:20 Themes
  # 0 drwxr-xr-x  33 brianchaan  staff   1.0K Sep  6 18:47 dotfiles