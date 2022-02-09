" vim: fdl=2:
" ----------------------------------------------
" Joseph Harriott - Thu 18 Feb 2021
" this should be sourced first by an entry point
" ----------------------------------------------

""> 0 some recommended defaults, with adjustments
source $VIMRUNTIME/vimrc_example.vim

""> 1 revert a few things
set nobackup
set noundofile
set scrolloff=0
autocmd FileType text setlocal textwidth=0
"
"">> Q
" as suggested in $VIMRUNTIME/defaults.vim
unmap Q

