#!/bin/bash
# vim: fdl=1 sw=2:

# Joseph Harriott - Sat 19 Oct 2024
# cd $vfv; bash $vfv/getRepos/unix.sh

set -e  # quits on error

#=> 1 clones 0 update  all.clones
. $misc/GRs/getClonesList.sh getRepos/all.clones

# #=> 1 clones 1 remove
# sudo rm -r $vfv/plugin/fzf
# sudo rm -r $vfvp/packs-cp-full/opt/vim-gitgutter
# sudo rm -r $vfvp/packs-cp-full/opt/vim-tagbar
# # these will be re-cloned in the next step

#=> 1 clones 2 get
# from  $vfv/getRepos/all.clones - can prefix  test https://github.com/test
while read cl; do
  clone="${cl%% *}"
  if ! [ -d $clone ]; then
    gcc="git clone --depth 1 ${cl#* } $clone"
    echo "${tpf3b}$clone${tpfn}  not there, so  ${tpf2b}$gcc${tpfn}"
    $gcc
  fi
done <"$vfv/getRepos/all.clones"

#=> 2 updates 0 warn
read -p "Going to update repositories - you've closed instances of vim? "

# #=> 2 updates 1 packs
# cd $vfvp
# msv="$vfvp/packs-cp-full/opt/msmtp-scripts-vim"
# [ -f $msv ] && rm -r $msv  # temporarily, because it's got no .git
# # sf='vim-dokuwiki'
# # sf='vim-gfm-syntax'
# # once=yes
# rd=$pwd; . $misc/GRs/update-depth1.sh
# # $vfvp/repos  can be checked against  $vfv/getRepos/all.clones
# echo 'Put back  marlam-msmtp/scripts/vim:'
# rsync -irtv --delete $DCGRs/d-unix/d-linux/r-marlam-msmtp/scripts/vim/ $msv
# cd $vfv

# #=> 2 updates 2 plugins
# cd $vfv/plugin
# rd=$pwd; . $misc/GRs/update-depth1.sh; rm repos
# cd $vfv

#=> 2 updates 3 my forks
echo
# fd -HI -tf ^config$ | xargs rg -l 'harriott'
while read cl; do
  if [[ "$cl" =~ "harriott" ]]; then xdg-open "${cl#* }"; fi
done <"$vfv/getRepos/all.clones"
echo 'Now check the forks!' # incase they've fallen behind their upstreams
echo

#=> 3 fix vim-ShowTrailingWhitespace
sed -i 's/^c/" c/' $vfvp/packs-cp-full/opt/vim-ShowTrailingWhitespace/ftplugin/markdown_ShowTrailingWhitespace.vim

#=> 4 helptags
echo " try to ${tpf2b}:helptags ALL${tpfn}"

