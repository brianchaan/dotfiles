# dotfiles

Process for setting up a new mac:

1. Open Safari and Google *Install Homebrew*. 
    - Open the Homebrew website and copy the bash command.
    - Ctrl+Space and type *Terminal* to open the default Terminal.
    - Paste the command. This will install both Homebrew and the Xcode command line tools.
1. In the Terminal, run ```git clone https://github.com/brianchaan/dotfiles ~/dotfiles``` to clone this repository.
1. Run ```source ~/dotfiles/bootstrap.sh```. This performs the following:
    - Symlinks dotfiles
    - Sets up directories
    - Installs brew packages
    - Updates the default shell to bash
    - Installs applications
    - Installs node
    - Updates OS system preferences
1. Restart computer to apply OS Preferences
1. Run ```source ~/dotfiles/credentials.sh```. This copies credentials and other files.

---

## Manual Actions

Configure OS

1. Log in to Apple ID
    - Open and configure App Store, Messages, FaceTime
1. Add Internet Accounts
    - Open System Preferences > Internet Accounts
    - Add each account
    - Open and configure Mail, Calendar


Configure Command Line

TODO - should be stored in Dropbox and configured through a command
1. git
1. aws
1. ssh

Configure Applications

1. iTerm2
    - Open iTerm2
    - Press Cmd+, to open Preferences
    - Go to General tab > Preferences
    - Check box 'Loan preferences from custom folder or Url'
    - Select ```/Users/brianchaan/Themes```
    - Complete close and re-open iTerm2
1. LastPass
    - Log in to account
    - Allow in system preferences
1. Dropbox
    - Log in
    - Download to ~/Dropbox
1. Chrome
    - Configure as default browser
    - Log in
    - Enable sync
    - Sign in to LastPass extension
1. VSCode
    - Ctrl+Shift+P > Settings Sync: Turn on
1. Login to other Applications:
    - Slack
    - Postman
    - Adobe Creative Cloud
    - Notion
