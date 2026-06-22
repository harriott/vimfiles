" vim: fdl=1:

" nvim -u $vimfiles/test/init.vim <file_to_test>
"  (unneccessarily symlinked by  $OSAB/nodes-set/jo-2-whenWM-0.sh)

let g:test = 1
" - blocks these:
"    $vfv/plugin/packs.vim
"    $vfv/after/plugin/packs.vim
"    $vfv/after/plugin/plugin.vim
let g:useSTW = 0

""> 1 pull in Vim configuration
if has('win64')
  source $HOME\vimfiles\Win10Paths.vim  " $vimfiles\vim\enter\Win10Paths.vim
else
  source $vfv/enter/vimrc-Arch.vim
endif

""> 2 pull in lua configs
lua require('test')
" - $vfn/lua/test.lua

" ""> 3 packs 0 packpath
se pp+=/home/jo/.config/nvim

""> 3 packs 1 vim-buffing-wheel
packadd vim-buffing-wheel

