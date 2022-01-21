# vim: set fdl=1 et tw=0:

# Joseph Harriott, Fri 21 Jan 2022
# run this when you want to update your remote plugins

gci -Directory ..\*\*\* |
foreach{
  [System.Console]::BackgroundColor = 'DarkCyan'
  [System.Console]::ForegroundColor = 'White'
    Write-Host $_.basename -nonewline
  [System.Console]::ResetColor()
  '' # gets the colour reset done
  cd $_
  git pull
  if( -not $? ) { exit }
}
cd ..\..\..

cd Win10
.\lists.ps1

