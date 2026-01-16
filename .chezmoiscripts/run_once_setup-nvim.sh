#!/bin/bash
# Install vim-plug for neovim

if [ ! -f "$HOME/.config/nvim/autoload/plug.vim" ]; then
    echo "Installing vim-plug..."
    curl -fLo "$HOME/.config/nvim/autoload/plug.vim" --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    echo "vim-plug installed. Run :PlugInstall in nvim to install plugins."
fi
