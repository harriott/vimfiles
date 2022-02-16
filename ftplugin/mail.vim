" Language:	email
" Maintainer: Joseph Harriott
" Last Change: Wed 16 Feb 2022

" for some reason  :set ft mail  is required

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

setlocal fdc=1 fde=DateFold() fdl=0 fdm=expr

