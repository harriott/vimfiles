" vim: fdl=1:

" nvim -u $vimfiles/test/init.vim $vimfiles/digraphs.digs
" nvim -u $vimfiles/test/init.vim $vimfiles/test/scratch.vim
" nvim -u $vimfiles/test/init.vim $lazy/keytrail.nvim/docs/test.yaml

set ch=4  " cmdheight (clears) bigger, to see messages
echo '$vimfiles/test/init.vim'

let g:sourced_test_init_vim = 1

""> 0 nvim basics
if v:lang =~ 'fr'
  let mapleader = '²'
  source $vfv/enter/vimrc-AZERTY.vim
else
  " Easier jump to last position in newly opened file:
  nnoremap gl g`"
  " (`"  is easy on AZERTY)
endif

""> 1 vimrc basics
if has('win64')
  source $HOME\vimfiles\Win10Paths.vim  " $vfv/enter/Win10Paths.vim
else
  source $vfv/enter/vimrc-Arch.vim
endif

""> 2 colors
let g:useSTW = 0  " for  $vfv/plugin/packsFull.vim

" "">> colorscheme
" if $myDrA | colo jellybeans | endif

""> 3 block packs, plugin (before lua)
" g:variables  are only effective if they're set before requiring *.lua

"">> 1 optionally block plugin
let g:block_plugin_plugin = 1  " $vfv/plugin/plugin.vim

"">> 2 packs already blocked until good packpath
" se pp+=$nvim  doesn't work here
"   so  $vfv/plugin/packs.vim  &  $vfv/after/plugin/packs.vim
"    are blocked with  g:sourced_test_init_vim

""> 4 pull in lua test configs
lua require('test')
" - $vfn/lua/test.lua
se pp+=$nvim  " finally works here

""> 5 packsAll
" source $vfv/plugin/packsAll.vim " all of them

"">> individually
" let g:context_enabled = 0 | packadd context.vim
" let g:qs_highlight_on_keys = ['f', 'F', 't', 'T'] | packadd quick-scope
" packadd mru
" packadd vim-buffing-wheel
" packadd vim-characterize
" packadd vim-startify

