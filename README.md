# dotfiles

The process for a new computer is as follows:

1. Customize iTerm by loading init/com.googlecode.iterm2.plist into iTerm preferences
1. Install Xcode through the App Store, which will install git
1. From home folder: git clone https://github.com/brianchaan/dotfiles
1. ``source bootstrap.sh`` - copies dotfiles (may have to run bash first)
1. Install homebrew - use their website
1. ``source brewfile.sh`` - installs command line tools 
    - May require some restarts, permission tweeks, or to be run multiple times
1. Make bash default shell
    - Add local bash to list of shells: ``echo /usr/local/bin/bash | sudo tee -a /etc/shells``
    - Change default shell for user: ``chsh -s /usr/local/bin/bash``
    - .bash_prompt contains a line to ignore a message about using zsh
1. Install node/npm through nvm
    - Go to github.com/nvm-sh/nvm and run the curl command
    - nvm install 8.9.4, or whatever is the latest version
    - ``source npm.sh`` - installs npm packages
1. Review the previous three .sh files for notes about what to do next
