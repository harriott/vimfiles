" Couple of adjustments.
" Language:	bbcode2
" Maintainer: Joseph Harriott
" Last Change: Wed 10 Feb 2021
" This file should be in your .vim/ftplugin folder.

setlocal textwidth=0

" wrap the inner word under cursor with bold tags
nnoremap <buffer> <leader>[ viwc[b][/b]<Esc>hhhP

" wrap a selection with ''
vnoremap <buffer> <leader>[ c[b][/b]<Esc>hhhP

