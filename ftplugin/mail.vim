" Language:	email
" Maintainer: Joseph Harriott
" Last Change: Sat 20 Jun 2020

" for some reason  :set ft mail  is required

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

