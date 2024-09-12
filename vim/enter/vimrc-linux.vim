
" $vfv/enter/vimrc-linux.vim
" source'd by  $vfv/enter/vimrc-Arch.vim

if has('nvim')
  set title  " for Alacritty
else
  " first, some general settings
  source $vfv/enter/vimrc_example.vim
  " easier copying to end of line (Y  in  nvim)
  nnoremap <leader>v v$hy
endif

" Include + register in c/d/y/p operations:
set clipboard^=unnamedplus  " se cb, stackoverflow 23946289
" - needed because:
"    Nvim sets nothing
"    Vim sets  autoselect,exclude:cons\|linux  which somehow obviates  unnamedplus
" see CopyQ  settings in  $OSAB/mb-sbMb/build.txt

" let g:netrw_browsex_viewer = 'xdg-open-bda'
" see $HOME/.vim/xdg-open-bda.sh

source $vfv/enter/vimrc.vim  " $vfvrc.vim

" Set keywordprg empty, to make K invoke vim's internal help:
set kp=

" Getting rid of Caps Lock
" ------------------------

" Insert key to turn it off:
"  (useful if there's no keyboard LED for this)
command! CapsLockOff wa <bar> silent !python $vimfiles/XkbLockModifiers.py
nnoremap <Insert> :CapsLockOff <CR>
inoremap <Insert> <Esc> :CapsLockOff <CR>
"  imap <Insert> <Insert>  doesn't work

" allow U to function as normal, but definitely turning off Caps Lock
"  (thus avoiding confusion when I forget it's on)
nnoremap U :CapsLockOff<CR> <bar> U

