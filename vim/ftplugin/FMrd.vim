
" Language: FMrd
"  $onGH/FM-rsync-drives/README.md
"   https://github.com/harriott/FM-rsync-drives/blob/master/README.md
" Maintainer: Joseph Harriott
" Last Change: Sun 25 Oct 2026

" $vfv/ftplugin/FMrd.vim (also  $vfv/syntax/FMrd.vim)

setlocal expandtab textwidth=0

" folding by sync number
" ----------------------
function! RsF()
  if getline(v:lnum) =~ '^Push sync ' | return ">1" | else | return "=" | endif
endfunction

setlocal fde=RsF() fdc=1 fdm=expr

