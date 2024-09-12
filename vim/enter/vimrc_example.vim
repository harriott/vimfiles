" vim: fdl=2:

" Joseph Harriott - Thu 04 Jul 2024

" $vfv/enter/vimrc_example.vim  sourced by
"  $vfv/enter/vimrc-GNULinux.vim
"  $vfvrc-Win10.vim  but not for  nvim
"  something herein gets leader mappings working

""> 0 some recommended defaults, with adjustments
source $VIMRUNTIME/vimrc_example.vim
" sources  $VIMRUNTIME/defaults.vim
"  which sets  filetype plugin indent on  then  syntax on, and command  :DiffOrig

""> 1 revert a few things
set nobackup
set noundofile
set scrolloff=0
autocmd FileType text setlocal textwidth=0
"
"">> Q
" as suggested in $VIMRUNTIME/defaults.vim
unmap Q

