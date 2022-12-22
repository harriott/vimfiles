" vim: fdl=1:

" Language:	Vim
" Maintainer: Joseph Harriott
" Last Change: Mon 25 Jan 2021
" This file should be in your  vimfiles/ftplugin  folder
"  ( it is supplemental to  $VIMRUNTIME/ftplugin/vim.vim )

setlocal expandtab shiftwidth=2 textwidth=0

""> config-file folding by lines that start with [space(s)]"=>...
"  ""=> first level fold
"  grep -rl '^ *""='  # shows that this is a good unambiguous choice
"  <some vim code>
"    ""==> second level fold (with optional offset)
"    ...

function! VimFolds()
  " grep -rl VimFolds  # shows it's not been taken
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
"  grep -rl '"=\+' # shows that this is a good unambiguous choice
" demote a heading
vnoremap <buffer><leader>> :s/"">/"">>/<CR>
" promote a heading
vnoremap <buffer><leader>< :s/"">>/"">/<CR>

"">> turn off or on a fold of commands
execute 'source 'g:vimfiles.'/ftplugin/firmCommentWholeFold.vim'

" firmly comment out a whole fold
nnoremap <buffer><leader><leader>> :call FirmComment('"')<cr>

" remove firm comments from a whole fold
nnoremap <buffer><leader><leader>< :call FirmUnComment('"')<cr>

