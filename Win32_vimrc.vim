" -------------------------------------------------------------
" This is a wrapper vimrc for use on a Win32 system.
" This file should be called from $HOME\_vimrc
" Joseph Harriott - http://momentary.eu/ - Thu 15 Sep 2016
" --------------------------------------------------------------

" quit if called from Git's vim (adapted for Git-2.8.1-64-bit.exe on Windows 10):
if $VIM == '/usr/share/vim'
  finish
endif

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

"  Point to my source-able vimrc:
source $HOME/vimfiles/Win10-vimrc.vim

" Useful when making adjustements to configurations:
nnoremap <S-F6> :source ~/vimfiles/Win10-vimrc.vim <bar> source ~/vimfiles/gvimrc.vim <bar> nohlsearch<CR>

