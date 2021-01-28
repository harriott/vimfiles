"
" Language:	sh
" Maintainer: Joseph Harriott
" Last Change: Thu 28 Jan 2021
" This file should be in your vimfiles\ftplugin folder.

" this is supplemental to  $VIMRUNTIME/ftplugin/sh.vim
" for folding, use modeline  vim: fdc=1 fdm=expr:

setlocal expandtab shiftwidth=4 textwidth=0

" my folding tools: (need modeline containing  fdm=expr)
execute 'source 'g:vimfiles.'/ftplugin/HashEqualsFolding.vim'

