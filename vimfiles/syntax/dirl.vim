
" Language: dirl - for output of  $onGH/FM-DirLVF/DirLVF.py
" Maintainer: Joseph Harriott - http://harriott.github.io
" Last Change: Sat 04 Feb 2023

" $vimfiles/syntax/dirl.vim
"  configured in  $vimfiles/filetype.vim  or with  vim: ft=jctl:
"  also  $vimfiles/ftplugin/dirl.vim

if exists("b:current_syntax") | finish | endif

syn match dirlistdirectory /^\..*/
hi link dirlistdirectory Title

let b:current_syntax = "dirlist"

