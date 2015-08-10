#!/bin/bash
bundle="$HOME/.vim/bundle"
mkdir -p $bundle
cd $bundle

git clone https://github.com/gmarik/vundle.git $bundle/vundle
git clone https://github.com/mattn/emmet-vim.git
git clone https://github.com/vim-scripts/molokai.git
git clone https://github.com/Lokaltog/vim-powerline.git
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/rkulla/pydiction.git
git clone https://github.com/fs111/pydoc.vim.git
git clone https://github.com/ervandew/supertab.git
git clone https://github.com/majutsushi/tagbar.git
git clone https://github.com/spf13/vim-colors.git
git clone https://github.com/altercation/vim-colors-solarized.git
git clone https://github.com/elixir-lang/vim-elixir.git
git clone https://github.com/undx/vim-gocode.git
git clone https://github.com/dgryski/vim-godef.git
git clone https://github.com/cespare/vim-golang.git
git clone https://github.com/monnand/vim-markdown.git
git clone https://github.com/Shougo/neocomplcache.vim.git

