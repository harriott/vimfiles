#!/bin/bash

# Joseph Harriott - Sun 13 Sep 2020

# make lists of cloned plugins
# normally called from a parent script

# gci .. -r -force .git | select -expand FullName > gits.txt
# foreach ($group in 'cp', 'unix', 'win32') { $group }
echo "" > all.txt
foreach ($group in 'cp', 'unix', 'win32') {
  gci "..\packs-$group\opt\*" | select -expand FullName >> all.txt
}

Write-Host " don't forget to " -nonewline
  Write-Host ":helptags ALL" -foregroundcolor red -backgroundcolor yellow -nonewline

