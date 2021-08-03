" Couple of adjustments.
" Language:	markdown
" Maintainer: Joseph Harriott
" Last Change: Tue 03 Aug 2021
" this is for extra funtionality that I like for my *.md files

" Convert mysms screen scrape to markdown:
"  (I'm using <leader> here to avoid accidentally running this)
if has('unix') " should really be asking if Perl is available
  nnoremap <buffer><leader><F7> :execute "silent !perl $ITstack/onGitHub/misc/PerlTools/mysmsMD.pl ".expand('%:p')<CR>
else
  nnoremap <buffer><leader><F7> :call MysmsMD()<CR>
    " defined in  $vimfiles/after/ftplugin/md.vim
endif
" check with  :map <leader><F7>

" open Pandoc'd pdf
nnoremap <buffer> <F12> :call CompiledPDF()<CR>

" for Verse
" ---------
" prepend >  & append  :
vnoremap <buffer> <leader>v1 :s#^\v(.+)$#> \1  #g <bar> nohlsearch <CR>
" remove   from the last line of a stanza:
vnoremap <buffer> <leader>v2 :s#^\v(.+)  $\n^$#\1\r#g <CR>

