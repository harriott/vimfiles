" Language:	fugitive
" Maintainer: Joseph Harriott
" Last Change: Sun 19 Apr 2020

" This disables fugitive's X mapping, which often gets me into trouble.
" (eg when applied to the top line of a fugitive filetype it seizes gVim)
unmap <buffer> X
" (bizarrely it doesn't disable the X mapping made by vim-buffing-wheel)

nnoremap <leader>gp :Git push<cr>

