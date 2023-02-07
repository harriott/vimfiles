" vim: se fdl=1:

" Language:	md
" Maintainer: Joseph Harriott
" Last Change: Mon 06 Feb 2023
" this is for extra funtionality that I like for my *.md files
" supplemental to  $vimfiles/ftplugin/markdown.vim
" as  $VIMRUNTIME/filetype.vim  sets filetype  markdown  for *.md,
"  this configuration file is sourced as needed by  $vimfiles/filetype.vim

" open Pandoc'd pdf
nnoremap <buffer> <F12> :call CompiledPDF()<CR>

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

""> Syntax highlighting
" Get highlighting working for  # low-carb  in  Regimes.md
let g:markdown_minlines = 40  " see  $VIMRUNTIME/syntax/markdown.vim

" maxmempattern  is set in  $vimfiles/plugin/plugin.vim

""> for Verse
" prepend >  & append  :
vnoremap <buffer> <leader>v1 :s#^\v(.+)$#> \1  #g <bar> nohlsearch <CR>
" remove   from the last line of a stanza:
vnoremap <buffer> <leader>v2 :s#^\v(.+)  $\n^$#\1\r#g <CR>

