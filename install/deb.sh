#!/bin/bash

sudo apt update

sudo apt install -y zsh
sudo apt install -y git
sudo apt install -y tmux
sudo apt install -y file
sudo apt install -y less
sudo apt install -y dnsutils
sudo apt install -y iproute2
sudo apt install -y pass

curl -C - -fLo /tmp/nvim.v0.12.5.tar.gz https://github.com/neovim/neovim/releases/download/v0.12.5/nvim-linux-x86_64.tar.gz

if [ -d "/path/to/dir" ] 
then
    echo "Neovim installation already exists, skipping install." 
else
    mkdir -p "$HOME/.local/bin/nvim"
    tar -C "$HOME/.local/bin/nvim" --strip-components=1 -xzf /tmp/nvim.v0.12.5.tar.gz
fi
