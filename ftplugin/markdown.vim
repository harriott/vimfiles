" Couple of adjustments.
" Language:	markdown
" Maintainer: Joseph Harriott
" Last Change: Fri 21 Aug 2020
" This file should be in your vimfiles\ftplugin folder.
" VIMRUNTIME/filetype.vim determines which files are automatically detected as markdown
" for folding to work, you'll need this modeling:  vim: fdm=expr:

setlocal expandtab tw=0

" ALE
let b:ale_enabled = 0

" demote a selected part
vnoremap <buffer><leader>> :s/^#/##/<CR>
" promote a selected part
vnoremap <buffer><leader>< :s/^#//<CR>

" wrap the inner word under cursor with backticks
nnoremap <buffer> <leader>` viwc``<Esc>P

" wrap a selection with backticks
vnoremap <leader>` c``<Esc>P

" folding by header marks
" -----------------------
" (based on http://stackoverflow.com/questions/3828606/vim-markdown-folding)
function! MdF()
	let l:hashcount = matchstr(getline(v:lnum), '^#\+') "defined l:hashcount, even in no match
	" if there's a heading set an equivalent fold start
	if empty(l:hashcount) | return "=" | else | return ">".len(l:hashcount) | endif
endfunction

setlocal fde=MdF() fdl=0 fdc=1

