#!/bin/bash

# Joseph Harriott - mar 14 mai 2024

# $vfvp/get/unix/lists.sh
#  normally called from  $vfvp/get/unix/after.sh

find .. -type d -name '*.git' | sort > gits.txt
cd=`pwd`
for file in `cat gits.txt`; do cd $file;
    git config core.ignorecase true
    git config core.symlinks false
cd $cd; done

find ../*/packs-* -mindepth 3 -maxdepth 3 -type d |sort > all.txt

echo -e "don't forget to  \e[1m\e[95m:helptags ALL\e[0m  after a restart"

