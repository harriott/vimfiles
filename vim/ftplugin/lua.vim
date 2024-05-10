
" vim: set fdl=1:

" Language: Lua
" Maintainer: Joseph Harriott
" Last Change: Sun 21 Apr 2024
" $vimfiles/vim/ftplugin/lua.vim
"  supplementary to  $VIMRUNTIME/ftplugin/lua.vim
"  also  $vimfiles/vim/after/syntax/lua.vim

if !has('nvim')
  let b:ale_enabled = 0
  let b:ale_linters = ['lua_language_server', 'luac', 'selene']
  "  no sign of activity from  lua-language-server  or  luac
  "  selene  reports errors on  vim.*  statements
  set omnifunc=ale#completion#OmniFunc
  source $vimfiles/vim/ftplugin/ALElocaleader.vim
endif

nnoremap <buffer><leader>o :ContextToggleWindow<CR>

" select one or more headings, then
vnoremap <buffer><leader>> :s/-- -/-- --/<CR>  " demote
vnoremap <buffer><leader>< :s/-- --/-- -/<CR>  " promote

""> foldexpr
function! LuaF()
" adapted from $vimfiles/vim/ftplugin/HashEqualsFolding.vim
  let l:foldMark = matchstr(getline(v:lnum), '-- -\+>') " defined l:foldMark, even in no match
  " Now, if there's a heading set an equivalent fold start:
  if empty(l:foldMark)
    return "="
  else
    let l:foldCount = matchstr(l:foldMark, '-- \zs-\+>')
    let l:headerLevel = len(l:foldCount) - 1
    return ">".l:headerLevel
  endif
endfunction

setlocal expandtab foldcolumn=1 foldexpr=LuaF() foldmethod=expr shiftwidth=2

""> turn off or on a fold of commands
source $vimfiles/vim/ftplugin/firmCommentWholeFold.vim

" firmly comment out a whole fold
if v:lang =~ 'fr'
  nnoremap <buffer><leader>" :call FirmComment('--')<cr>
else
  nnoremap <buffer><leader>> :call FirmComment('--')<cr>
endif

" remove firm comments from a whole fold
nnoremap <buffer><leader>< :call FirmUnComment('--')<cr>

