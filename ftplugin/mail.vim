" Language:	email
" Maintainer: Joseph Harriott
" Last Change: Sat 20 Jun 2020

" folding by message date
" -----------------------
function! DateFold()
  " if matchstr(getline(v:lnum), 'Date: ') return ">1"
  if getline(v:lnum) =~ '^Date: '
    return ">1"
  else
    return "="
  endif
endfunction

setlocal fdc=1 fde=DateFold() fdl=0 fdm=expr

