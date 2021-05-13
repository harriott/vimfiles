
" Language:	bbcode
" Maintainer: Joseph Harriott
" Last Change: Thu 13 May 2021
" This file should be in  vimfiles/ftplugin
"  (see also  $vimfiles/after/syntax/bbcode.vim)

setlocal fdm=expr textwidth=0

execute 'source 'g:vimfiles.'/ftplugin/HashEqualsFolding.vim'

""> bold tags
" wrap the inner word under cursor
nnoremap <buffer> <leader>] viwc[b][/b]<Esc>hhhP

" wrap a selection
vnoremap <buffer> <leader>] c[b][/b]<Esc>hhhP

