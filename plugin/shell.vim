
" Joseph Harriott - http://momentary.eu/
" --------------------------------------
" shell interaction

" get filepath into register f:
nnoremap <leader>f :let@f=@%<CR>

" set working directory to that of the currently loaded file's:
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

" set pastetoggle=<S-F3>

" netrw:
let g:netrw_banner = 0
let g:netrw_liststyle = 2
nnoremap <leader>- :Texplore<cr>

" open-browser.vim
" If it looks like URI, Open URI under cursor. Otherwise, Search word under cursor.
nmap <F6> <Plug>(openbrowser-smart-search)
" If it looks like URI, Open selected URI. Otherwise, Search selected word.
vmap <F6> <Plug>(openbrowser-smart-search)

