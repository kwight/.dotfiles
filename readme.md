# Dotfiles

Note: the `master` branch is specific to macOS High Sierra. See the `bionic` branch for Ubuntu 18.04. 

* `cd` to your home directory.
* `git clone git@github.com:kwight/.dotfiles.git`
* `cd .dotfiles`
* `git submodule update --init --recursive`
* `ln -s ~/.dotfiles/vim ~/.vim`
* `ln -s ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf`
* `ln -s ~/.dotfiles/bash/bash_profile ~/.bash_profile`
* `ln -s ~/.dotfiles/bash/editrc ~/.editrc`
* `ln -s ~/.dotfiles/git/gitignore ~/.gitignore`
* `ln -s ~/.dotfiles/git/gitconfig ~/.gitconfig`
* `vi ~/.gitconfig.local` and add user information (see: https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup)
* install `eslint` for use with `ALE`
* `brew install fzf` and `brew install ripgrep`
* `brew install colordiff` if working with Subversion
* `mv ~/Library/Application\ Support/Code/User/settings.json ~/Desktop; ln -s ~/.dotfiles/vscode/User/settings.json ~/Library/Application\ Support/Code/User/settings.json` if using VS Code
