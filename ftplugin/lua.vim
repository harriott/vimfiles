
" vim: set fdl=1:

" Language:	Lua
" Maintainer: Joseph Harriott
" Last Change: Tue 10 May 2022

" select one or more headings, then
vnoremap <buffer><leader>> :s/-- -/-- --/<CR>  " demote
vnoremap <buffer><leader>< :s/-- --/-- -/<CR>  " promote

""> foldexpr
function! LuaF()
" adapted from $vimfiles/ftplugin/HashEqualsFolding.vim
  let l:foldMark = matchstr(getline(v:lnum), '-- -\+') " defined l:foldMark, even in no match
  " if there's a heading set an equivalent fold start
  if empty(l:foldMark)
    return "="
  else
    let l:foldCount = matchstr(l:foldMark, '-- -\+')
    let l:headerLevel = len(l:foldCount) - 3
    " return ">".len(l:foldCount)
    return ">".l:headerLevel
  endif
endfunction

setlocal foldcolumn=1 foldexpr=LuaF() foldmethod=expr

