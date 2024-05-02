# vim: set fdl=1 et tw=0:

# $vimfiles\packsGet-Win10\pulls.ps1

# Joseph Harriott, mar. 06 févr. 2024
# run this when you want to update your remote plugins

read-host '- you''ve closed instances of vim? '

#=> 0 pulls
sl $vimfiles\vim
# $pull = 'GO'  # comment out if setting  $start
# $start = 'FoldText'
$start = 'fzf'
# $start = 'vim-css-color'
# $start = 'vimtex'
$repos0 = (ls packs-*\opt\* -directory)
$repos1 = $repos0 | sort
foreach ($repo in $repos1) {
  $rn = $repo.name
  if ( $rn -eq $start ) { $pull = 'GO' }
  if ( $pull -eq 'GO' ) {
    "$($PSStyle.foreground.BrightYellow)$rn$($PSStyle.reset)"
    sl $repo
    rg url .git/config --color=never -N --trim
    git pull --depth 1; if( -not $? ) { exit }
  }
}
sl $vimfiles\packsGet-Win10

#=> 2 my forks

#=> 3 tidy up
sl $vimfiles\packsGet-Win10
.\after.ps1

