#!/bin/bash

sudo apt update

sudo apt install -y zsh
sudo apt install -y git
sudo apt install -y tmux

rm -f /tmp/nvim.tar.gz
curl -fLo /tmp/nvim.tar.gz https://github.com/neovim/neovim/releases/download/v0.11.3/nvim-linux-x86_64.tar.gz
sudo tar -C /opt -xzf /tmp/nvim.tar.gz
