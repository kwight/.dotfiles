#!/bin/zsh

# Dotfiles installer
# Installs dependencies and creates symlinks

set -e

DOTFILES="$HOME/.dotfiles"

# Initialize vim plugin submodules
echo "Initializing submodules..."
git -C "$DOTFILES" submodule update --init --recursive

# Install Homebrew if not present
if ! command -v brew &> /dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install dependencies
echo "Installing dependencies..."
brew install fzf ripgrep bat tmux python@3.12

# Create symlinks
links=(
    "$DOTFILES/vim:$HOME/.vim"
    "$DOTFILES/tmux/tmux.conf:$HOME/.tmux.conf"
    "$DOTFILES/zsh/zshrc:$HOME/.zshrc"
    "$DOTFILES/git/gitconfig:$HOME/.gitconfig"
    "$DOTFILES/git/gitignore:$HOME/.gitignore"
)

echo "Creating symlinks..."
for link in "${links[@]}"; do
    src="${link%%:*}"
    dest="${link##*:}"

    if [[ -L "$dest" ]]; then
        echo "  Removing existing symlink: $dest"
        rm "$dest"
    elif [[ -e "$dest" ]]; then
        echo "  Backing up: $dest -> $dest.bak"
        mv "$dest" "$dest.bak"
    fi

    echo "  $dest -> $src"
    ln -s "$src" "$dest"
done

echo ""
echo "Done! Next steps:"
echo "  1. Create ~/.gitconfig.local with your name and email"
echo "  2. Restart your shell or run: source ~/.zshrc"
