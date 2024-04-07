
" $vimfiles/vimrc-GNULinux.vim  source'd from my  $vimfiles/vimrc-Arch.vim

if has('nvim')
  set title  " for Alacritty
else
  " first, some general settings
  source $HOME/.vim/vimenter/vimrc_example.vim  " $vimfiles/vimrc_example.vim
endif

" link unnamed register to X-Windows clipboard:
set clipboard=unnamedplus

" let g:netrw_browsex_viewer = 'xdg-open-bda'
" see $HOME/.vim/xdg-open-bda.sh

source $HOME/.vim/vimenter/vimrc.vim  " $vimfiles/vimrc.vim

" Set keywordprg empty, to make K invoke vim's internal help:
set kp=

" Getting rid of Caps Lock
" ------------------------

" Insert key to turn it off:
"  (useful if there's no keyboard LED for this)
command! CapsLockOff wa <bar> silent !python $HOME/.vim/XkbLockModifiers.py
nnoremap <Insert> :CapsLockOff <CR>
inoremap <Insert> <Esc> :CapsLockOff <CR>
"  imap <Insert> <Insert>  doesn't work

" allow U to function as normal, but definitely turning off Caps Lock
"  (thus avoiding confusion when I forget it's on)
nnoremap U :CapsLockOff<CR> <bar> U

