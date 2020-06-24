
" Joseph Harriott - Thu 23 Apr 2020
" ---------------------------------

" --------------------
" --------------------
" mutt file treatments
" --------------------
" --------------------

" required for muttrc-gmx (see Dropbox/JH/Now/Technos/IT/Cross-platform/Vim/muttrc-123)
autocmd BufNewFile,BufRead muttrc-* setlocal filetype=neomuttrc

" ---------------------------------
" neomutt temporary files (eg mail)
" ---------------------------------
autocmd BufRead,BufNewFile ~/.cache/mutt/tmp/neomutt-* setlocal tw=0
" quit when done:
function! BackupQuit()
  wa
  " precautionary save, incase something goes wrong with the send:
  exec 'sav' $HOME.'/.cache/mutt/sends/'.strftime('%Y-%m-%d-%H:%M:%S').'.txt'
  q
endfunction
autocmd BufRead,BufNewFile ~/.cache/mutt/tmp/neomutt-* nnoremap <buffer> <F4> :call BackupQuit()<CR>
autocmd BufRead,BufNewFile ~/.cache/mutt/tmp/neomutt-* inoremap <buffer> <F4> <Esc>:call BackupQuit()<CR>

" swap out any crap
" -----------------
" (and go back to top):
"  next line
autocmd BufRead,BufNewFile ~/.cache/mutt/tmp/neomutt-* silent! %s///g | go
"  non-breaking whitespaces
autocmd BufRead,BufNewFile ~/.cache/mutt/tmp/neomutt-* silent! %s/ / /g | go
"  'private use one'
autocmd BufRead,BufNewFile ~/.cache/mutt/tmp/neomutt-* silent! %s//'/g | go
"  'private use two'
autocmd BufRead,BufNewFile ~/.cache/mutt/tmp/neomutt-* silent! %s//'/g | go
"  unneeded blanks
autocmd BufRead,BufNewFile ~/.cache/mutt/tmp/neomutt-* silent! %s/^> */>/g | go

