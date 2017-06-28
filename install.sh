#!/bin/bash 
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
rm ~/.vimrc_old
mv ~/.vimrc ~/.vimrc_old
cp .vimrc ~/ 
vim -c 'PluginInstall' -c 'qa!'
git clone https://github.com/vim-scripts/SrcExpl.git 
git clone https://github.com/vim-scripts/Trinity.git

mkdir ~/.vim/plugin
cp -r SrcExpl/plugin/srcexpl.vim ~/.vim/plugin/ 
cp -r Trinity/plugin/trinity.vim ~/.vim/plugin/ 
