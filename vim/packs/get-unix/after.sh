#!/bin/bash
# vim: fdl=1 sw=2:

# Joseph Harriott, mar 14 mai 2024

# bash $vfvp/get-unix/after.sh
#  normally sourced from
#   $vfvp/get-unix/updates.sh

# some tweaks on plugins

# called at end of
#  $vfvp/get-unix/clones.sh
#  $vfvp/get-unix/updates.sh

set -e
pwd

#=> 0 vim-ShowTrailingWhitespace
sed -i 's/^c/" c/' $vfvp/packs-cp/opt/vim-ShowTrailingWhitespace/ftplugin/markdown_ShowTrailingWhitespace.vim

#=> 1 lists
. $vfvp/get-unix/lists.sh

