#!/bin/bash

# Joseph Harriott, Wed 13 Nov 2019

# bash pulls.sh  when you want to update your remote plugins

# helptags $HOME/.vim

find . -maxdepth 3 -mindepth 3 -type d | while read pluginName; do
# find . -name "*.txt" | while read fname; do
  echo -e "\e[1m $pluginName \e[0m"
  cd "$pluginName"
  git pull origin master
  cd ~/.vim/pack
done
