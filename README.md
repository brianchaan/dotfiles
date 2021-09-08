# dotfiles

Process for setting up a new mac:

1. Open Safari and Google *Install Homebrew*. Open the Homebrew site and copy the bash command.
    - Ctrl+Space and type *Terminal* to open the default Terminal.
    - Paste the command. This will install both Homebrew and the Xcode command line tools.
    - Manual configurations to do while this runs:
1. In the Terminal, run ```cd ~ && git clone https://github.com/brianchaan/dotfiles``` to clone this repository.
1. Run ```source ~/dotfiles/bootstrap.sh``` to symlink dotfiles, set up directories, download packages, install Node, etc.
    - Question: Should this be run with sudo?
    - Manual configurations to do while this runs:


1. Customize iTerm by loading init/com.googlecode.iterm2.plist into iTerm preferences
