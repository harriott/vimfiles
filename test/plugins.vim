" vim: se fdl=1:

" $vimfiles/test/plugins.vim

" configurations that might be tested

""> 0 check that this file's been sourced
let g:plugins_vimtest = 1

""> 1 packages
" mostly reduced from  $vimfiles/vim/plugin/plugins.vim

" "">> ALE
" packadd ale

" "">> csv.vim
" let g:csv_hiGroup = 'DiffChange'  " good in default colourscheme

"">> fzf.vim
nnoremap <leader><leader> :Lines<CR>
if has('win32') | packadd fzf | endif
packadd fzf.vim

" "">> vim-illuminate
" packadd vim-illuminate

" "">> ingo-library
" packadd vim-ingo-library

" "">> vim-airline
" packadd vim-airline

" "">> vim-ShowTrailingWhitespace
" packadd vim-ShowTrailingWhitespace

" "">> vim-startify
" packadd vim-startify

" "">> vim-colors-tomorrow
" colorscheme tomorrow

" "">> VimTeX
" packadd vimtex

