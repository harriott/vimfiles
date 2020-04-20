
" Joseph Harriott
" ---------------

" -----
" Dates
" -----

" (keep this file in your plugin directory so's it's automatically sourced at startup)

noremap <leader>yy :CalendarH<CR>
if has('unix')
  noremap <leader>yp :lan fr_FR.UTF-8<CR>:pu=strftime('%a %d %b %Y')<CR>:lan en_GB.UTF-8<CR>
elseif has('win32')
  noremap <leader>yp :lan tim French<CR>:pu=strftime('%a %d %b %Y')<CR>:lan tim English_United Kingdom<CR>
endif

" abbreviation for current date
" -----------------------------
iab <expr> d8- strftime("%y-%m-%d")
iab <expr> d8a strftime("%Y-%m-%d-%a")
iab <expr> d8c strftime("%y%m%d")
iab <expr> d8d strftime("%a %d %b %Y")
iab <expr> d8l strftime("%Hh%M %a %d %b %Y")
iab <expr> d8m strftime("%y%m%d-%Hh%Mm")
iab <expr> d8p strftime("%Y-%m-%d %H:%M")
iab <expr> d8s strftime("%d/%m/%y")
iab <expr> d8t strftime("%y%m%d(%Hh%Mm%S)")

