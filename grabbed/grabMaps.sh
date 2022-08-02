#!/bin/bash

# Joseph Harriott

# ---------------------------------
# some scripts to grab key-bindings
# ---------------------------------
# bash grabMaps.sh

set -e  # terminate on a fail

# Grab uses of Function keys
#  this can be run as a vim command,  :execute "!grep -ri -E '<(m-|s-)?F[0-9]{1,2}>'"
#  but that can't be passed to Bufferize...
echo 'vim: ft=Fn:' > FnUses.txt
echo >> FnUses.txt
grep -ri --exclude-dir=grabbed -E '<(m-|s-)?F[0-9]{1,2}>' ../* >> FnUses.txt
# rg --no-ignore '<(F|S-F)\d\+>'

# Grab uses of <leader>
echo 'vim: ft=leader:' > leaderUses.txt
echo >> leaderUses.txt
grep -ri --exclude-dir=grabbed -E '<leader>' ../* >> leaderUses.txt

# Grab uses of <Plug>
grep -ri --exclude-dir=grabbed -E '<Plug>' ../* > PlugUses.txt

# grab mappings
# -------------
# these won't catch conditional mappings

vim -s commands.vim  # GrabCommands
vim -s FnMaps.vim  # GrabFnMaps
vim -s PlugMaps.vim  # GrabPlugMaps
vim -s runtimepath.vim  # GrabRtp
vim -s scriptnames.vim  # GrabScriptnames
vim -s simpleMaps.vim  # GrabSimpleMaps

