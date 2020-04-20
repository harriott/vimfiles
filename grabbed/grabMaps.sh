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
grep -ri --exclude=FnUses.txt -E '<(m-|s-)?F[0-9]{1,2}>' ../* > FnUses.txt

# Grab uses of <leader>
grep -ri --exclude=leaderUses.txt -E '<leader>' ../* > leaderUses.txt

# grab mappings
# -------------
# these won't catch filetype-specific mappings

vim -s FnMaps.vim FnMaps.txt

