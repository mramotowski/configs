#!/bin/bash
rm -rf ~/.vimrc ~/.vim/bundle/

cp "$(pwd)"/.vimrc ~/.vimrc

#Vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall 2> /dev/null
