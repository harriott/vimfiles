# vim: set fdl=1 et tw=0:

# Joseph Harriott - mar 14 mai 2024

# & $vfv/packs\get-win64\lists.ps1
# sourced by  $vfv/packs\get-win64\after.ps1

# make lists of cloned plugins
# normally called from a parent script

$all="$vfv/packs\all.txt"
echo "" > $all
cd $vfv/packs
foreach ($group in ls packs-*) { ls $group\opt | select -expand FullName >> $all }
echo $vimfiles\plugin\fzf >> $all

Write-Host " try to " -nonewline
  Write-Host ":helptags ALL" -foregroundcolor red -backgroundcolor yellow -nonewline

