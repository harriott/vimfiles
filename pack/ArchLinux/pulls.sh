#!/bin/bash
# vim: sw=2:

# Joseph Harriott, Mon 18 Oct 2021

# bash pulls.sh  when you want to update your remote plugins

set -e  # quits on error

# optionally declare a snagged plugin to start from:
# snagged=vim-picker

[[ $snagged ]] || tidyup=1  # only tidy up if  snagged  wasn't set

cd ..
find . -maxdepth 3 -mindepth 3 -type d | while read plugin; do
  continue
  pluginName=${plugin##*/}
  if [ $snagged ]; then
    if [ $pluginName = $snagged ]; then
      unset snagged
    else
      continue
    fi
  fi
  echo -e "\e[1m $plugin \e[0m"
  cd "$plugin"
  branch=master
  [[ $pluginName =~ (vim-fontsize|vim-picker) ]] && branch=main
  git pull --no-rebase origin $branch
  cd ~/.vim/pack
done

cd ArchLinux; [ $tidyup ] && . after.sh

