
" Language:	markdown
" Maintainer: Joseph Harriott
" Last Change: Sat 20 Apr 2024
" $vimfiles/vim/after/ftplugin/md.vim
"   extra to  $vimfiles/vim/ftplugin/md.vim
" think I separated this here to ensure call to Startify is recognised

function! MysmsMD()
  set fileformat=dos
  write
  execute "silent !C:\\Strawberry\\perl\\bin\\perl.exe ".$onGH."\\misc\\PerlTools\\mysmsMD.pl ".expand('%:p')
  Startify  " this just diverts vim's attention, ensuring that Perl's changes are loaded
  " after this should (manually) reset the scrape fileformat to unix
endfunction

