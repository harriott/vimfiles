# vim: set fdl=1 et tw=0:

# & $vfpa\get-win64\updates.ps1

# Joseph Harriott, ven 26 juil 2024
# run this when you want to update your remote plugins

$msv = "$vfpa/packs-cp/opt/msmtp-scripts-vim"
read-host '- you''ve closed instances of vim? '

# #=> 0 msmtp-scripts-vim - remove
# if ( ( test-path $msv ) ) { remove-itemsafely $msv }

#=> 1 updates
cd $vfpa; . $misc\GRs\update-depth1.ps1
cd $vfpl; . $misc\GRs\update-depth1.ps1
mv repositories get-win64\repositories -force

# #=> 2 msmtp-scripts-vim - replace
# robocopy /mir $DCGRs/unix/linux/marlam-msmtp/scripts/vim/ $msv

# #=> 2 my forks
# ''
# start https://github.com/harriott/vim-gfm-syntax
# start https://github.com/harriott/vim-markdown
# start https://github.com/harriott/vim-tagbar
# echo 'Now check the forks!'
# ''

#=> 3 tidy up
. $vfpa\get-win64\after.ps1

