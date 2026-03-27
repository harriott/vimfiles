" vim: se fdl=1:

" Language: tree - output from (unix) tree, nicely folded up
" Maintainer: Joseph Harriott
" Last Change: Sat 14 Feb 2026

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
  endif  " only when probably not yet done
endfunction  " enough for three levels ($machLg/fonts/)
nnoremap <buffer><F7> :call UnixTreeMark()<CR>

""> folding by number of trailing colons
let g:tree_foldEnd = 0
setlocal foldcolumn=1

function! UnixTreeFold()
	let l:coloncount = matchstr(getline(v:lnum), ':\+')
    if getline(v:lnum) =~ '└' | let g:tree_foldEnd = 1 | endif
	if empty(l:coloncount)
      if empty(g:tree_foldEnd)
        return "="
      else
        let g:tree_foldEnd = 0
        return "<1"
      endif
    else
      return ">".len(l:coloncount)
    endif
endfunction

setlocal foldexpr=UnixTreeFold() foldmethod=expr

