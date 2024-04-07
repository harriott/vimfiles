"
" Language: fugitive
" Maintainer: Joseph Harriott
" Last Change: Sun 26 Feb 2023

nnoremap <buffer><leader>gp :Git push<cr>
nnoremap <buffer><leader>gs 4j-<cr>

" <F1> gets remapped by  vim-fugitive  to  :h fugitive
" I prefer to keep my mapping:
nnoremap <buffer><F1> <C-W><C-W>
inoremap <buffer><F1> <Esc><C-W><C-W>
vnoremap <buffer><F1> <Esc><C-W><C-W>

