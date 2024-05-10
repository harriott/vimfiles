#!/bin/bash

# Joseph Harriott - Thu 09 May 2024

# $vimfiles/packsGet-ArchLinux/lists.sh
#  normally called from  $vimfiles/packsGet-ArchLinux/after.sh

find .. -type d -name '*.git' | sort > gits.txt
cd=`pwd`
for file in `cat gits.txt`; do cd $file;
    git config core.ignorecase true
    git config core.symlinks false
cd $cd; done

find ../*/packs-* -mindepth 3 -maxdepth 3 -type d |sort > all.txt

echo -e "don't forget to  \e[1m\e[95m:helptags ALL\e[0m  after a restart"

