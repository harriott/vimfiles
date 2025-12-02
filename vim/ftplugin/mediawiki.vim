
" Language: mediawiki - see  $vfv/plugin/packsFull.vim
" Maintainer: Joseph Harriott
" Last Change: Fri 07 Oct 2016
" $vimfiles/ftplugin/mediawiki.vim

" <!-- vim: set fdl=2: -->

setlocal tw=0

" Enable folding based on  = sections =
setlocal foldexpr=getline(v:lnum)=~'^\\(=\\+\\)[^=]\\+\\1\\(\\s*<!--.*-->\\)\\=\\s*$'?\">\".(len(matchstr(getline(v:lnum),'^=\\+'))):\"=\"
setlocal fdm=expr

