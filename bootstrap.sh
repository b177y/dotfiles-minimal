#!/bin/bash

# zsh setup
sudo chsh -s $(which zsh) $USER
echo "ZDOTDIR=\$HOME/.config/zsh" >> ~/.zshenv
git clone https://github.com/b177y/zsh_config ~/.config/zsh

# neovim setup
git clone https://github.com/b177y/astronvim_config ~/.config/nvim
nvim --headless +q

# tmux setup
git clone https://github.com/b177y/tmux_config ~/.config/tmux
