" vim: se fdl=1:

" Language:	bbcode
" Maintainer: Joseph Harriott
" Last Change: Thu 13 May 2021
" $vimfiles/ftplugin/bbcode.vim
"  (see also  $vimfiles/after/syntax/bbcode.vim)

setlocal textwidth=0

execute 'source 'g:vimfiles.'/ftplugin/HashEqualsFolding.vim'

""> bold tags
" wrap the inner word under cursor
nnoremap <buffer> <leader>] viwc[color=navy][/color]<Esc>bbp

" wrap a selection
vnoremap <buffer> <leader>] c[color=navy][/color]<Esc>bbp

