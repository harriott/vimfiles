" vim: se fdl=2:

" Language: html
" Maintainer: Joseph Harriott
" Last Change: Thu 09 Feb 2023
" $vimfiles/ftplugin/html.vim, supplementary to  $VIMRUNTIME/ftplugin/html.vim

" sourced by  $VIMRUNTIME/ftplugin/markdown.vim

setlocal foldcolumn=2 " slightly better distinction from line numbers
setlocal textwidth=0

if expand('%:e') ==# 'html'
  source $vimfiles/ftplugin/html-ft.vim " (not for markdown)
endif

