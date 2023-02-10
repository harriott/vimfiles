#!/bin/bash

# Joseph Harriott - https://harriott.github.io/

# -----------------
# grab key-bindings
# -----------------
# bash grabMaps.sh

set -e  # terminate on a fail

# Grab uses of Function keys
#  this can be run as a vim command,  :execute "!grep -ri -E '<(m-|s-)?F[0-9]{1,2}>'"
#  but that can't be passed to Bufferize...
of=$vimfiles/grabbed/FnUses.txt
echo 'vim: ft=Fn:' > $of
echo >> $of
grep -ri --exclude-dir=grabbed -E '<(m-|s-)?F[0-9]{1,2}>' ../* >> $of
# rg --no-ignore '<(F|S-F)\d\+>'

# Grab uses of <leader>
of=$vimfiles/grabbed/leaderUses.txt
echo 'vim: ft=leader:' > $of
echo >> $of
grep -ri --exclude-dir=grabbed -E '<leader>' ../* >> $of

# Grab uses of <Plug>
grep -ri --exclude-dir=grabbed -E '<Plug>' ../* > $vimfiles/grabbed/PlugUses.txt

# grab mappings
# -------------
# these won't catch conditional mappings

vim -s commands.vim  # GrabCommands
vim -s FnMaps.vim  # GrabFnMaps
vim -s PlugMaps.vim  # GrabPlugMaps
vim -s runtimepath.vim  # GrabRtp
vim -s scriptnames.vim  # GrabScriptnames
vim -s simpleMaps.vim  # GrabSimpleMaps

