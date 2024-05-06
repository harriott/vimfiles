#!/bin/bash
# vim: fdl=1 sw=2:

# Joseph Harriott, Sat 04 May 2024

# bash $vimfiles/packsGet-ArchLinux/after.sh

# some tweaks on plugins

# called at end of
#  $vimfiles/packsGet-ArchLinux/clones.sh
#  $vimfiles/packsGet-ArchLinux/pulls.sh

set -e

# #=> 0 hexokinase
# echo -e "\e[1m make hexokinase \e[0m"
# cd $vimfiles/vim/packs-unix/opt/vim-hexokinase
# make hexokinase
# cd $vimfiles/packsGet-ArchLinux

#=> 0 vim-ShowTrailingWhitespace
sed -i 's/^c/" c/' $vimfiles/vim/packs-cp/opt/vim-ShowTrailingWhitespace/ftplugin/markdown_ShowTrailingWhitespace.vim

#=> 1 lists
. $vimfiles/packsGet-ArchLinux/lists.sh

