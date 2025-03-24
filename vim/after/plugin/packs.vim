" vim: fdl=2:

" Joseph Harriott - Thu 06 Mar 2025

" $vfv/after/plugin/packs.vim

if exists('g:test') | finish | endif

" ""> csv.vim
" " override  $vfvp/packs-cp/opt/csv.vim/ftdetect/csv.vim
" autocmd BufRead,BufNewFile *.dat set filetype=

""> layout - NERDtree & vim-devicons
" $vfvp/packs-cp-all/opt/vim-devicons/README.md
if !has('nvim')
  packadd vim-devicons  " recommended after many others
endif
packadd nerdtree  " $jtCP/Vim/plugins/vim-devicons/issue428.md

""> encoding - vim-gitgutter
" $vfv/plugin/packsVimFull.vim

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

