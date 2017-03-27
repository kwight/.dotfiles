# Dotfiles

*Warning: these instructions are out-of-date. Refer to the commits for recent activity.*

* `cd` to your home directory.
* `git clone git@github.com:kwight/.dotfiles.git`
* `ln -s .dotfiles/vim/vim ~/.vim`
* `ln -s .dotfiles/bash/bash_profile ~/.bash_profile`
* `ln -s .dotfiles/git/gitignore ~/.gitignore`
* `ln -s .dotfiles/git/gitconfig ~/.gitconfig`
* `vi ~/.gitconfig.local` and add user information (see: https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup)
* `yarn global add eslint` or `npm install -g eslint`
* Update PHP to 5.6 with `curl -s http://php-osx.liip.ch/install.sh | bash -s 5.6`.
