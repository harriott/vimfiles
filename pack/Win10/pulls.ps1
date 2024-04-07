# vim: set fdl=1 et tw=0:

# $vfp\Win10\pulls.ps1

# Joseph Harriott, mar. 06 févr. 2024
# run this when you want to update your remote plugins

#=> 0 pulls
# $pull = 'GO'  # comment out if setting  $start
# $start = 'FoldText'
$repos0 = (ls ..\*\*\* -directory)
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
sl $vfp\Win10

#=> 1 fzf
sl $vimfiles\plugin\fzf
ri -recurse install
ri -recurse test/test_go.rb
git pull --depth 1

#=> 2 my forks

#=> 3 tidy up
sl $vfp\Win10
.\after.ps1

