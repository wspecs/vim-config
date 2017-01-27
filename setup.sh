#!/bin/bash

if [ ! -z $1 ]; then
  [ $1="update" ] && update=true
fi

cd ~/.vim/bundle
if [ ! -d nerdtree ] || [ $update ]; then
  rm -rf nerdtree
  git clone https://github.com/scrooloose/nerdtree.git
fi

if [ ! -d emmet-vim ] || [ $update ]; then
  rm -rf emmet-vim
  git clone https://github.com/mattn/emmet-vim.git
fi

if [ ! -d syntastic ] || [ $update ]; then
  rm -rf syntastic
  git clone https://github.com/scrooloose/syntastic.git
fi

if [ ! -d vim-lexical] || [ $update ]; then
  rm -rf vim-lexical
  git clone https://github.com/reedes/vim-lexical.git
fi

cp ~/.vim/.vimrc ~/.vimrc
echo 'All Done!'
