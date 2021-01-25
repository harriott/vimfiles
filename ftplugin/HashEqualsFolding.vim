
" Language:	sh
" Maintainer: Joseph Harriott
" Last Change: Thu 17 Sep 2020
  " This file  HashEqualsFolding.vim  should be sourced by a vimfiles\ftplugin.

  " Folding by lines that start with [space(s)]#=...
  " ------------------------------------------------
  "  #= first level fold
"  <some code>
"    #== second level fold (with optional offset)
"    ...
"  (I'd've preferred #~, but couldn't get matchstr detecting it...)

" select one or more headings, then
vnoremap <buffer><leader>> :s/#=/#==/<CR>  " demote
vnoremap <buffer><leader>< :s/#==/#=/<CR>  " promote

""> foldexpr'

" (adapted from my markdown.vim)
function! BuildFile()
  let l:foldMark = matchstr(getline(v:lnum), '#=\+') " defined l:foldMark, even in no match
  " if there's a heading set an equivalent fold start
  if empty(l:foldMark)
    return "="
  else
    let l:foldCount = matchstr(l:foldMark, '=\+')
    return ">".len(l:foldCount)
  endif
endfunction

setlocal fde=BuildFile()

""> turn off or on a fold of Bash commands

" firmly comment out a whole fold
function! FirmComment()
  " definitely close the current fold, and select it
  normal! zozckjV
  " firmly comment it out
  s/^\(.\)/# \1/
  " definitely close the current fold, then delete and restore to get out of visual line
  normal! zozckjdP
endfunction
nnoremap <buffer><leader><leader>> :call FirmComment()<cr>

" remove firm comments from a whole fold
function! FirmUnComment()
  " definitely close the current fold, and select it
  normal! zozckjV
  " firmly uncomment it (suppressing any error messages if there're uncommented lines)
  sil! exec 's/^# //'
  " definitely close the current fold, then delete and restore to get out of visual line
  normal! zozckjdP
endfunction
nnoremap <buffer><leader><leader>< :call FirmUnComment()<cr>

