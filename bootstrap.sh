#!/bin/bash

sudo chsh -s $(which zsh) $USER

git clone https://github.com/b177y/astronvim_config ~/.config/nvim
nvim --headless +q
