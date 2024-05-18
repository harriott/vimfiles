# vim: set fdl=1 et tw=0:

# & $vfvp\get-win64\updates.ps1

# Joseph Harriott, lun 13 mai 2024
# run this when you want to update your remote plugins

read-host '- you''ve closed instances of vim? '

#=> 0 updates
cd $vfvp
. $misc\GRs\update-depth1.ps1
mv repositories get-win64\repositories -force

# #=> 1 my forks
# ''
# start https://github.com/harriott/vim-gfm-syntax
# start https://github.com/harriott/vim-markdown
# start https://github.com/harriott/vim-tagbar
# echo 'Now check the forks!'
# ''

#=> 2 tidy up
. $vfvp\get-win64\after.ps1

