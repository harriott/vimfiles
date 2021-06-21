
" Language:	sh
" Maintainer: Joseph Harriott
" Last Change: Thu 13 May 2021
" Syntax highlighting for folding my Bash scripts.

" this file should be in your  after/vimfiles/syntax  folder
"  it is supplementary to  $VIMRUNTIME/syntax/bash.vim
" (I set  fdm=expr  in  $vimfiles/ftplugin/sh.vim)

syntax sync fromstart  " for longer build scripts

execute 'source 'g:vimfiles.'/after/syntax/HashEqualsFolding.vim'

let b:current_syntax = "bash"  " because I'm always in Bash

