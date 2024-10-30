" vim: se fdl=1:

" Language: BBCode
" Maintainer: Joseph Harriott
" Last Change: ven 04 oct 2024
" $vfv/ftplugin/bbcode.vim  (see also  $vfv/after/syntax/bbcode.vim)

setlocal textwidth=0

source $vfv/ftplugin/HashEqualsFolding.vim

""> folding by Markdown style header marks
source $vfv/ftplugin/HashFolding.vim
setlocal foldcolumn=1

""> tags - inline code
" [color=navy]this ain't readable in dark themes[/color]

" wrap the inner word under cursor
nnoremap <buffer> <leader><leader>] viwc[ins][/ins]<Esc>bbp

" wrap a selection
vnoremap <buffer> <leader><leader>] c[ins][/ins]<Esc>bbp

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

