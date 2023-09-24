#!/bin/bash
# vim: fdl=1 sw=2:

# Joseph Harriott, Sun 29 Jan 2023

# $vimfiles/pack/ArchLinux/pulls.sh
# bash pulls.sh  when you want to update your remote plugins

set -e  # quits on error

#=> 0 snagged
# optionally declare a snagged plugin to start from
# snagged=tagbar
snagged=vim-gitgutter
[[ $snagged ]] || tidyup=1  # only tidy up if  snagged  wasn't set

#=> 1 pulls
cd ..
find . -maxdepth 3 -mindepth 3 -type d | sort | while read plugin; do
  pluginName=${plugin##*/}
  if [ $snagged ]; then
    if [ $pluginName = $snagged ]; then
      unset snagged
    else
      continue  # jumps to next  while
    fi
  fi
  echo "${tpf3b} $plugin ${tpfn}"
  cd "$plugin"
  grep url .git/config
  git pull
  cd $vimfiles/pack
done
echo "${tpf3b} fzf ${tpfn}"
pushd ../plugin/fzf
# rm install
# rm test/test_go.rb
grep url .git/config; git pull
popd

#=> 2 my forks
echo ''
xdg-open https://github.com/harriott/tagbar
xdg-open https://github.com/harriott/vim-gfm-syntax
xdg-open https://github.com/harriott/vim-markdown
fd -HI -tf ^config$ | xargs rg -l 'harriott'
echo 'Now check the forks!'
echo ''

#=> 3 tidy up
cd ArchLinux; [ $tidyup ] && . after.sh

