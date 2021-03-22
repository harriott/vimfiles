"
" Language:	sh
" Maintainer: Joseph Harriott
" Last Change: Tue 02 Mar 2021
" This file should be in your vimfiles\ftplugin folder.

" this is supplemental to  $VIMRUNTIME/ftplugin/sh.vim
" for folding, use modeline  vim: fdc=1 fdm=expr:

setlocal expandtab fdc=1 fdm=expr shiftwidth=4 textwidth=0

" my folding tools: (need modeline containing  fdm=expr)
execute 'source 'g:vimfiles.'/ftplugin/HashEqualsFolding.vim'

