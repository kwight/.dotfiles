# Dotfiles

Configuration for a Vim + tmux + ZSH workflow, optimized for SSH connections to Tart VMs.

## Setup

```sh
cd ~
git clone --recurse-submodules git@github.com:kwight/.dotfiles.git
~/.dotfiles/install.zsh
```

Then create `~/.gitconfig.local` with your name and email (see [Git Setup](https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup)).

The install script will:
- Install Homebrew (if needed)
- Install dependencies: `fzf`, `ripgrep`, `bat`, `tmux`
- Create symlinks for vim, tmux, zsh, and git configs

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
