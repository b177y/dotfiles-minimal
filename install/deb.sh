#!/bin/bash

sudo apt update

sudo apt install -y zsh
sudo apt install -y git
sudo apt install -y tmux
sudo apt install -y file

curl -C - -fLo /tmp/nvim.v0.12.0.tar.gz https://github.com/neovim/neovim/releases/download/v0.12.0/nvim-linux-x86_64.tar.gz

if [ -d "/path/to/dir" ] 
then
    echo "Neovim installation already exists, skipping install." 
else
    mkdir -p "$HOME/.local/bin/nvim"
    tar -C "$HOME/.local/bin/nvim" --strip-components=1 -xzf /tmp/nvim.v0.12.0.tar.gz
fi
