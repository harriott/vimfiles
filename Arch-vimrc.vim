" Sourced from my Arch Linux installation's ~/.vimrc

source $HOME/.vim/GNULinux-vimrc.vim

set gfn=Ubuntu\ Mono\ 12

" Useful when making adjustements to configurations:
nnoremap <S-F6> :source ~/.vim/Arch-vimrc.vim <bar> source ~/.vim/gvimrc.vim <bar> nohlsearch<CR>

let g:WriteBackup_BackupDir = '/mnt/WD2000JD/Dr_Stack/WriteBackup/'
