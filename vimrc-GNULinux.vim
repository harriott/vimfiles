" Sourced, evenutally, from my GNU/Linux distribition's ~/.vimrc
" To investigate vim installation, begin here: /etc/vim/vimrc

" Source my more portably located vimrc:
" first, some general settings
source $HOME/.vim/vimrc_example.vim

" switch modelines back on - overriding /usr/share/vim/vim73/debian.vim
" set modeline

" link unnamed register to X-Windows clipboard:
set clipboard=unnamedplus

" let g:netrw_browsex_viewer = "xdg-open-bda"
" see $HOME/.vim/xdg-open-bda.sh

" Map the Insert key to turn off Caps Lock state:
command! CapsLockOff wa <bar> silent !python $HOME/.vim/XkbLockModifiers.py
nnoremap <Insert> :CapsLockOff <CR>
inoremap <Insert> <Esc> :CapsLockOff <CR>
" (useful if there's no keyboard LED for this)

source $HOME/.vim/vimrc.vim

" Set keywordprg empty, to make K invoke vim's internal help:
set kp=

