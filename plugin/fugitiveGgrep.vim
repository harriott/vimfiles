
" Joseph Harriott - http://momentary.eu/
" --------------------------------------
" repeat the current search for the whole Git repository

" Ggrep with the contents of s register:
nnoremap <F9> :CSinS<CR>:Ggrep -i "<C-R>s" <bar>cw

" Strip the current selection & store it in the l then s register:
function! StripStoreCurSel()
  let lastvimsearch = getreg('/')
  " remove the '\V' (very nomagic) prefix, if it's there:
  let @l = substitute(lastvimsearch, "^\\\\V", "", "")
  " convert '\<lastvimsearch\>' too (:s#\(^\\<\|\\>$\)##g):
  let @s = substitute(@l, "\\(^\\\\<\\|\\\\>$\\)", "", "g")
endfunction
command! -nargs=? CSinS call StripStoreCurSel()

