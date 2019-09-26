
" Joseph Harriott - http://momentary.eu/
" --------------------------------------
" Repeat the current search for the whole Git repository.
"
" (keep this file in your plugin directory so's it's automatically sourced at startup)
" ------------------------------------------------------------------------------------

" Ggrep with the contents of s register:
nnoremap <F9> :CSinS<CR>:Ggrep -i "<C-R>s" <bar>cw

" Strip the current selection & store it in the l then s register:
function! StripStoreCurSel()
  let lastvimsearch = getreg('/')
  " remove the '\V' (very nomagic) prefix, if it's there:
  let @l = substitute(lastvimsearch, "^\\\\V", "", "")
  " remove any leading hyphens that somehow cause chaos in Ggrep:
  let @h = substitute(@l, "^-\\+", "", "")
  " convert '\<lastvimsearch\>' too (:s#\(^\\<\|\\>$\)##g):
  let @s = substitute(@h, "\\(^\\\\<\\|\\\\>$\\)", "", "g")
endfunction
command! -nargs=? CSinS call StripStoreCurSel()

" cd to file's and vimgrep for last search
noremap <C-F9> :cd %:p:h<CR> :CSinS<CR> :vimgrep #<c-r>s#j **/*.md **/*.txt <bar> cw <cr>
