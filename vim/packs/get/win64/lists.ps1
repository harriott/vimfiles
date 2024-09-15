# vim: set fdl=1 et tw=0:

# Joseph Harriott - jeu 12 sept 2024

# & $vfvp/get/win64/lists.ps1
# sourced by  $vfvp/get/win64/after.ps1

# make lists of cloned plugins
# normally called from a parent script

$all="$vfvp/get/win64/all.txt"
echo "" > $all
cd $vfvp
foreach ($group in ls packs-*) { ls $group\opt | select -expand FullName >> $all }
echo $vimfiles\plugin\fzf >> $all

Write-Host " try to " -nonewline
  Write-Host ":helptags ALL" -foregroundcolor red -backgroundcolor yellow -nonewline

