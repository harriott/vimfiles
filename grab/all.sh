#!/bin/bash

# Joseph Harriott - https://harriott.github.io/ - Sun 26 Feb 2023

# -----------------
# grab key-bindings
# -----------------
# bash all.sh

set -e  # terminate on a fail

echo 'grab uses of function keys'
#  this can be run as a vim command,  :execute "!grep -ri -E '<(m-|s-)?F[0-9]{1,2}>'"
#  but that can't be passed to Bufferize...
grbbd=$vimfiles/grabbed
of=$grbbd/FnUses.txt
echo 'vim: ft=Fn:' > $of
echo >> $of
grep -ri --exclude-dir=grabbed -E '<(m-|s-)?F[0-9]{1,2}>' ../* >> $of
# rg --no-ignore '<(F|S-F)\d\+>'

echo 'grab uses of <leader>'
of=$grbbd/leaderUses.txt
echo 'vim: ft=leader:' > $of
echo >> $of
grep -ri --exclude-dir=grabbed -E '<leader>' ../* >> $of

echo 'Grab uses of <Plug>'
grep -ri --exclude-dir=grabbed -E '<Plug>' ../* > $grbbd/PlugUses.txt

# grab mappings
# -------------
# these won't catch conditional mappings

echo GrabCommands
vim -s commands.vim
echo GrabFnMaps
vim -s FnMaps.vim
echo GrabPlugMaps
vim -s PlugMaps.vim
echo GrabRtp
vim -s runtimepath.vim
echo GrabScriptnames
vim -s scriptnames.vim
echo GrabSimpleMaps
vim -s simpleMaps.vim

