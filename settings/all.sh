#!/bin/bash

# Joseph Harriott - https://harriott.github.io/ - Mon 08 Apr 2024

# -----------------
# grab key-bindings
# -----------------
# in  $vimfiles/settings/   bash grab.sh

# see also  $vimfiles/settings/FnMaps-unix.txt

set -e  # terminate on a fail

vfs=$vimfiles/settings

echo 'grab uses of function keys'
# :execute "!grep -ri -E '<(m-|s-)?F[0-9]{1,2}>'"
#  (can't be passed to Bufferize)
of=$vfs/grab-FnUses-unix.txt
echo 'vim: ft=Fn:' > $of
echo >> $of
grep -ri --exclude-dir=settings -E '<(m-|s-)?F[0-9]{1,2}>' ../* >> $of
# rg --no-ignore '<(F|S-F)\d\+>'

echo 'grab uses of <leader>'
of=$vfs/grab-leaderUses-unix.txt
echo 'vim: ft=leader:' > $of
echo >> $of
grep -ri --exclude-dir=settings -E '<leader>' ../* >> $of

echo 'Grab uses of <Plug>'
of=$vfs/grab-PlugUses-unix.txt
echo 'vim: nowrap:' > $of
echo >> $of
grep -ri --exclude-dir=settings -E '<Plug>' ../* >> $of

#=> grab mappings
# -------------
# these won't catch conditional mappings

# echo GrabCommands
# vim -s commands.vim

