" -------------------------------------------------------------
" This is a wrapper vimrc for use on a MS Windows 10 system.
" Joseph Harriott - http://momentary.eu/ - Thu 15 Sep 2016
" --------------------------------------------------------------

" --------------------------------------------
" Adjusted from gVim for Windows' $VIM/_vimrc:
" source $VIMRUNTIME/vimrc_example.vim - changed to my adapted version:
source $HOME/vimfiles/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
" but revert Ctrl-A back to number increment:
unmap <C-A>

" ---------------------------------
" More of my preferences for MSWin:

" swapfiles:
if isdirectory($HOME . '/.vimswap') == 0
  :silent !md \%UserProfile\%\\.vimswap
endif

"  Point to my more portable vimrc:
source $HOME/vimfiles/plugin.vim
source $HOME/vimfiles/vimrc.vim

" A nicer font for MSWin:
set guifont=Lucida_Console:h9  "better to append size so that it's reported

" where I like to keep my WriteBackups:
let g:WriteBackup_BackupDir = 'D:\Dropbox\Stack\WriteBackup'

