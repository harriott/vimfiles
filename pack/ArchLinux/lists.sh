#!/bin/bash

# Joseph Harriott - Tue 05 May 2020

# make lists of cloned plugins
# normally called from a parent script

find . -type d -name '*.git' > ArchLinux/$machineName/gits.txt
find . -mindepth 3 -maxdepth 3 -type d > ArchLinux/$machineName/all.txt
echo -e "don't forget to \e[1m\e[95m :helptags ALL \e[0m"

