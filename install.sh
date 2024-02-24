#!/bin/bash

if [[ "$(uname)" == "Linux" ]]; then
    sudo add-apt-repository ppa:jonathonf/vim
    sudo apt update
    sudo apt-get install vim
    sudo apt-get install ctags
    sudo apt-get install cscope
    sudo apt install build-essential cmake3 python3-dev
    sudo apt-get install silversearcher-ag
    sudo apt-get install figlet
elif [[ "$(uname)" == "Darwin" ]]; then
    brew install vim
    brew install ctags
    brew install cscope
    brew install the_silver_searcher
    brew install cmake
    brew install figlet
fi

# For c/c++ programming
# cp mkcscope.sh /usr/bin/

# Install Vim plugin manager Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Save backup of vimrc file
rm ~/.vimrc_old
mv ~/.vimrc ~/.vimrc_old
cp .vimrc ~/

# Copy color scheme
if [ ! -d "~/.vim" ]; then
    mkdir ~/.vim
fi
cp -r ./colors ~/.vim/colors


# Install plugins
vim -c 'PluginInstall' -c 'qa!'
git clone https://github.com/vim-scripts/SrcExpl.git
git clone https://github.com/vim-scripts/Trinity.git
git clone https://github.com/szw/vim-g.git

# Not used. Auto completion engine YouCompleteMe
# cd ~/.vim/bundle/YouCompleteMe
# python3 install.py --clang-completer
# cd -

# Add additional plugins
mkdir ~/.vim/plugin
cp -r Trinity/plugin/trinity.vim ~/.vim/plugin/
cp -r vim-g/plugin/g.vim ~/.vim/plugin/

# Not used. for c/c++ programming
# cp -r SrcExpl/plugin/srcexpl.vim ~/.vim/plugin/


mkdir -p ~/.vim/pack/tpope/start
cd ~/.vim/pack/tpope/start
git clone https://tpope.io/vim/eunuch.git
vim -u NONE -c "helptags eunuch/doc" -c q