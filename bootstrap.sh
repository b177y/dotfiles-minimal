#!/bin/bash

set -e

# zsh setup
sudo chsh -s $(which zsh) $USER

if ! test -d ~/.config/zsh; then
  echo "export ZDOTDIR=\$HOME/.config/zsh" >> ~/.zshenv
  git clone https://github.com/b177y/zsh_config ~/.config/zsh
  echo "export PATH=\"\$PATH:/opt/nvim-linux-x86_64/bin\"" >> ~/.config/zsh/.zshrc
fi

# neovim setup
if ! test -d ~/.config/nvim; then
  git clone https://github.com/b177y/astronvim_config ~/.config/nvim
  source ~/.config/zsh/.zshrc
  nvim --headless +q
fi

# tmux setup
if ! test -d ~/.config/tmux; then
  git clone https://github.com/b177y/tmux_config ~/.config/tmux
fi
