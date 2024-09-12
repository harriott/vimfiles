" vim: set fdl=1:

" $vimfiles/test/vimrc.vim

" my testing vimrc
" ----------------
" see  $vfv/enter/vimrc.vim

""> 0 essential: limit Vim's configuration paths
if has('unix')
  if !has('nvim')
    set pp=~/.vimtest,/usr/share/vim/vim91
    set rtp=~/.vimtest,/usr/share/vim/vimfiles,/usr/share/vim/vim91
  endif
else
  if !has('nvim')
    set pp=~/vimtest,C:\Vim\vim91\pack
    set rtp=~/vimtest,C:\Vim\vim91
  endif
endif
" se shm+=I
" se nocp
" redraw

""> 1 paths on Win10
source ~/vimtest/Win10Paths.vim

""> 3 Vim flavour - not nvim
if !has('nvim') | source $vfv/enter/vimrc_example.vim | endif
" - implements syntax highlighting
" - needed for  fzf.vim

""> 3 leader test mapping
nnoremap <leader>l :echo 'you hit leader l'<CR>

""> 4 Vim flavour - all

""> 4 Vim flavour - gVim

