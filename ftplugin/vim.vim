" vim: fdl=1:

" Language:	Vim
" Maintainer: Joseph Harriott
" Last Change: Mon 25 Jan 2021
" This file should be in your  vimfiles/ftplugin  folder
"  ( it is supplemental to  $VIMRUNTIME/ftplugin/vim.vim )

setlocal expandtab shiftwidth=2

""> config-file folding by lines that start with [space(s)]"=>...
"   -------------------------------------------------------------
"  ""= first level fold
"  Bash: grep -rl '^ *""=' # shows that this is a good unambiguous choice
"  <some Bash code>
"    ""== second level fold (with optional offset)
"    ...

function! VimFolds()
  " Bash: grep -rl VimFolds # shows it's not been taken
  let l:foldMark = matchstr(getline(v:lnum), '^"">\+') " defined l:foldMark, even in no match
  " if there's a heading set an equivalent fold start
  if empty(l:foldMark)
    return "="
  else
    let l:foldCount = matchstr(l:foldMark, '>\+')
    return ">".len(l:foldCount)
  endif
endfunction

setlocal fde=VimFolds() fdm=expr

" heading strength
"  Bash: grep -rl '"=\+' # shows that this is a good unambiguous choice
" demote a heading
vnoremap <buffer><leader>> :s/"">/"">>/<CR>
" promote a heading
vnoremap <buffer><leader>< :s/"">>/"">/<CR>

