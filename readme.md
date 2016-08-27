# Dotfiles

* `cd` to your home directory.
* `git clone git@github.com:kwight/.dotfiles.git`
* `curl -fLo ~/.dotfiles/vim/vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`
* `ln -s .dotfiles/vim/vim .vim`
* `ln -s .dotfiles/vim/vimrc .vimrc`
* `ln -s .dotfiles/bash/bash_profile .bash_profile`
* `ln -s .dotfiles/git/gitignore .gitignore`
* `git config --global color.ui true`
* Open vim and install plugins with `:PlugInstall`.
