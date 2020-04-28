
" Joseph Harriott - http://momentary.eu/
" --------------------------------------
" Shell interaction.
"
" (keep this file in your plugin directory so's it's automatically sourced at startup)

" LanguageTool - for my Scratch files:
nnoremap <leader>lt 3GVG:LanguageToolCheck <CR>

" moving to ALE errors in neomutt temporary files (eg mail)
autocmd BufRead,BufNewFile /tmp/neomutt-* nmap <silent> <C-j> <Plug>(ale_next_wrap)
autocmd BufRead,BufNewFile /tmp/neomutt-* nmap <silent> <C-k> <Plug>(ale_previous_wrap)

" netrw:
let g:netrw_banner = 0
let g:netrw_liststyle = 2
nnoremap <leader>- :Texplore<cr>

" open-browser.vim
" If it looks like URI, Open URI under cursor. Otherwise, Search word under cursor.
nmap <F6> <Plug>(openbrowser-smart-search)
" If it looks like URI, Open selected URI. Otherwise, Search selected word.
vmap <F6> <Plug>(openbrowser-smart-search)

" set working directory to that of the currently loaded file's
nnoremap <leader>d :cd %:p:h<CR>:pwd<CR>

" --------------------
" searching externally
" --------------------
" for CtrlP:
set wildignore+=NTUSER.DAT*,*.lnk
" - helps when in my Win7 %USERPROFILE%
let g:ctrlp_cmd = 'CtrlPMRU'
let g:ctrlp_mruf_max = 500

" Ggrep with the contents of s register:
nnoremap <F3> :call StripStoreCurSel()<CR>:Ggrep -i "<C-R>s" <bar>cw

" for NERDTree:
noremap <C-n> :NERDTreeToggle<CR>
" Open it on buffer's directory:
nnoremap <F10> :cd %:p:h<CR>:NERDTreeCWD<CR>
inoremap <F10> <Esc>:cd %:p:h<CR>:NERDTreeCWD<CR>

