# vim: set fdl=1 et tw=0:

# Joseph Harriott, Thu 01 Sep 2022
# run this when you want to update your remote plugins

gci -Directory ..\*\*\* | sort |
foreach{
  [System.Console]::BackgroundColor = 'DarkCyan'
  [System.Console]::ForegroundColor = 'White'
    Write-Host $_.basename -nonewline
  [System.Console]::ResetColor()
  '' # gets the colour reset done
  cd $_
  # git pull
  if( -not $? ) { exit }
}
cd $vimfiles\plugin\fzf
git pull

cd $vimfiles\pack\Win10
.\lists.ps1

