" vim: fdl=2:

" Joseph Harriott - Mon 25 Sep 2023

" $vimfiles/vimrc_example.vim  sourced by
"  $vimfiles/vimrc-GNULinux.vim
"  $vimfiles\vimrc-Win10.vim

""> 0 some recommended defaults, with adjustments
source $VIMRUNTIME/vimrc_example.vim
" sources  $VIMRUNTIME/defaults.vim  which sets  filetype plugin indent on  then  syntax on

""> 1 revert a few things
set nobackup
set noundofile
set scrolloff=0
autocmd FileType text setlocal textwidth=0
"
"">> Q
" as suggested in $VIMRUNTIME/defaults.vim
unmap Q

