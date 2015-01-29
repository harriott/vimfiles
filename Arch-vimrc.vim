" Sourced from my Arch Linux installation's ~/.vimrc
" To investigate Debian's vim installation, begin here: /etc/vim/vimrc

" Source my more portably located vimrc:
source $HOME/.vim/vimrc.vim
source $HOME/.vim/debian.vim

set gfn=Ubuntu\ Mono\ 12

" Set keywordprg empty, to make K invoke vim's internal help:
set kp=

let g:WriteBackup_BackupDir = '/mnt/WD2000JD/Dr_Stack/WriteBackup/'
