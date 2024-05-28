" vim: fdl=2:

" Language: Vim
" Maintainer: Joseph Harriott
" Last Change: Tue 28 May 2024
" "$vimfiles/vim/ftplugin/vim.vim
"  (supplemental to  $VIMRUNTIME/ftplugin/vim.vim)
"  also  $vimfiles/vim/after/ftplugin/vim.vim

let g:vim_indent = #{ line_continuation: shiftwidth(), }
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

setlocal foldexpr=VimFolds() foldmethod=expr

" heading strength
"  grep -rl '"=\+' # shows that this is a good unambiguous choice
" demote a heading
vnoremap <buffer><leader>> :s/"">/"">>/<CR>
" promote a heading
vnoremap <buffer><leader>< :s/"">>/"">/<CR>

"">> turn off or on a fold of commands
source $vimfiles/vim/ftplugin/firmCommentWholeFold.vim

" firmly comment out a whole fold
if v:lang =~ 'fr'
  nnoremap <buffer><leader>" :call FirmComment('"')<cr>
else
  nnoremap <buffer><leader>> :call FirmComment('"')<cr>
endif

" remove firm comments from a whole fold
nnoremap <buffer><leader>< :call FirmUnComment('"')<cr>

