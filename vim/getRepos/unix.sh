#!/bin/bash
# vim: fdl=1 sw=2:

# Joseph Harriott - Sat 19 Oct 2024
# cd $vfv; bash $vfv/getRepos/unix/get.sh

set -e  # quits on error

# #=> 1 clones 0 update  all.clones
# . $misc/GRs/getClones.sh getRepos/all.clones

# #=> 1 clones 1 remove
# sudo rm -r $vfv/plugin/fzf
# sudo rm -r $vfvp/packs-cp/opt/vim-gitgutter
# sudo rm -r $vfvp/packs-cp/opt/vim-tagbar

# #=> 1 clones 2 get
# # from  $vfv/getRepos/all.clones - can prefix  test https://github.com/test
# while read cl; do
#   clone="${cl%% *}"
#   if ! [ -d $clone ]; then
#     gcc="git clone --depth 1 ${cl#* }"
#     echo "${tpf3b}$clone${tpfn}  not there, so  ${tpf2b}$gcc${tpfn}"
#     $gcc
#   fi
# done <"getRepos/all.clones"

#=> 2 updates 0 warn
read -p "Going to update repositories - you've closed instances of vim? "
exit

#=> 2 updates 1 packs
cd $vfvp
rm -r $vfvp/packs-cp/opt/msmtp-scripts-vim
# sf='vim-dokuwiki'
# sf='vim-gfm-syntax'
# once=yes
. $misc/GRs/update-depth1.sh
rsync -irtv --delete $DCGRs/unix/linux/marlam-msmtp/scripts/vim/ $vfvp/packs-cp/opt/msmtp-scripts-vim
cd $vfv

#=> 2 updates 2 plugins
cd $vfv/plugin; . $misc/GRs/update-depth1.sh; rm repositories; cd $vfv

#=> 2 updates 3 my forks
echo
# fd -HI -tf ^config$ | xargs rg -l 'harriott'
while read cl; do
  if [[ "$cl" =~ "harriott" ]]; then
    echo "$cl"
  fi
done <"getRepos/all.clones"
# mapfile -t myForks < <(fd -HI -tf ^config$ | xargs rg -l 'harriott')
# for myFork in "${myForks[@]}"; do
#   echo; echo "$item"
# done
# xdg-open https://github.com/harriott/vim-dokuwiki
# xdg-open https://github.com/harriott/vim-gfm-syntax
# xdg-open https://github.com/harriott/vim-markdown
# xdg-open https://github.com/harriott/vim-tagbar
echo '- now check the forks!' # incase they've fallen behind their upstreams
echo

#=> 3 fix vim-ShowTrailingWhitespace
sed -i 's/^c/" c/' $vfvp/packs-cp/opt/vim-ShowTrailingWhitespace/ftplugin/markdown_ShowTrailingWhitespace.vim

#=> 4 helptags
echo " try to ${tpf2b}:helptags ALL${tpfn}"

