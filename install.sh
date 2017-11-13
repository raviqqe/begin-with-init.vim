#!/bin/bash

set -eo pipefail

curl -fLo \
     ~/.config/nvim/autoload/plug.vim --create-dirs \
     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

pip3 install --user --upgrade neovim
gem install --user-install neovim

cp ./init.vim ~/.config/nvim/init.vim

nvim --headless +PlugUpgrade +PlugClean! +PlugUpdate +qall
