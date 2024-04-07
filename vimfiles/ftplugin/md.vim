
" Language: md
" Maintainer: Joseph Harriott
" Last Change: Thu 13 Jul 2023
" this is for extra funtionality that I like for my *.md files
" $vimfiles/ftplugin/md.vim  supplemental to  $vimfiles/ftplugin/markdown.vim
" as  $VIMRUNTIME/filetype.vim  sets filetype  markdown  for *.md,
"  this configuration file is sourced as needed by  $vimfiles/filetype.vim

" For md's detected as  liquid:
nnoremap <buffer> <localleader>h :set filetype=markdown<CR>
" - then just reload the file to return to  liquid  syntax highlighting

" open Pandoc'd pdf
nnoremap <buffer> <F12> :call CompiledPDF()<CR>

nnoremap <buffer><localleader>[ :s/\[\[\(http\S*\) \|\(.*\)]]/[\2](\1)/<CR>  " convert dw url

if v:lang =~ 'fr'
  nnoremap <buffer><localleader>< a<><Esc>
endif

""> convert messenger screen scrape to markdown
"  (I'm using <leader> here to avoid accidentally running this)
if has('unix') " should really be asking if Perl is available
  nnoremap <buffer><leader><leader><F7> :execute "silent !perl $misc/CP/PerlTools/MessengerMd.pl ".expand('%:p')<CR>
else
  nnoremap <buffer><leader><leader><F7> :call MessengerMd()<CR>
    " to be defined in  $vimfiles/after/ftplugin/md.vim
endif
" check with  :map <leader><leader><F7>

""> convert mysms screen scrape to markdown
"  (I'm using <leader> here to avoid accidentally running this)
if has('unix') " should really be asking if Perl is available
  nnoremap <buffer><leader><F7> :execute "silent !perl $misc/CP/PerlTools/mysmsMD.pl ".expand('%:p')<CR>
else
  nnoremap <buffer><leader><F7> :call MysmsMD()<CR>
    " defined in  $vimfiles/after/ftplugin/md.vim
endif
" check with  :map <leader><F7>

""> syntax highlighting fix
" maxmempattern  is set in  $vimfiles/plugin/plugin.vim
setlocal synmaxcol=0

""> for Verse
" prepend >  & append  :
vnoremap <buffer> <leader>v1 :s#^\v(.+)$#> \1  #g <bar> nohlsearch <CR>
" remove   from the last line of a stanza:
vnoremap <buffer> <leader>v2 :s#^\v(.+)  $\n^$#\1\r#g <CR>

