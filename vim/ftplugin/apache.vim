" vim: se fdl=1:

" Language: apache
" Maintainer: Joseph Harriott
" Last Change: Thu 01 May 2025
" $vfv/ftplugin/apache.vim
"  supplementary to  $VIMRUNTIME/ftplugin/apache.vim
"  (see also  $VIMRUNTIME/syntax/apache.vim)

" folding by  <X
" ---------------------
"  not enough, but reduces some of the overall mess
function! ApacheIfModule()
  if getline(v:lnum) =~ '^<\u'
    return ">1"
  elseif getline(v:lnum) =~ '^</'
    return "<1"
  else
    return "="
  endif
endfunction

setlocal fde=ApacheIfModule() foldcolumn=1 fdm=expr

