" vim: set fdl=1:

" -------------------------
" configurations for neovim
" -------------------------

" $vimfiles/nvim/init.vim
" symlinked by
"  $MSwin10\mb\symlinks.ps1

""> 0 pull in Vim configuration
if has('win32')
  source $HOME\vimfiles\vimrc-Win10-paths.vim  " $vimfiles\vimenter\vimrc-Win10-paths.vim
  source $vimfiles\vimenter\vimrc-Win10.vim
  " set runtimepath^=~\vimfiles " at start
  " set runtimepath+=~\vimfiles\after  " at end
  " source ~\_vimrc  " $MSWin10/mb/_vimrc-AZERTY
endif
" let &packpath = &runtimepath

""> 1 colours
" for accurate colour codes
set termguicolors
" can turn off with :se notgc

if has('unix')
  " let g:Hexokinase_highlighters = ['foregroundfull']
  packadd vim-hexokinase
endif

