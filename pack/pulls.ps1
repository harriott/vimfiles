# vim: set et tw=0:

# Joseph Harriott http://momentary.eu/
# run this when you want to update your remote plugins

# List the plugins:
#
# PS> gci */*/* | where { $_.PSIsContainer } | select -ExpandProperty FullName > all-MSW10.txt
# strip down just to filenames in gVim: %s#\S\{-}\\##g
#
# PS> packs

gci */*/* |
foreach{
  $dn=$_.basename
  [System.Console]::BackgroundColor = 'DarkCyan'
  [System.Console]::ForegroundColor = 'White'
  echo $dn
  [System.Console]::ResetColor()
  cd $_
  git pull origin master
  cd ..
}
cd ..\..

