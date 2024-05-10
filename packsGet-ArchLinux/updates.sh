#!/bin/bash
# vim: fdl=1 sw=1:

# Joseph Harriott, Thu 09 May 2024

# bash $vimfiles/packsGet-ArchLinux/updates.sh

set -e  # quits on error

#=> 0 updates
cd $vimfiles/vim
# sf='vim-dokuwiki'
# sf='vim-gfm-syntax'
# once=yes
. $misc/GRs/update-depth1.sh

#=> 1 my forks
echo ''
xdg-open https://github.com/harriott/vim-gfm-syntax
xdg-open https://github.com/harriott/vim-markdown
xdg-open https://github.com/harriott/vim-tagbar
fd -HI -tf ^config$ | xargs rg -l 'harriott'
echo 'Now check the forks!'
echo ''

#=> 2 tidy up
. $vimfiles/packsGet-ArchLinux/after.sh

