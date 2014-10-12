" -------------------------------------------------
" This is a wrapper vimrc for use on a Win32 system
" This file should be located at $HOME\_vimrc 
" Joseph Harriott - http://momentary.eu/
" -------------------------------------------------

" don't recall where I got this query from, or what it serves:
if $VIM == 'C:\Program Files\Git\share\vim'
  finish
endif

" --------------------------------------------------------
" stuff pulled directly from gVim for MSWin's $VIM/_vimrc:
" --------------------------------------------------------
set nocompatible  
" source $VIMRUNTIME/vimrc_example.vim - changed to my adapted version:
source $HOME/vimfiles/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
" revert Ctrl-A back to number increment:
unmap <C-A>
behave mswin

" -------------------------?
" not sure what this is for:
set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '"' . $VIMRUNTIME . '\diff"'
      let eq = '""'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction
" -------------------------?

" -----------------------------
" Now my preferences for MSWin:
" -----------------------------

"  Point to my more portable vimrc:
source $HOME/vimfiles/vimrc.vim

" A nicer font for MSWin:
set guifont=Lucida_Console:h9  "better to append size so that it's reported

" where I like to keep my backups:
let g:WriteBackup_BackupDir = 'D:\Dropbox\Stack\WriteBackup'

