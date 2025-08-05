#!/bin/bash

# sudo apt update
#
# sudo apt install -y zsh
# sudo apt install -y git
# sudo apt install -y tmux

# rm -f /tmp/nvim.tar.gz
# curl -fLo /tmp/nvim.tar.gz https://github.com/neovim/neovim/releases/download/v0.11.3/nvim-linux-x86_64.tar.gz
mkdir -p "$HOME/.local/bin/nvim"
tar -C "$HOME/.local/bin/nvim" --strip-components=1 -xzf /tmp/nvim.tar.gz
