
" Language: dirl - for output of  $onGH/FM-DirLVF/DirLVF.py
" Maintainer: Joseph Harriott - http://harriott.github.io
" Last Change: Sat 04 Feb 2023

" $vimfiles/syntax/dirl.vim
"  also  $vimfiles/ftplugin/dirl.vim
" Detection: $vimfiles/filetype.vim

if exists("b:current_syntax") | finish | endif

syn match dirlistdirectory /^\..*/
hi link dirlistdirectory Title

let b:current_syntax = "dirlist"

