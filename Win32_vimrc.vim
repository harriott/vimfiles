" -------------------------------------------------------------
" This is a wrapper vimrc for use on a Win32 system.
" This file should be called from $HOME\_vimrc 
" Joseph Harriott - http://momentary.eu/ - Sun 05 Jun 2016
" --------------------------------------------------------------
" quit if called from Git's vim (adapted for Git-2.8.1-64-bit.exe on Windows 10):
if $VIM == '/usr/share/vim'
  finish
endif

" --------------------------------------------
" Adjusted from gVim for Windows' $VIM/_vimrc:
set nocompatible
" source $VIMRUNTIME/vimrc_example.vim - changed to my adapted version:
source $HOME/vimfiles/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
" but revert Ctrl-A back to number increment:
unmap <C-A>
behave mswin

" ------------------------------------------------------------------?
" not sure what this (from $VIM/_vimrc) is for, but I'm including it:
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
" this function causes a complaint if I source this file...

" ---------------------------------
" More of my preferences for MSWin:

" swapfiles:
if isdirectory($HOME . '/.vimswap') == 0
  :silent !md \%UserProfile\%\\.vimswap
endif

"  Point to my more portable vimrc:
source $HOME/vimfiles/vimrc.vim

" A nicer font for MSWin:
set guifont=Lucida_Console:h9  "better to append size so that it's reported

" where I like to keep my WriteBackups:
let g:WriteBackup_BackupDir = 'D:\Dropbox\Stack\WriteBackup'

"autocmd vimenter * if !argc() | cd E:/ | NERDTree | endif  "open empty vim to NERDTree
autocmd vimenter * if !argc() | cd E:/DropboxFiles/Now/Technos/IT/InterNetworking/Web_Design/DokuWiki/pages | NERDTree | endif  "open empty vim to NERDTree

