" vim: fdl=1:

" nvim -u $vimfiles/test/configs/init.vim <file_to_test>
"  (unneccessarily symlinked by  $OSAB/bs-symlinks/jo-2-whenWM-0.sh)

""> 1 pull in Vim configuration
if has('win64')
  source $HOME\vimfiles\Win10Paths.vim  " $vimfiles\vim\enter\Win10Paths.vim
endif

""> 2 pull in lua configs
lua require('test')
" - $vimfiles/nvim/lua/test.lua

