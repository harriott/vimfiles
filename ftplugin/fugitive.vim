" Language:	fugitive
" Maintainer: Joseph Harriott
" Last Change: Sun 19 Apr 2020

" This disables fugitive's X mapping, which often gets me into trouble.
" (eg when applied to the top line of a fugitive filetype it seizes gVim)
unmap <buffer> X
" (bizarrely it doesn't disable the X mapping made by vim-buffing-wheel)

nnoremap <buffer><leader>gp :Git push<cr>
nnoremap <buffer><leader>gs 4j-<cr>

" <F1> gets remapped by  vim-fugitive  to  :h fugitive
" I prefer to keep my mapping:
nnoremap <buffer><F1> <C-W><C-W>
inoremap <buffer><F1> <Esc><C-W><C-W>
vnoremap <buffer><F1> <Esc><C-W><C-W>

