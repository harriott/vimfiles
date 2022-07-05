" vim: se fdl=1:

" Language:	markdown
" Maintainer: Joseph Harriott
" Last Change: Tue 05 Jul 2022
" this is for extra funtionality that I like for my *.md files
" supplemental to  $vimfiles/ftplugin/markdown.vim
" requires  $vimfiles/filetype.vim

" open Pandoc'd pdf
nnoremap <buffer> <F12> :call CompiledPDF()<CR>

" Tagbar off
let b:tagbar_ignore = 1
" because it's not particularly useful here, and slows down huge files like  Private.md

""> convert messenger screen scrape to markdown
"  (I'm using <leader> here to avoid accidentally running this)
if has('unix') " should really be asking if Perl is available
  nnoremap <buffer><leader><leader><F7> :execute "silent !perl $onGH/misc/PerlTools/MessengerMd.pl ".expand('%:p')<CR>
else
  nnoremap <buffer><leader><leader><F7> :call MessengerMd()<CR>
    " to be defined in  $vimfiles/after/ftplugin/md.vim
endif
" check with  :map <leader><F7>

""> convert mysms screen scrape to markdown
"  (I'm using <leader> here to avoid accidentally running this)
if has('unix') " should really be asking if Perl is available
  nnoremap <buffer><leader><F7> :execute "silent !perl $onGH/misc/PerlTools/mysmsMD.pl ".expand('%:p')<CR>
else
  nnoremap <buffer><leader><F7> :call MysmsMD()<CR>
    " defined in  $vimfiles/after/ftplugin/md.vim
endif
" check with  :map <leader><F7>

""> for Verse
" prepend >  & append  :
vnoremap <buffer> <leader>v1 :s#^\v(.+)$#> \1  #g <bar> nohlsearch <CR>
" remove   from the last line of a stanza:
vnoremap <buffer> <leader>v2 :s#^\v(.+)  $\n^$#\1\r#g <CR>

