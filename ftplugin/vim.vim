" vim: fdl=1:

" Language:	Vim
" Maintainer: Joseph Harriott
" Last Change: Mon 25 Jan 2021
" This file should be in your  vimfiles/ftplugin  folder
"  ( it is supplemental to  $VIMRUNTIME/ftplugin/vim.vim )

setlocal expandtab shiftwidth=2

""> config-file folding by lines that start with [space(s)]"=>...
"  ""= first level fold
"  Bash: grep -rl '^ *""=' # shows that this is a good unambiguous choice
"  <some Bash code>
"    ""== second level fold (with optional offset)
"    ...

function! VimFolds()
  " Bash: grep -rl VimFolds # shows it's not been taken
  " define  l:foldMark, even in no match, and allowing for commented out headings
  let l:foldMark = matchstr(getline(v:lnum), '^\(" \)\{-}"">\+')
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

"">> turn off or on a fold of commands

" firmly comment out a whole fold
function! FirmComment()
  " definitely close the current fold, and select it
  normal! zozckjV
  " firmly comment it out
  s/^\(.\)/" \1/
  " definitely close the current fold, then delete and restore to get out of visual line
  normal! zozckjdP
endfunction
nnoremap <buffer><leader><leader>> :call FirmComment()<cr>

" remove firm comments from a whole fold
function! FirmUnComment()
  " definitely close the current fold, and select it
  normal! zozckjV
  " firmly uncomment it (suppressing any error messages if there're uncommented lines)
  sil! exec 's/^" //'
  " definitely close the current fold, then delete and restore to get out of visual line
  normal! zozckjdP
endfunction
nnoremap <buffer><leader><leader>< :call FirmUnComment()<cr>

