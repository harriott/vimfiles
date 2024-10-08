#!/bin/bash
# vim: fdl=1 sw=1:

# Joseph Harriott, ven 26 juil 2024

# bash $vfvp/get/unix/updates.sh

set -e  # quits on error

#=> 0 msmtp-scripts-vim - remove
rm -r $vfvp/packs-cp/opt/msmtp-scripts-vim

#=> 1 updates
cd $vfvp
# sf='vim-dokuwiki'
# sf='vim-gfm-syntax'
# once=yes
. $misc/GRs/update-depth1.sh

#=> 2 msmtp-scripts-vim - replace
rsync -irtv --delete $DCGRs/unix/linux/marlam-msmtp/scripts/vim/ $vfvp/packs-cp/opt/msmtp-scripts-vim

#=> 2 my forks
echo ''
xdg-open https://github.com/harriott/vim-gfm-syntax
xdg-open https://github.com/harriott/vim-markdown
xdg-open https://github.com/harriott/vim-tagbar
fd -HI -tf ^config$ | xargs rg -l 'harriott'
echo 'Now check the forks!'
echo ''

#=> 3 tidy up
. $vfvp/get/unix/after.sh

