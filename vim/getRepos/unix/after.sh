#!/bin/bash
# vim: fdl=1 sw=2:

# Joseph Harriott, mar 14 mai 2024

# bash $vfv/getRepos/unix/after.sh

# some tweaks on plugins

# called at end of
#  $vfv/getRepos/unix/clones.sh
#  $vfv/getRepos/unix/updates.sh

set -e
pwd

#=> 0 vim-ShowTrailingWhitespace
sed -i 's/^c/" c/' $vfvp/packs-cp/opt/vim-ShowTrailingWhitespace/ftplugin/markdown_ShowTrailingWhitespace.vim

#=> 1 lists
. $vfv/getRepos/unix/lists.sh

