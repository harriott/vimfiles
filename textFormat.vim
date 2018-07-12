
" Joseph Harriott - http://momentary.eu/
" ----------------------------------------------------------
" source this from vimrc

"----------------
" Text Formatting
" ---------------
set encoding=utf-8
set shiftwidth=4
set tabstop=4
set tw=99

nnoremap <leader>a :Tabularize/-/r1c1l0
" this produces GFM-style tables:
let g:table_mode_corner='|'

" Convert url parenthesis, é, è, and Î
" ------------------------------------
" 5 here means convert to % code (my general preference):
nnoremap <leader>5 :s/(/%28/e <bar> s/)/%29/e
	\ <bar> s/é/%C3%A9/eg <bar> s/è/%C3%A8/eg <bar> s/Î/%C3%8E/eg
	\ <bar> nohlsearch<CR>
" 9 here means convert back to parentheses (eg for a quoted url in tex):
nnoremap <leader>9 :s/%28/(/e <bar> s/%29/)/e
	\ <bar> s/%C3%A9/é/eg <bar> s/%C3%A8/è/eg <bar> s/%C3%8E/Î/eg
	\ <bar> nohlsearch<CR>

" lesser indentation of vimscript continuation line:
let g:vim_indent_cont = &sw

" Remove all square bracketed text
nnoremap <leader>[ :s/\m\[.\{-}]//g<CR>

" Underline using dashes automatically
" ------------------------------------
" (http://vim.wikia.com/wiki/Underline_using_dashes_automatically)
" eg :Underline ~+-	 gives underlining like ~+-~+-~+-~+-~+-~+-
function! s:Underline(chars)
  let chars = empty(a:chars) ? '-' : a:chars
  let nr_columns = virtcol('$') - 1
  let uline = repeat(chars, (nr_columns / len(chars)) + 1)
  put =strpart(uline, 0, nr_columns)
endfunction
command! -nargs=? Underline call s:Underline(<q-args>)
" map:
nnoremap <leader>u :Underline

