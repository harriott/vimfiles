
" Language: email
" Maintainer: Joseph Harriott
" Last Change: Wed 16 Feb 2022

" this is supplementary to  $VIMRUNTIME/ftplugin/mail.vim
" surprisingly, $VIMRUNTIME/filetype.vim  doesn't detect  *.mail  as  mail
"  so I do it in  $vimfiles/filetype.vim

setlocal fdc=1 fde=DateFold() fdl=0 fdm=expr
" textwidth is set in  $vimfiles/after/ftplugin/mail.vim

" turn off ALE - use \aa to toggle
let b:ale_enabled = 0

" folding by message date
" -----------------------
function! DateFold()
  if getline(v:lnum) =~ '^Date: '
    return ">1"
  else
    return "="
  endif
endfunction

