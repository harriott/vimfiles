# vim: set et tw=0:

# Joseph Harriott http://momentary.eu/
# run this when you want to update your remote plugins

cd shell\start
gci |
foreach{
  $dn=$_.basename
  [System.Console]::BackgroundColor = 'DarkCyan'
  [System.Console]::ForegroundColor = 'White'
  echo $dn
  [System.Console]::ResetColor()
  cd $dn
  git pull origin master
  cd ..
}
cd ..\..

