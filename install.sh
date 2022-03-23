#!/bin/bash
cp ./vimrc ~/.vimrc
cp ./tmux.conf ~/.tmux.conf

if [[ ! -d ~/.vim/colors ]]; then
  mkdir ~/.vim/colors
fi

cp ./nachtleben.vim ~/.vim/colors/

vim -c "PluginInstall" -c qa
