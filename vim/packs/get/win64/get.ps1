# vim: set fdl=1 et tw=0:

# & $vfvp/get/win64/get.ps1

# Joseph Harriott, ven 13 sept 2024
# run this when you want to update your remote plugins

#=> 0 clones
$clones = gc $vfvp/get/all.clones
foreach ($clone in $clones) {
  $rrp = $clone -replace ' .*', ''  # repository relative path
  if ( ! ( test-path "$vfv/$rrp" ) ) {
    "$vfv/$rrp not there so"
    $url = $clone -replace '.* ', ''  # repository url
    $gcc = "  git clone --depth 1 $url $vfv\$rrp"
    $gcc
    iex $gcc
  }
} # fd -td <part_of_path>

# #=> 1 updates
# $msv = "$vfvp/packs-cp/opt/msmtp-scripts-vim"
# read-host '- you''ve closed instances of vim? '

# # #==> 0 msmtp-scripts-vim - remove
# # if ( ( test-path $msv ) ) { remove-itemsafely $msv }

# # #==> 1 updates - packs
# # cd $vfvp; . $misc\GRs\update-depth1.ps1
# # mv repositories get\win64\packs -force

# # #==> 1 updates - plugins
# # cd $vfv/plugin; . $misc\GRs\update-depth1.ps1

# # #==> 2 msmtp-scripts-vim - replace
# # robocopy /mir $DCGRs/unix/linux/marlam-msmtp/scripts/vim/ $msv

# # #==> 2 my forks
# # ''
# # start https://github.com/harriott/vim-gfm-syntax
# # start https://github.com/harriott/vim-markdown
# # start https://github.com/harriott/vim-tagbar
# # echo 'Now check the forks!'
# # ''

# #==> 3 tidy up
# # . $vfvp\get\win64\after.ps1

