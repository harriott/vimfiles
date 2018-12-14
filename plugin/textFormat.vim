" vim: set et:

" Joseph Harriott - http://momentary.eu/
" ----------------------------------------------------------
" keep this file in your plugin directory so's it's automatically sourced at startup

"----------------
" Text Formatting
" ---------------
set shiftwidth=4
set tabstop=4
set tw=99

nnoremap <leader>a :Tabularize/-/r1c1l0
" this produces GFM-style tables:
let g:table_mode_corner='|'

" Convert url parenthesis, º, Ø, è and é and ê, Î and î, ó and ô
" --------------------------------------------------------------
"   \ <bar> nohlsearch<CR> at end of these doesn't seem necessary
" 5 here means convert to % code (my general preference):
nnoremap <leader>5 :s/(/%28/e <bar> s/)/%29/e
    \ <bar> s/º/%C2%BA/eg
    \ <bar> s/Ø/%C3%98/eg
    \ <bar> s/ç/%C3%A7/eg
    \ <bar> s/è/%C3%A8/eg <bar> s/é/%C3%A9/eg <bar> s/ê/%C3%AA/eg
    \ <bar> s/Î/%C3%8E/eg <bar> s/î/%C3%AE/eg
    \ <bar> s/ó/%C3%B3/eg <bar> s/ô/%C3%B4/eg <bar> s/ö/%C3%B6/eg<CR>
" 9 here means convert back to parentheses (eg for a quoted url in tex):
nnoremap <leader>9 :s/%28/(/e <bar> s/%29/)/e
    \ <bar> s/%C2%BA/º/eg
    \ <bar> s/%C3%98/Ø/eg
    \ <bar> s/%C3%A7/ç/eg
    \ <bar> s/%C3%A8/è/eg <bar> s/%C3%A9/é/eg <bar> s/%C3%AA/ê/eg
    \ <bar> s/%C3%8E/Î/eg <bar> s/%C3%AE/î/eg
    \ <bar> s/%C3%B3/ó/eg <bar> s/%C3%B4/ô/eg <bar> s/%C3%B6/ö/eg<CR>

" lesser indentation of vimscript continuation line:
let g:vim_indent_cont = &sw

" Remove all square bracketed text
nnoremap <leader>[ :s/\m\[.\{-}]//g<CR>

" Underline using dashes automatically
" ------------------------------------
" (http://vim.wikia.com/wiki/Underline_using_dashes_automatically)
" eg :Underline ~+-  gives underlining like ~+-~+-~+-~+-~+-~+-
function! s:Underline(chars)
  let chars = empty(a:chars) ? '-' : a:chars
  let nr_columns = virtcol('$') - 1
  let uline = repeat(chars, (nr_columns / len(chars)) + 1)
  put =strpart(uline, 0, nr_columns)
endfunction
command! -nargs=? Underline call s:Underline(<q-args>)
" map:
nnoremap <leader>u :Underline

