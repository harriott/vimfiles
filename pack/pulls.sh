#!/bin/bash

# Joseph Harriott, Wed 13 Nov 2019

# bash pulls.sh  when you want to update your remote plugins

# helptags $HOME/.vim

find . -maxdepth 3 -mindepth 3 -type d | while read pluginName; do
  echo -e "\e[1m $pluginName \e[0m"
  cd "$pluginName"
  git pull origin master
  cd ~/.vim/pack
done

echo -e "\e[1m make hexokinase \e[0m"
cd neovim/opt/vim-hexokinase
make hexokinase
cd ~/.vim/pack

find . -type d -name '*.git' > gits-ArchLinux.txt
find . -mindepth 3 -maxdepth 3 -type d > all-ArchLinux.txt

