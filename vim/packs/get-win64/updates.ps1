# vim: set fdl=1 et tw=0:

# $vimfiles\vim\packs\get-win64\updates.ps1

# Joseph Harriott, lun 13 mai 2024
# run this when you want to update your remote plugins

# For testing this:
#  robocopy /mir $vimfiles\vim\packs\packs-cp $home\Play0\packs-cp
#  robocopy /mir $vimfiles\vim\packs\packs-cp\opt\nerdcommenter $home\Play0\nerdcommenter
#  robocopy /mir $vimfiles\vim\packs\packs-cp\opt\nerdtree $home\Play0\nerdtree
#  robocopy /mir $vimfiles\vim\plugin\fzf $home\Play0\fzf

read-host '- you''ve closed instances of vim? '

#=> 0 updates
cd $vimfiles/vim/packs
. $misc\GRs\update-depth1.ps1

#=> 1 my forks
''
start https://github.com/harriott/vim-gfm-syntax
start https://github.com/harriott/vim-markdown
start https://github.com/harriott/vim-tagbar
echo 'Now check the forks!'
''

# #=> 0 pulls
# sl $vimfiles\vim
# # $pull = 'GO'  # comment out if setting  $start
# # $start = 'FoldText'
# $start = 'fzf'
# # $start = 'vim-css-color'
# # $start = 'vimtex'
# $repos0 = (ls packs-*\opt\* -directory)
# $repos1 = $repos0 | sort
# foreach ($repo in $repos1) {
#   $rn = $repo.name
#   if ( $rn -eq $start ) { $pull = 'GO' }
#   if ( $pull -eq 'GO' ) {
#     "$($PSStyle.foreground.BrightYellow)$rn$($PSStyle.reset)"
#     sl $repo
#     rg url .git/config --color=never -N --trim
#     git pull --depth 1; if( -not $? ) { exit }
#   }
# }
# sl $vimfiles\packsGet-win64

#=> 2 tidy up
# $vimfiles\vim\\packs\get-win64\after.ps1

