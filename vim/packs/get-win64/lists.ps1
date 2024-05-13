# vim: set fdl=1 et tw=0:

# Joseph Harriott - Fri 21 Jan 2022

# $vimfiles\vim\packs\get-win64\lists.ps1

# make lists of cloned plugins
# normally called from a parent script

echo "" > all.txt
cd $vimfiles\vim\packs
foreach ($group in ls packs-*) { ls $group\opt | select -expand FullName >> all.txt }
echo $vimfiles\plugin\fzf >> all.txt

Write-Host " try to " -nonewline
  Write-Host ":helptags ALL" -foregroundcolor red -backgroundcolor yellow -nonewline

