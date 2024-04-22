" vim: se fdl=1:

" Language: BBCode
" Maintainer: Joseph Harriott
" Last Change: Thu 13 May 2021
" $vimfiles/vim/ftplugin/bbcode.vim  (see also  $vimfiles/after/syntax/bbcode.vim)

setlocal textwidth=0

execute 'source 'g:vimfiles.'/ftplugin/HashEqualsFolding.vim'

""> folding by Markdown style header marks
execute 'source 'g:vimfiles.'/ftplugin/HashFolding.vim'
setlocal foldcolumn=1

""> tags - bold
" wrap the inner word under cursor
nnoremap <buffer> <leader><leader>] viwc[color=navy][/color]<Esc>bbp

" wrap a selection
vnoremap <buffer> <leader><leader>] c[color=navy][/color]<Esc>bbp

""> tags - code
" wrap the inner word under cursor
nnoremap <buffer> <leader>] viwc[code][/code]<Esc>bbp

" wrap a selection
vnoremap <buffer> <leader>] c[code][/code]<Esc>bbp

""> tags - url
" wrap a selection
vnoremap <buffer> <leader>u c[url][/url]<Esc>F[PF]

""> tags - user
" need to add user id number after =

" wrap the inner word under cursor
nnoremap <buffer> <leader><leader>u viwc[user=][/user]<Esc>F[PF]

" wrap a selection
vnoremap <buffer> <leader><leader>u c[user=][/user]<Esc>F[PF]

