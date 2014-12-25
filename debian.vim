" ---------------------------
" My debian vimrc adjustments
" ---------------------------
" source $VIMRUNTIME/vimrc_example.vim - changed to my adapted version:
source $HOME/.vim/vimrc_example.vim

" switch modelines back on - overriding /usr/share/vim/vim73/debian.vim
set modeline

" link unnamed register to X-Windows clipboard:
set clipboard=unnamedplus

let g:netrw_browsex_viewer = "xdg-open-bda"
" see $HOME/.vim/xdg-open-bda.sh

" Map the Insert key to turn off Caps Lock state:
nnoremap <Insert> :wa<Bar>!python -c 'from ctypes import *; X11 = cdll.LoadLibrary("libX11.so.6"); display = X11.XOpenDisplay(None); X11.XkbLockModifiers(display, c_uint(0x0100), c_uint(2), c_uint(0)); X11.XCloseDisplay(display)'
