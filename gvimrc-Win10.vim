" ----------------------------------------------------------------------
" source this file in ~/.gvimrc like this: source $HOME/.vim/<this file>
" ----------------------------------------------------------------------

" for Solarized:
autocmd VimEnter * set background=light
" and add a mapping incase Solarized has been toggled:
nnoremap <leader>w :highlight ShowTrailingWhitespace ctermbg=Grey guibg=White<cr>
" ( might prefer W so's not to conflict with EasyMotion's \\w )

" move on ot the more portable configuration:
source $HOME/vimfiles/gvimrc.vim

