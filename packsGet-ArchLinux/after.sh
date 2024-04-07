#!/bin/bash
# vim: fdl=1 sw=2:

# Joseph Harriott, Mon 18 Oct 2021

# some tweaks on plugins

# called at end of
#  $vfp/ArchLinux/clones.sh
#  $vfp/ArchLinux/pulls.sh

# bash $vfp/ArchLinux/after.sh

set -e

#=> 0 hexokinase
echo -e "\e[1m make hexokinase \e[0m"
cd $vfp/packs-unix/opt/vim-hexokinase
make hexokinase
cd ../../../ArchLinux

#=> 0 vim-ShowTrailingWhitespace
sed -i 's/^c/" c/' ../packs-cp/opt/vim-ShowTrailingWhitespace/ftplugin/markdown_ShowTrailingWhitespace.vim

#=> 1 lists
. lists.sh

