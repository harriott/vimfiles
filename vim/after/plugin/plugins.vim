" vim: fdl=2:

" Joseph Harriott - Sun 26 Feb 2023

" $vimfiles/vim/after/plugin/plugins.vim

" ""> csv.vim
" " override  $vimfiles/vim/packs-cp/opt/csv.vim/ftdetect/csv.vim
" autocmd BufRead,BufNewFile *.dat set filetype=

""> vim-devicons
if !has('nvim')
  packadd vim-devicons  " recommended after many others
endif
packadd nerdtree  " $jtCP/Vim/plugins/vim-devicons/issue428.md

""> vim-gitgutter
" $vimfiles/plugin/plugins.vim

"">> toggle
function! GitGutterFocus()
  if g:GGF
    GitGutterDisable
    let g:CSDark = 0
    let g:GGF = 0
  else
    GitGutterEnable
    let g:CSDark = 1  " switch to light theme as Tomorrow dark obscures GitGutter's signs
    let g:GGF = 1
  endif
  call ColorLightDark()
endfunction
noremap <leader>gg :call GitGutterFocus()<cr>

