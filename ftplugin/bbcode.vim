" vim: se fdl=1:

" Language:	BBCode
" Maintainer: Joseph Harriott
" Last Change: Thu 13 May 2021
" $vimfiles/ftplugin/bbcode.vim  (see also  $vimfiles/after/syntax/bbcode.vim)

setlocal textwidth=0

execute 'source 'g:vimfiles.'/ftplugin/HashEqualsFolding.vim'

""> folding by Markdown style header marks
execute 'source 'g:vimfiles.'/ftplugin/HashFolding.vim'
setlocal foldcolumn=1

""> tags - bold
" wrap the inner word under cursor
nnoremap <buffer> <leader>] viwc[color=navy][/color]<Esc>bbp

" wrap a selection
vnoremap <buffer> <leader>] c[color=navy][/color]<Esc>bbp

""> tags - user
" wrap the inner word under cursor
nnoremap <buffer> <leader>u viwc[user][/user]<Esc>bbp

" wrap a selection
vnoremap <buffer> <leader>u c[user][/user]<Esc>bbp

