# Dotfiles

Configuration for a Vim + tmux + ZSH workflow, optimized for SSH connections to Tart VMs.

## Setup

Clone the repository:

```sh
cd ~
git clone --recurse-submodules git@github.com:kwight/.dotfiles.git
cd .dotfiles
```

Create symlinks:

```sh
ln -s ~/.dotfiles/vim ~/.vim
ln -s ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/zsh/zshrc ~/.zshrc
ln -s ~/.dotfiles/git/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/git/gitignore ~/.gitignore
```

Configure git user (see [Git Setup](https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup)):

```sh
vim ~/.gitconfig.local
```

## Dependencies

Install with Homebrew (macOS) or your package manager:

- `fzf` - fuzzy finder
- `ripgrep` - fast grep alternative
- `bat` - cat with syntax highlighting (for fzf previews)

## Vim Plugins

Managed as git submodules in `vim/pack/packages/start/`:

- **fzf** + **fzf.vim** - fuzzy file/buffer finding
- **oceanic-next** - color scheme
- **vim-airline** - status bar
- **vim-commentary** - comment toggling
- **vim-surround** - bracket/quote manipulation

Add a plugin:
```sh
git submodule add https://github.com/user/plugin vim/pack/packages/start/plugin
```

Remove a plugin:
```sh
git submodule deinit vim/pack/packages/start/plugin
git rm vim/pack/packages/start/plugin
```

## Tmux

- Prefix: `Ctrl-a`
- Vim-style pane navigation: `h/j/k/l`
- Splits: `\` (horizontal), `-` (vertical)
- Copy mode uses OSC 52 for clipboard sync over SSH
