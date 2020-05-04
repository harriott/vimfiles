# vim: set et tw=0:

# Joseph Harriott http://momentary.eu/
# run this when you want to update your remote plugins

# List the plugins:
#
# strip down just to filenames in gVim: %s#\S\{-}\\##g
#
# PS> packs

gci ..\*\*\* |
foreach{
  $dn=$_.basename
  if ($dn -ne (Split-Path $PSScriptRoot)) {
    "$dn"
    # [System.Console]::BackgroundColor = 'DarkCyan'
    # [System.Console]::ForegroundColor = 'White'
    # echo $dn
    # [System.Console]::ResetColor()
    # cd $_
    # git pull origin master
    # cd ..
  }
}
cd ..\

cd $PSScriptRoot
gci ..\*\*\* | where { $_.PSIsContainer } | select -ExpandProperty FullName > all.txt

