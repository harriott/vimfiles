#!/bin/bash
# vim: fdl=1 sw=2:

# Joseph Harriott, mar 14 mai 2024

# bash $vimfiles/vim/packs/get-unix/after.sh
#  normally sourced from
#   $vimfiles/vim/packs/get-unix/updates.sh

# some tweaks on plugins

# called at end of
#  $vimfiles/packsGet-ArchLinux/clones.sh
#  $vimfiles/packsGet-ArchLinux/pulls.sh

set -e

#=> 0 vim-ShowTrailingWhitespace
sed -i 's/^c/" c/' $vimfiles/vim/packs/packs-cp/opt/vim-ShowTrailingWhitespace/ftplugin/markdown_ShowTrailingWhitespace.vim

#=> 1 lists
. $vimfiles/vim/packs/get-unix/lists.sh

