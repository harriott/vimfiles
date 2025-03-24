" vim: se fdl=1:

" Language: tree - output from (unix) tree, nicely folded up
" Maintainer: Joseph Harriott
" Last Change: Sat 08 Mar 2025

" $vfv/ftplugin/tree.vim
"  also  $vfv/syntax/tree.vim

" a hack using trailing colons to indicate fold level
" %s/ :*$

""> 0 set : marks
if search(':') == 0
  silent %su/  /  /g
  silent %su/^\v(%(└|├)── .*)\n(.   %(└|├))/\1 :\r\2/
  silent %su/^\v(.   %(└|├)── .*)\n(.   .   %(└|├))/\1 ::\r\2/
endif
" enough for two levels ($Drpbx/Cop/GRs-nerd-fonts/readme.md)

""> folding by number of trailing colons
setlocal foldcolumn=1

function! UnixTreeFold()
	let l:coloncount = matchstr(getline(v:lnum), ':\+')
	if empty(l:coloncount) | return "=" | else | return ">".len(l:coloncount) | endif
endfunction

setlocal foldexpr=UnixTreeFold() foldmethod=expr

