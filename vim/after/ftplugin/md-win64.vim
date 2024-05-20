
" Language:	markdown
" Maintainer: Joseph Harriott
" Last Change: ven 03 mai 2024
" $vimfiles/vim/after/ftplugin/md-win64.vim
"   extra to  $vimfiles/vim/ftplugin/md.vim
" think I separated this here to ensure call to Startify is recognised

function! MysmsMd()
  set fileformat=dos
  write
  execute "silent !C:\\Strawberry\\perl\\bin\\perl.exe ".$misc".\\CP\\PerlTools\\mysmsMD.pl ".expand('%:p')
  " redir @e | echo "!C:\\Strawberry\\perl\\bin\\perl.exe $misc\\CP\\PerlTools\\mysmsMD.pl ".expand('%:p') | redir END
  Startify  " this just diverts vim's attention, ensuring that Perl's changes are loaded
  " after this should (manually) reset the scrape fileformat to unix
endfunction

