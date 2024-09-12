" vim: se fdl=1:

" Maintainer: Joseph Harriott
" Last Change: Mon 18 Oct 2021
" $vfv/ftplugin/HashEqualsFolding.vim
  " used by
  "   $vimfiles/ftplugin/bbcode.vim
  "   $vimfiles/ftplugin/sh.vim
  "   $vimfiles/ftplugin/tmux.vim

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

""> foldexpr
" (adapted from my markdown.vim)
function! HashEqualsFold()
  let l:foldMark = matchstr(getline(v:lnum), '#=\+') " defined l:foldMark, even in no match
  " if there's a heading set an equivalent fold start
  if empty(l:foldMark)
    return "="
  else
    let l:foldCount = matchstr(l:foldMark, '=\+')
    return ">".len(l:foldCount)
  endif
endfunction

setlocal foldexpr=HashEqualsFold()
setlocal foldmethod=expr

""> turn off or on a fold of commands
source $vfv//ftplugin/firmCommentWholeFold.vim

" firmly comment out a whole fold
if v:lang =~ 'fr'
  nnoremap <buffer><leader>" :call FirmComment('#')<cr>
else
  nnoremap <buffer><leader># :call FirmComment('#')<cr>
endif

" remove firm comments from a whole fold
nnoremap <buffer><leader>< :call FirmUnComment('#')<cr>

