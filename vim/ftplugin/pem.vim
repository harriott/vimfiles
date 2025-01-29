
" Language: PEM (Privacy Enhanced Mail)
" Maintainer: Joseph Harriott - http://harriott.github.io
" Last Change: Wed 08 Jan 2025
" for
"  .asc ($DCGRs/dts-asc.ffl) ASCII armor (.pem  in  $vfv/filetype.vim)
"  .crt ($ulLAb/ml-$host/CAC) certificate (.pem  in  /usr/share/vim/vim91/filetype.vim)

" $vfv/ftplugin/pem.vim
"  also  $vfv/syntax/pem.vim
" search for  .pem  in  /usr/share/vim/vim91/filetype.vim

setlocal fdc=1 fde=PEMFold() fdm=expr

" fold up blocks
" --------------
function! PEMFold()
  let j = getline(v:lnum)
  if !empty(matchstr(j, '^-----BEGIN '))
    return '>1'
  elseif !empty(matchstr(j, '^-----END '))
    return '<1'
  else
    return '='
  endif
endfunction

