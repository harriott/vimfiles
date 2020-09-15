# vim: set et tw=0:

# Joseph Harriott
# run this when you want to update your remote plugins

gci -Directory ..\*\*\* |
foreach{
  [System.Console]::BackgroundColor = 'DarkCyan'
  [System.Console]::ForegroundColor = 'White'
    echo $_.basename
  [System.Console]::ResetColor()
  cd $_
  git pull origin master
}
cd ..\..\..

cd Win10
PowerShell .\lists.ps1

