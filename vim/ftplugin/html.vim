" vim: se fdl=2:

" Language: html
" Maintainer: Joseph Harriott
" Last Change: Sun 21 Apr 2024
" $vimfiles/vim/ftplugin/html.vim, supplementary to  $VIMRUNTIME/ftplugin/html.vim

" sourced by  $VIMRUNTIME/ftplugin/markdown.vim

" $VIMRUNTIME/syntax/html.vim  sets  omnifunc=htmlcomplete#CompleteTags

setlocal foldcolumn=2 " slightly better distinction from line numbers
setlocal textwidth=0

if expand('%:e') ==# 'html'
  source $vimfiles/vim/ftplugin/html-ft.vim " (not for markdown)
endif

