#!/bin/bash

# Backup existing .vimrc
if [ -f "$HOME/.vimrc" ]; then
    mv "$HOME/.vimrc" "$HOME/.vimrc.bak"
    echo "Backup of existing .vimrc created at ~/.vimrc.bak"
fi

# Backup and remove existing .vim directory if it exists
if [ -d "$HOME/.vim" ]; then
    mv "$HOME/.vim" "$HOME/.vim.bak"
    echo "Backup of existing .vim directory created at ~/.vim.bak"
fi

# Clone the repository into .vim directory
git clone https://github.com/franciscoavilaluna/vim.git "$HOME/.vim"

# Create symlink from .vimrc to the main configuration file
ln -s "$HOME/.vim/vimSettings/main.vim" "$HOME/.vimrc"

echo "Installation complete! You can start Vim by typing 'vim'."
