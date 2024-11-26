
" Language: md
" Maintainer: Joseph Harriott
" Last Change: Thu 07 Nov 2024
" this is for extra funtionality that I like for my *.md files
" $vfv/ftplugin/md.vim  supplemental to  $vfv/ftplugin/markdown.vim
" as  $VIMRUNTIME/filetype.vim  sets filetype  markdown  for *.md,
"  this configuration file is source'd as needed by  $vfv/filetype.vim

" /sanskrit\|skt

" convert dw url
if v:lang =~ 'fr'
  nnoremap <buffer><localleader>( :s/\[\[\(http\S*\) \|\(.*\)]]/[\2](\1)/<CR>
else
  nnoremap <buffer><localleader>[ :s/\[\[\(http\S*\) \|\(.*\)]]/[\2](\1)/<CR>
endif

if v:lang =~ 'fr'
  if has('nvim') && !exists('g:neovide') " terminal Nvim
    nnoremap <buffer><localleader>< a<><Esc>h
  else
    nnoremap <buffer><localleader>< a<><Esc>
  endif
endif

" hack to stop accidental filtering
  setlocal equalprg=no_filter_md_files

" open Pandoc'd pdf
  nnoremap <buffer> <F12> :call CompiledPDF()<CR>

" go file when square bracketed
nnoremap <buffer>gF vi[gf

""> convert messenger screen scrape to markdown
"  (I'm using <leader> here to avoid accidentally running this)
if has('unix') " should really be asking if Perl is available
  nnoremap <buffer><leader><leader><F7> :execute "silent !perl $misc/CP/PerlTools/MessengerMd.pl ".expand('%:p')<CR>
else
  nnoremap <buffer><leader><leader><F7> :call MessengerMd()<CR>
    " - to be defined...
endif
" check with  :map <leader><leader><F7>

""> convert mysms screen scrape to markdown
"  (I'm using <leader> here to avoid accidentally running this)
if has('unix') " should really be asking if Perl is available
  " might need to  se ff=unix  first
  nnoremap <buffer><leader><f7> :execute "silent !perl $misc/CP/PerlTools/mysmsMd.pl ".expand('%:p')<CR>
else
  function MysmsMd()
    " could  use  let scrapeMd = expand('%:p')  do the transformation on  scrapeMd, then final tweaks
    "  but requires this function to be defined before this file
    "  eg in  $vimfiles\vim\enter\vimrc-Win10.vim
    set fileformat=dos  " seemes to be necessary for  Perl
    write
    execute "silent !C:\\Strawberry\\perl\\bin\\perl.exe ".$misc."\\CP\\PerlTools\\mysmsMd.pl ".expand('%:p')
  endfunction
  nnoremap <buffer><leader><f7> :call MysmsMd()<CR>
  " - check with  :map <leader><f7>
endif

""> reset filetype
nnoremap <buffer> <localleader>h :set filetype=markdown<CR>
" when  ft=liquid
" when  $JHm/_posts  have  fdm=syntax

""> syntax highlighting fix
" maxmempattern  is set in  $vimfiles/plugin/plugin.vim
setlocal synmaxcol=0

""> for Verse
" prepend >  & append  :
vnoremap <buffer> <leader>v1 :s#^\v(.+)$#> \1  #g <bar> nohlsearch <CR>
" remove   from the last line of a stanza:
vnoremap <buffer> <leader>v2 :s#^\v(.+)  $\n^$#\1\r#g <CR>

