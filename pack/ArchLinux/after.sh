#!/bin/bash
# vim: fdl=1 sw=2:

# Joseph Harriott, Mon 18 Oct 2021

# some tweaks on plugins
# bash $vimfiles/pack/ArchLinux/after.sh

set -e

#=> hexokinase
echo -e "\e[1m make hexokinase \e[0m"
cd $vimfiles/pack/packs-unix/opt/vim-hexokinase
make hexokinase
cd ../../../ArchLinux

#=> lists
. lists.sh

#=> tagbar
# reduce help keystroke  ['<F1>', '?']  to  ['?']  so that my  <F1>  still works
# first tweak & run  $vimfiles/pack/ArchLinux/clones.sh  then
sed -i "s/'<F1>', //" ../packs-cp/opt/tagbar/plugin/tagbar.vim

#=> vim-ShowTrailingWhitespace
sed -i 's/^c/" c/' ../packs-cp/opt/vim-ShowTrailingWhitespace/ftplugin/markdown_ShowTrailingWhitespace.vim

