
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
autocmd BufRead,BufNewFile /tmp/neomutt-* setlocal tw=0
" quit when done:
autocmd BufRead,BufNewFile /tmp/neomutt-* nnoremap <buffer> <F4> :wa<CR>:q<CR>
autocmd BufRead,BufNewFile /tmp/neomutt-* inoremap <buffer> <F4> <Esc>:wa<CR>:q<CR>

" swap out any crap
" -----------------
" (and go back to top):
"  non-breaking whitespaces
autocmd BufRead,BufNewFile /tmp/neomutt-* silent! %s/ / /g | go
"  'private use one'
autocmd BufRead,BufNewFile /tmp/neomutt-* silent! %s//'/g | go
"  'private use two'
autocmd BufRead,BufNewFile /tmp/neomutt-* silent! %s//'/g | go
"  unneeded blanks
autocmd BufRead,BufNewFile /tmp/neomutt-* silent! %s/^> */>/g | go

