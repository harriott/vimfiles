" vim: se fdl=1:

" Language:	sh
" Maintainer: Joseph Harriott
" Last Change: Sat 20 Apr 2024
" Syntax highlighting for folding my Bash scripts.
" $vimfiles/after/syntax/sh.vim, supplementary to  $VIMRUNTIME/syntax/bash.vim
" (I set  fdm=expr  in  $vfv/ftplugin/sh.vim)

syntax keyword bashAdminStatement sudo
syntax keyword bashStatement bm checkupdates copyq date expac i pacfinder pacman pactree pass
syntax sync fromstart  " for longer build scripts

""> my folding
syntax cluster shIfList add=foldY
  " - gets it working in  if  clauses
  source $vfv/after/syntax/HashEqualsFolding.vim

""> Bash
if exists("b:is_bash") | syn cluster shPPSRightList	remove=shComment | endif " vim issue #11809

""> Bash
let b:current_syntax = "bash"  " because I'm always in Bash

