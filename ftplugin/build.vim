" vim: se fdl=1:

" Couple of adjustments.
" Language:	build - text files of my system builds, nicely folded up
" Maintainer: Joseph Harriott
" Last Change: Thu 10 Dec 2020
" $vimfiles/ftplugin/build.vim
" You need to add this modeline in the file that you want to affect:  vim: ft=build:
" To be used in conjunction with  $vimfiles/syntax/build.vim

setlocal expandtab shiftwidth=2 textwidth=0

""> folding by header marks
execute 'source 'g:vimfiles.'/ftplugin/HashFolding.vim'

setlocal foldcolumn=1

