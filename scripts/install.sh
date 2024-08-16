#!/bin/bash

# Function to print a formatted message with a step number
print_step() {
    local step_number=$1
    local step_message=$2
    echo -e "\n\033[1;34m[Step $step_number]\033[0m $step_message"
}

# Function to handle errors and exit if a command fails
check_success() {
    if [ $? -ne 0 ]; then
        echo -e "\033[1;31m[Error]\033[0m $1"
        exit 1
    fi
}

# Step 1: Backup existing .vimrc
print_step 1 "Backing up existing .vimrc..."
if [ -f "$HOME/.vimrc" ]; then
    mv "$HOME/.vimrc" "$HOME/.vimrc.bak"
    check_success "Failed to backup .vimrc"
    echo "Backup of existing .vimrc created at ~/.vimrc.bak"
else
    echo "No existing .vimrc found, skipping backup."
fi

# Step 2: Backup and remove existing .vim directory if it exists
print_step 2 "Backing up and removing existing .vim directory..."
if [ -d "$HOME/.vim" ]; then
    mv "$HOME/.vim" "$HOME/.vim.bak"
    check_success "Failed to backup .vim directory"
    echo "Backup of existing .vim directory created at ~/.vim.bak"
else
    echo "No existing .vim directory found, skipping backup."
fi

# Step 3: Clone the repository into .vim directory
print_step 3 "Cloning the Vim configuration repository..."
git clone https://github.com/franciscoavilaluna/vim.git "$HOME/.vim"
check_success "Failed to clone the repository"

# Step 4: Create symlink from .vimrc to $HOME
print_step 4 "Creating symlink for .vimrc..."
ln -s "$HOME/.vim/.vimrc" "$HOME/.vimrc"
check_success "Failed to create symlink for .vimrc"

# Step 5: Final message
print_step 5 "Installation complete!"
echo "You can start Vim by typing 'vim'."


