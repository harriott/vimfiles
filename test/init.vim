" vim: fdl=1:

" nvim -u $vimfiles/test/init.vim <file_to_test>

""> 0 nvim
if v:lang =~ 'fr'
  let mapleader = '²'
  source $vfv/enter/vimrc-AZERTY.vim
else
  " Easier jump to last position in newly opened file:
  nnoremap gl g`"
  " (`"  is easy on AZERTY)
endif

" ""> 1 pull in vimrc
" if has('win64')
"   source $HOME\vimfiles\Win10Paths.vim  " $vimfiles\vim\enter\Win10Paths.vim
" else
"   source $vfv/enter/vimrc-Arch.vim
" endif

""> 2 colors
let g:useSTW = 0  " for  $vfv/plugin/packsFull.vim

" "">> colorscheme
" if $myDrA | colo jellybeans | endif

""> 3 block packs, plugin (before lua)
" these settings are only respected in the respective scripts if they're set here before requiring *.lua
" let g:block_plugin_packs = 1  " $vfv/plugin/packs.vim
let g:block_plugin_plugin = 1  " $vfv/plugin/plugin.vim
let g:block_after_plugin_packs = 1  " $vfv/after/plugin/packs.vim

" ""> 4 pull in lua test configs
" lua require('test')
" " - $vfn/lua/test.lua

" ""> 4 pull in lua full configs
" lua require('init')
" " - $vfn/lua/init.lua

""> 5 pull in the rest
" se pp+=/home/jo/.config/nvim  " $nvim

" packadd vim-buffing-wheel

" let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
" packadd quick-scope

