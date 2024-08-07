#!/bin/bash
# vim: fdl=1 sw=2:

# Joseph Harriott, mar 14 mai 2024

# bash $vfpa/get-unix/after.sh
#  normally sourced from
#   $vfpa/get-unix/updates.sh

# some tweaks on plugins

# called at end of
#  $vfpa/get-unix/clones.sh
#  $vfpa/get-unix/updates.sh

set -e
pwd

#=> 0 vim-ShowTrailingWhitespace
sed -i 's/^c/" c/' $vfpa/packs-cp/opt/vim-ShowTrailingWhitespace/ftplugin/markdown_ShowTrailingWhitespace.vim

#=> 1 lists
. $vfpa/get-unix/lists.sh

