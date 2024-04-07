" vim: se fdl=1:

" Language:	sh
" Maintainer: Joseph Harriott
" Last Change: Sun 15 Jan 2023
" Syntax highlighting for folding my Bash scripts.
" $vimfiles/after/syntax/sh.vim, supplementary to  $VIMRUNTIME/syntax/bash.vim
" (I set  fdm=expr  in  $vimfiles/ftplugin/sh.vim)

syntax keyword bashAdminStatement sudo
syntax keyword bashStatement bm checkupdates copyq date expac i pacfinder pacman pactree pass
syntax sync fromstart  " for longer build scripts

""> my folding
syntax cluster shIfList add=foldY
  " - gets it working in  if  clauses
  execute 'source 'g:vimfiles.'/after/syntax/HashEqualsFolding.vim'

""> Bash
if exists("b:is_bash") | syn cluster shPPSRightList	remove=shComment | endif " vim issue #11809

""> Bash
let b:current_syntax = "bash"  " because I'm always in Bash

