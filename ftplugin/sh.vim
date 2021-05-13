"
" Language:	sh
" Maintainer: Joseph Harriott
" Last Change: Thu 13 May 2021
" This file should be in your vimfiles\ftplugin folder.
"  it is supplemental to  $VIMRUNTIME/ftplugin/sh.vim
"  (and see  $vimfiles/after/syntax/sh.vim)
" ($VIMRUNTIME/filetype.vim  determines whether files are detected as bash or sh)

setlocal expandtab fdc=1 fdm=expr shiftwidth=4 textwidth=0

" my folding tools:
execute 'source 'g:vimfiles.'/ftplugin/HashEqualsFolding.vim'

