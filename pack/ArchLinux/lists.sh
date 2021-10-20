#!/bin/bash

# Joseph Harriott - Wed 07 Oct 2020

# make lists of cloned plugins
# normally called from a parent script
#  or can be called from ~/.vim/pack:  bash ArchLinux/lists.sh

find .. -type d -name '*.git' | sort > gits.txt
cd=`pwd`
for file in `cat gits.txt`; do cd $file;
    git config core.ignorecase true
    git config core.symlinks false
cd $cd; done

find .. -mindepth 3 -maxdepth 3 -type d |sort > all.txt

echo -e "don't forget to restart Vim &  \e[1m\e[95m :helptags ALL \e[0m"

