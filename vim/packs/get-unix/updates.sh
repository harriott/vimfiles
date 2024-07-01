#!/bin/bash
# vim: fdl=1 sw=1:

# Joseph Harriott, Tue 28 May 2024

# bash $vfvp/get-unix/updates.sh

set -e  # quits on error

#=> 0 updates
cd $vfvp
# sf='vim-dokuwiki'
# sf='vim-gfm-syntax'
# once=yes
. $misc/GRs/update-depth1.sh

#=> 1 msmtp-scripts-vim
rsync -irtv --delete $DCGRs/unix/linux/marlam-msmtp/scripts/vim/ $vfvp/packs-cp/opt/msmtp-scripts-vim

#=> 1 my forks
echo ''
xdg-open https://github.com/harriott/vim-gfm-syntax
xdg-open https://github.com/harriott/vim-markdown
xdg-open https://github.com/harriott/vim-tagbar
fd -HI -tf ^config$ | xargs rg -l 'harriott'
echo 'Now check the forks!'
echo ''

#=> 2 tidy up
. $vfvp/get-unix/after.sh

