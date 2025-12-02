" vim: set fdl=1:

" Language: sql
" Maintainer: Joseph Harriott - http://harriott.github.io
" Last Change: Tue 11 Nov 2025

" $vfv/ftplugin/sql.vim

setlocal fdc=1 fde=SqlFold() fdm=expr

""> fold up blocks
function! SqlFold()
  let j = getline(v:lnum)
  if !empty(matchstr(j, '^CREATE \|^COMMIT;'))
    return '>1'
  else
    return '='
  endif
endfunction

