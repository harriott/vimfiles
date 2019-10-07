" Sourced from my Arch Linux installation's ~/.vimrc

let g:mySystem = 'AVT661'
source $HOME/.vim/vimrc-GNULinux.vim
let g:myPDFreader = 'zathura'
let g:disownProcess = '& disown'

" set gfn=DejaVu\ Sans\ Mono\ 10
" set gfn=Droid\ Sans\ Mono\ 10
set gfn=Ubuntu\ Mono\ 10

set linespace=2

" Open PCManFM on directory of current buffer
nmap <F11> :cd %:p:h<CR><bar>:!pcmanfm &<CR><CR>
imap <F11> <Esc><F11>

" loads the matchit plugin if the required features are available
if has('syntax') && has('eval')
  packadd! matchit
endif

colorscheme solarized
set background=light

