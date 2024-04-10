" vim: fdl=1:

" Maintainer: Joseph Harriott
" Last Change: Mon 18 Oct 2021
  " $vimfiles/vim/ftplugin/firmCommentWholeFold.vim
  " used by
  "   $vimfiles/vim/ftplugin/HashEqualsFolding.vim
  "   $vimfiles/vim/ftplugin/vim.vim

""> turn off or on a fold of commands

" firmly comment out a whole fold
function! FirmComment(c)
  " definitely close the current fold, and select it
  normal! zozckjV
  " firmly comment it out (avoiding empty lines)
  sil! exec 's/^\(.\)/'.a:c.' \1/'
  " get out of visual line
  normal 
  " definitely close the current fold, then delete and restore to get out of visual line
  " normal! zozckjdP
endfunction

" remove firm comments from a whole fold
function! FirmUnComment(c)
  " definitely close the current fold, and select it
  normal! zozckjV
  " firmly uncomment it (suppressing any error messages if there're uncommented lines)
  sil! exec 's/^'.a:c.' //'
  " get out of visual line
  normal 
  " definitely close the current fold, then delete and restore to get out of visual line
  " normal! zozckjdP
endfunction

