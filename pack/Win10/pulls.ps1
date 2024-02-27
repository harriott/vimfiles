# vim: set fdl=1 et tw=0:

# $vfp\Win10\pulls.ps1

# Joseph Harriott, mar. 06 févr. 2024
# run this when you want to update your remote plugins

#=> 0 pulls
$snagged = fzf.vim
gci -Directory ..\*\*\* | sort |
foreach{
  if ( $snagged ) {
    if ( $_ = $snagged ) {
    $snagged
    }
  }
  continue
  [System.Console]::BackgroundColor = 'DarkCyan'
  [System.Console]::ForegroundColor = 'White'
    Write-Host $_.basename -nonewline
  [System.Console]::ResetColor()
  '' # gets the colour reset done
  sl $_
  git pull
  if( -not $? ) { exit }
}

# #=> 1 fzf
# sl $vimfiles\plugin\fzf
# ri -recurse install
# ri -recurse test/test_go.rb
# git pull

#=> 2 my forks

# #=> 3 tidy up
# sl $vfp\Win10
# .\lists.ps1

