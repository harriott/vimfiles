" ----------------------------------------------
" Joseph Harriott - Thu 18 Feb 2021
" this should be sourced first by an entry point
" ----------------------------------------------

" Some recommended defaults, with adjustments:
source $VIMRUNTIME/vimrc_example.vim
" revert a few things:
set nobackup
set noundofile
set scrolloff=0
autocmd FileType text setlocal textwidth=99
" autocmd FileType fugitive unmap! X
unmap Q  " $VIMRUNTIME/defaults.vim

