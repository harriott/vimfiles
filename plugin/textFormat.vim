" vim: set et:

" Joseph Harriott - http://momentary.eu/
" --------------------------------------------------------
" (keep this file in your plugin directory so's it's automatically sourced at startup)

set shiftwidth=4
set tabstop=4
set tw=99

" Clear left & right double quotes (as these aren't mapped to a keyboard key):
nnoremap <leader>2 :%s/“/"/g<bar>:%s/”/"/g<cr>

" lesser indentation of vimscript continuation line:
let g:vim_indent_cont = &sw

" Remove all square bracketed text
nnoremap <leader>[ :s/\m\[.\{-}]//g<CR>

" Convert url parenthesis, and various diacritics to percent code
" ---------------------------------------------------------------
" to switch the order of these substitutions, use  s#/\(.\{-}\)/\(.\{-}\)/#/\2/\1/#g
" 5 here means convert to % code (my general preference):
nnoremap <leader>5 :call UnicodePercent()<cr>
function! UnicodePercent()
    :keepp s/'/%27/eg
    :keepp s/(/%28/e
    :keepp s/)/%29/e
    :keepp s/Â/%C3%82/eg
    :keepp s/à/%C3%A0/eg
    :keepp s/â/%C3%A2/eg
    :keepp s/ä/%C3%A4/eg
    :keepp s/ã/%C3%A3/eg
    :keepp s/ā/%C4%81/eg
    :keepp s/º/%C2%BA/eg
    :keepp s/Ø/%C3%98/eg
    :keepp s/ç/%C3%A7/eg
    :keepp s/è/%C3%A8/eg
    :keepp s/é/%C3%A9/eg
    :keepp s/ê/%C3%AA/eg
    :keepp s/Î/%C3%8E/eg
    :keepp s/î/%C3%AE/eg
    :keepp s/ó/%C3%B3/eg
    :keepp s/ô/%C3%B4/eg
    :keepp s/ö/%C3%B6/eg
    :keepp s/û/%C3%BB/eg
    :keepp s/ü/%C3%BC/eg
    :keepp s/ı/%C4%B1/eg
    :keepp s/Ł/%C5%81/eg
    :keepp s/ń/%C5%84/eg
    :keepp s/œ/%C5%93/eg
    :keepp s/ū/%C5%AB/eg
    :keepp s/–/%E2%80%93/eg
    :keepp s/—/%E2%80%94/eg
endfunction
" 9 here means convert back to parentheses (eg for a quoted url in tex):
nnoremap <leader>9 :call PercentUnicode()<cr>
function! PercentUnicode()
    :keepp s/%27/'/e
    :keepp s/%28/(/e
    :keepp s/%29/)/e
    :keepp s/%C3%82/Â/eg
    :keepp s/%C3%A0/à/eg
    :keepp s/%C3%A2/â/eg
    :keepp s/%C3%A4/ä/eg
    :keepp s/%C3%A3/ã/eg
    :keepp s/%C4%81/ā/eg
    :keepp s/%C2%BA/º/eg
    :keepp s/%C3%98/Ø/eg
    :keepp s/%C3%A7/ç/eg
    :keepp s/%C3%A8/è/eg
    :keepp s/%C3%A9/é/eg
    :keepp s/%C3%AA/ê/eg
    :keepp s/%C3%8E/Î/eg
    :keepp s/%C3%AE/î/eg
    :keepp s/%C3%B3/ó/eg
    :keepp s/%C3%B4/ô/eg
    :keepp s/%C3%B6/ö/eg
    :keepp s/%C3%BB/û/eg
    :keepp s/%C3%BC/ü/eg
    :keepp s/%C4%B1/ı/eg
    :keepp s/%C5%81/Ł/eg
    :keepp s/%C5%84/ń/eg
    :keepp s/%C5%93/œ/eg
    :keepp s/%C5%AB/ū/eg
    :keepp s/%E2%80%93/–/eg
    :keepp s/%E2%80%94/—/eg
endfunction
" if you need to work on a range, use  :<selection>call PercentUnicode()

