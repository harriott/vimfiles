" My adjustments
" Language:	dokuwiki
" Maintainer: Joseph Harriott
" Last Change: Fri 07 Oct 2016
" This file should be in your vimfiles\ftplugin folder,

" If you want to trigger these adjustments from the modeline in a file, it's:
" <!-- vim: set tw=0: -->
" You should also have  https://github.com/chikamichi/mediawiki.vim  installed

" While developing this plugin, I used
" :source $HOME/vimfiles/ftplugin/mediawiki.vim

" Enable folding based on  = sections =
setlocal foldexpr=getline(v:lnum)=~'^\\(=\\+\\)[^=]\\+\\1\\(\\s*<!--.*-->\\)\\=\\s*$'?\">\".(len(matchstr(getline(v:lnum),'^=\\+'))):\"=\"
" setlocal fdm=expr
