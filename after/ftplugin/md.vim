
" Language:	markdown
" Maintainer: Joseph Harriott
" Last Change: Tue 03 Aug 2021
" this is extra to  $vimfiles/ftplugin/md.vim

function! MysmsMD()
  set fileformat=dos
  write
  execute "silent !C:\\Strawberry\\perl\\bin\\perl.exe ".$onGH."\\misc\\PerlTools\\mysmsMD.pl ".expand('%:p')
  Startify  " this just diverts vim's attention, ensuring that Perl's changes are loaded
  " after this should (manually) reset the scrape fileformat to unix
endfunction

