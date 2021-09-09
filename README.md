# dotfiles

### Fork Me

Before you start...

1. Update all references to "Brian Haan", "brianchaan" and "brianchaan@gmail.com" with your own name, username and email, respectively
1. Browse through each dotfile and update to your preference, especially .osx for system preferences
1. Add or remove folders you want in folders.sh
1. Add or remove packages you use in brewfile.sh
1. Add or remove applications you use in caskfile.sh
1. Replace references to LastPass with whatever password manager you use
1. I have credentials stored in ~/Dropbox/credentials. If you want to manage your credentials differently, don't run the credentials.ssh file.
    - ssh: id_rsa, id_rsa.pub, config
    - git: .git-credentials
    - aws: .aws/credentials

---

### Procedure for a new Mac

1. Open Safari and Google *Install Homebrew*. 
    - Open the Homebrew website and copy the bash command.
    - Ctrl+Space and type *Terminal* to open the default Terminal.
    - Paste the command. This will install both Homebrew and the Xcode command line tools.
    - While this command runs, follow the **Configure OS** steps in **Manual Actions**
1. In the Terminal, run ```git clone https://github.com/brianchaan/dotfiles ~/dotfiles``` to clone this repository.
1. Run ```source ~/dotfiles/bootstrap.sh```. This performs the following:
    - Symlinks each dotfile to the home directory
    - Sets up directories (folders.sh)
    - Installs brew packages (brewfile.sh)
    - Updates the default shell to bash
    - Installs applications (caskfile.sh)
    - Installs node (npm.sh)
    - Updates OS system preferences (.osx)
    - While this command runs, follow the **Configure Applications** steps in **Manual Actions**
1. Restart computer to apply OS Preferences
1. Run ```source ~/dotfiles/credentials.sh```. This copies credentials and other files.

---

### Manual Actions

#### Configure OS

1. Log in to Apple ID
    - Open and configure App Store, Messages, FaceTime
1. Add Internet Accounts
    - Open System Preferences > Internet Accounts
    - Add each account
    - Open and configure Mail, Calendar

#### Configure Applications

1. iTerm2
    - Open iTerm2
    - Press Cmd+, to open Preferences
    - Go to General tab > Preferences
    - Check box 'Load preferences from custom folder or URL'
    - Select ```/Users/brianchaan/Themes```
    - Completely close (Cmd+q) and re-open iTerm2
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

---

### How to generate an SSH keypair

1. Generate a pair of authentication keys: `ssh-keygen -t rsa`
1. Do not enter a passphrase and use all the defaults.
1. Append the contents of id_rsa.pub to the file ~/.ssh/authorized_keys on any server you need access to.
1. In your ~/.ssh/config file, for each host add an IdentityFile parameter:

```
Host <host>
  Hostname <hostname>
  User <user>
  IdentityFile ~/.ssh/id_rsa
```