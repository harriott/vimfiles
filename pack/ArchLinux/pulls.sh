#!/bin/bash

# Joseph Harriott, Sun 19 Apr 2020

# bash pulls.sh  when you want to update your remote plugins

cd ..
find . -maxdepth 3 -mindepth 3 -type d | while read pluginName; do
  echo -e "\e[1m $pluginName \e[0m"
  cd "$pluginName"
  git pull --no-rebase origin master
  cd ~/.vim/pack
done

echo -e "\e[1m make hexokinase \e[0m"
cd neovim/opt/vim-hexokinase
make hexokinase
cd ~/.vim/pack

. ArchLinux/lists.sh

