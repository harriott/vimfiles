# vim: set et tw=0:

# Joseph Harriott http://momentary.eu/
# run this when you want to update your remote plugins

# List the plugins:
# gci */*/* | where { $_.PSIsContainer } | select -ExpandProperty FullName

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

