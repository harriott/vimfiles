" -------------------------------------------------------------
" This is a wrapper vimrc for use on a MS Windows 10 system.
" Joseph Harriott - http://momentary.eu/ - Wed 20 Jun 2018
" this should be sourced by  C:\Users\jnbh\_vimrc
" --------------------------------------------------------------

" quit if called from Git's vim (adapted for Git-2.8.1-64-bit.exe on Windows 10):
if $VIM == '/usr/share/vim'
  finish
endif

" --------------------------------------------
" Some recommended defaults, with adjustments:
source $VIMRUNTIME/vimrc_example.vim
" revert a few things:
set nobackup
set noundofile
set scrolloff=0
autocmd FileType text setlocal textwidth=99

source $VIMRUNTIME/mswin.vim
" but revert Ctrl-A back to number increment:
unmap <C-A>
" and Ctrl-F back to move forward:
unmap <C-F>

" ---------------------------------
" More of my preferences for MSWin:

" undofiles:
if isdirectory($HOME . '/.vimundo') == 0
  :silent !md \%UserProfile\%\\.vimundo
endif

" swapfiles:
if isdirectory($HOME . '/.vimswap') == 0
  :silent !md \%UserProfile\%\\.vimswap
endif

"  Point to my more portable vimrc:
source $HOME/vimfiles/plugin.vim
source $HOME/vimfiles/vimrc.vim

" A nicer font for MSWin:
set guifont=Lucida_Console:h9  "better to append size so that it's reported
set linespace=4

" switch off shell.vim's full screen toggle:
let g:shell_mappings_enabled = 0
inoremap <F6> <C-o>:Open<CR>
nnoremap <F6> :Open<CR>

" Useful when making adjustements to configurations:
nnoremap <S-F6> :source ~/vimfiles/vimrc-Win10.vim <bar> source ~/vimfiles/gvimrc.vim <bar> nohlsearch<CR>

" where I like to keep my WriteBackups:
let g:WriteBackup_BackupDir = 'D:\Dropbox\Stack\WriteBackup'

