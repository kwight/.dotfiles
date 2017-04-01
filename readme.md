# Dotfiles

*Warning: these instructions are out-of-date. Refer to the commits for recent activity.*

* `cd` to your home directory.
* `git clone git@github.com:kwight/.dotfiles.git`
* `ln -s .dotfiles/vim ~/.vim`
* `ln -s .dotfiles/bash/bash_profile ~/.bash_profile`
* `ln -s .dotfiles/git/gitignore ~/.gitignore`
* `ln -s .dotfiles/git/gitconfig ~/.gitconfig`
* `vi ~/.gitconfig.local` and add user information (see: https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup)
* install `eslint` for use with `validator.vim`
