#!/bin/bash

# Joseph Harriott

# ---------------------------------
# some scripts to grab key-bindings
# ---------------------------------
# bash grabMaps.sh

# Grab uses of Function keys
#  this can be run as a vim command,  :execute "!grep -ri -E '<(m-|s-)?F[0-9]{1,2}>'"
#  but that can't be passed to Bufferize...
grep -ri --exclude-dir=grabbed -E '<(m-|s-)?F[0-9]{1,2}>' ../* > FnUses.txt

# Grab uses of <leader>
grep -ri --exclude-dir=grabbed -E '<leader>' ../* > leaderUses.txt

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

