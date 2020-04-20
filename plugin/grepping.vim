
" Joseph Harriott - http://momentary.eu/
" --------------------------------------
" Repeat the current search for the whole Git repository.
"
" (keep this file in your plugin directory so's it's automatically sourced at startup)
" ------------------------------------------------------------------------------------

" Ggrep with the contents of s register:
nnoremap <F3> :call StripStoreCurSel()<CR>:Ggrep -i "<C-R>s" <bar>cw

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

" cd to file's and vimgrep for last search
nnoremap <leader>vg :call SearchSelection()<CR>
function! SearchSelection()
  cd %:p:h
  call StripStoreCurSel()
  execute 'silent! vimgrep #'.@s.'#j *.{md,txt,vim} **/*.{md,txt,vim}'
  copen
endfunction

