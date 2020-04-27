"
" Language:	sh
" Maintainer: Joseph Harriott
" Last Change: Tue 21 Apr 2020
" This file should be in your vimfiles\ftplugin folder.
" You need to specify ft=sh in a modeline in the file that you want to affect.

runtime! ftplugin/sh.vim

" Build-file folding by lines that start with [space(s)]#=...
" -----------------------------------------------------------
"  #= first level fold
"  <some Bash code>
"    #== second level fold (with optional offset)
"    ...
"  (I'd've preferred #~, but couldn't get matchstr detecting it...)

" (adapted from my markdown.vim)
function! BuildFile()
  let l:foldMark = matchstr(getline(v:lnum), '#=\+') "defined l:foldMark, even in no match
  " if there's a heading set an equivalent fold start
  if empty(l:foldMark)
    return "="
  else
    let l:foldCount = matchstr(l:foldMark, '=\+')
    return ">".len(l:foldCount)
  endif
endfunction

set fde=BuildFile()

" turn off or on a fold of Bash commands
" --------------------------------------
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

