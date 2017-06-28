#!/bin/bash 
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
rm ~/.vimrc_old
mv ~/.vimrc ~/.vimrc_old
cp .vimrc ~/ 
vim -c 'PluginInstall' -c 'qa!'
