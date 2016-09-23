# Dotfiles

* `cd` to your home directory.
* `git clone git@github.com:kwight/.dotfiles.git`
* `curl -fLo ~/.dotfiles/vim/vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`
* `ln -s .dotfiles/vim/vim ~/.vim`
* `ln -s .dotfiles/vim/vimrc ~/.vimrc`
* `ln -s .dotfiles/bash/bashrc ~/.bashrc`
* `ln -s .dotfiles/bash/bash_profile ~/.bash_profile`
* `ln -s .dotfiles/git/gitignore .gitignore`
* `ln -s .dotfiles/git/gitconfig ~/.gitconfig`
* `vi ~/.gitconfig.local` and add user information (see: https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup)
* Open vim and install plugins with `,pi`.
* Update PHP to 5.6 with `curl -s http://php-osx.liip.ch/install.sh | bash -s 5.6`.
* CtrlP requires `ag` be installed: `brew install the_silver_searcher`.
