" Sourced, evenutally, from my GNU/Linux distribition's ~/.vimrc
" To investigate vim installation, begin here: /etc/vim/vimrc

if !has('nvim')
  " first, some general settings
  source $HOME/.vim/vimrc_example.vim
endif

" link unnamed register to X-Windows clipboard:
set clipboard=unnamedplus

" let g:netrw_browsex_viewer = "xdg-open-bda"
" see $HOME/.vim/xdg-open-bda.sh

" Map the Insert key to turn off Caps Lock state:
" (useful if there's no keyboard LED for this)
command! CapsLockOff wa <bar> silent !python $HOME/.vim/XkbLockModifiers.py
nnoremap <Insert> :CapsLockOff <CR>
inoremap <Insert> <Esc> :CapsLockOff <CR>
"  imap <Insert> <Insert>  doesn't work

source $HOME/.vim/vimrc.vim

" Set keywordprg empty, to make K invoke vim's internal help:
set kp=

" for my  plugin/grabOutputs.vim
let g:vimfiles=$HOME.'/.vim'

