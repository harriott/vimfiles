" vim: se fdl=1:

" Language:	build - text files of my system builds, nicely folded up
" Maintainer: Joseph Harriott
" Last Change: Thu 08 Sep 2022

" "$vimfiles/ftplugin/build.vim  &  $vimfiles/syntax/build.vim
" vim: ft=build:

setlocal expandtab shiftwidth=2 textwidth=0

""> folding by Markdown style header marks
execute 'source 'g:vimfiles.'/ftplugin/HashFolding.vim'
setlocal foldcolumn=1

