#!/bin/bash

# Joseph Harriott

# -----------------------------
# some scripts to grab settings
# -----------------------------

# grab uses of key-bindings
# -------------------------
# sometimes using my vimscript functions defined in  ~/.vim/plugin/grabOutputs.vim

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

vim -s FnMaps.vim FnMaps.txt
vim -s PlugMaps.vim PlugMaps.txt
vim -s simpleMaps.vim simpleMaps.txt

