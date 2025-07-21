"
" Couple of useful adjustments for working with xml documents.
" Language: XML
" Maintainer: Joseph Harriott
" Last Change: ven 04 juil 2025
" This file should be in your  vimfiles\ftplugin  folder so that it's applied to  *.xml  files.

setlocal expandtab tw=0

" Folding handled by $VIMRUNTIME/syntax/xml.vim
" ---------------------------------------------
" add this to vimrc:  let g:xml_syntax_folding = 1
setlocal fdc=1 fdl=1 fdm=syntax smc=0

