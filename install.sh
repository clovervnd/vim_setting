#!/bin/bash 

rm ~/.vimrc_old
mv ~/.vimrc ~/.vimrc_old
cp .vimrc ~/ 
vim -c 'PluginInstall' -c 'qa!'
