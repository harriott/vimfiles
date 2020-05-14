# vim: set et tw=0:

# Joseph Harriott http://momentary.eu/
# run this when you want to update your remote plugins

# List the plugins:
#
# strip down just to filenames in gVim: %s#\S\{-}\\##g
#
# PS> packs
# gci -Directory -path ..\*\* -exclude ArchLinux | select-object FullName

gci -Directory ..\*\*\* |
foreach{
  [System.Console]::BackgroundColor = 'DarkCyan'
  [System.Console]::ForegroundColor = 'White'
    echo $_.basename
  [System.Console]::ResetColor()
  cd $_
  git pull origin master
  cd ..
}
cd ..\

cd $PSScriptRoot
gci ..\*\*\* | where { $_.PSIsContainer } | select -ExpandProperty FullName > all.txt

