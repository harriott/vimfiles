" vim: se fdl=1:

" Language: tree - output from (unix) tree, nicely folded up
" Maintainer: Joseph Harriott
" Last Change: Thu 25 Dec 2025

" $vfv/ftplugin/tree.vim
"  also  $vfv/syntax/tree.vim

" a hack using trailing colons to indicate fold level
" %s/ :*$

""> set : marks
function! UnixTreeMark()
  if search(':') == 0
    silent! %su/  /  /g
    silent! %su/^\v(%(└|├)── .*)\n(.   %(└|├))/\1 :\r\2/
    silent! %su/^\v(.   %(└|├)── .*)\n(.   .   %(└|├))/\1 ::\r\2/
    silent! %su/^\v(.   .   %(└|├)── .*)\n(.   .   .   %(└|├))/\1 :::\r\2/
  endif  " enough for three levels ($machLg/fonts/)
endfunction
nnoremap <buffer><F7> :call UnixTreeMark()<CR>

""> folding by number of trailing colons
setlocal foldcolumn=1

function! UnixTreeFold()
	let l:coloncount = matchstr(getline(v:lnum), ':\+')
	if empty(l:coloncount) | return "=" | else | return ">".len(l:coloncount) | endif
endfunction

setlocal foldexpr=UnixTreeFold() foldmethod=expr

