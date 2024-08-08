#!/bin/bash
# vim: fdl=1 sw=2:

# Joseph Harriott, mar 14 mai 2024

# bash $vfv/packs/get-unix/after.sh
#  normally sourced from
#   $vfv/packs/get-unix/updates.sh

# some tweaks on plugins

# called at end of
#  $vfv/packs/get-unix/clones.sh
#  $vfv/packs/get-unix/updates.sh

set -e
pwd

#=> 0 vim-ShowTrailingWhitespace
sed -i 's/^c/" c/' $vfv/packs/packs-cp/opt/vim-ShowTrailingWhitespace/ftplugin/markdown_ShowTrailingWhitespace.vim

#=> 1 lists
. $vfv/packs/get-unix/lists.sh

