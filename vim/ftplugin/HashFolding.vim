" vim: se fdl=1:

" Maintainer: Joseph Harriott
" Last Change: Sun 30 Jan 2022
" $vfv/ftplugin/HashFolding.vim
"  used by
"   $vfv/ftplugin/markdown.vim
"   $vfv/ftplugin/build.vim

" demote a selected part
vnoremap <buffer><leader>> :s/^#/##/<CR>
" promote a selected part
vnoremap <buffer><leader>< :s/^#//<CR>

""> folding by header marks
" (based on http://stackoverflow.com/questions/3828606/vim-markdown-folding)
function! HashFold()
	let l:hashcount = matchstr(getline(v:lnum), '^#\+') "defined l:hashcount, even in no match
	" if there's a heading set an equivalent fold start
	if empty(l:hashcount) | return "=" | else | return ">".len(l:hashcount) | endif
endfunction

setlocal foldexpr=HashFold() foldmethod=expr

" Can't see how I could easily exclude comments in code blocks...

