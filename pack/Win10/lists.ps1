# vim: set fdl=1 et tw=0:

# Joseph Harriott - Fri 21 Jan 2022

# make lists of cloned plugins
# normally called from a parent script

echo "" > all.txt
foreach ($group in 'cp', 'unix', 'win32') {
  gci "..\packs-$group\opt\*" | select -expand FullName >> all.txt
}
echo $vimfiles\plugin\fzf >> all.txt

Write-Host " try to " -nonewline
  Write-Host ":helptags ALL" -foregroundcolor red -backgroundcolor yellow -nonewline

