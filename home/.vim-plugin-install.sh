#!/bin/bash
bundle="$HOME/.vim/bundle"
mkdir -p $bundle
cd $bundle

git clone https://github.com/gmarik/vundle.git $bundle/vundle
git clone https://github.com/mattn/emmet-vim.git
git clone https://github.com/vim-scripts/molokai.git
git clone  https://github.com/Lokaltog/vim-powerline.git
