" Sourced from my Arch Linux installation's ~/.vimrc

source $HOME/.vim/vimrc-GNULinux.vim

" Font stuff
" ----------
" set gfn=DejaVu\ Sans\ Mono\ 10
" set gfn=Droid\ Sans\ Mono\ 10
set gfn=Ubuntu\ Mono\ 10

set linespace=2

" Open PCManFM on directory of current buffer
nmap <F11> :cd %:p:h<CR> <bar> :!pcmanfm &<CR><CR>
imap <F11> <Esc><F11>

