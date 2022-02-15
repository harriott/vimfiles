" vim: fdl=2:

" Joseph Harriott - Tue 15 Feb 2022

" $vimfiles/after/plugin/plugins.vim

""> vim-devicons
packadd vim-devicons
packadd nerdtree

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

