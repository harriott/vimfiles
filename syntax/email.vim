" Language:	email
" Maintainer: Joseph Harriott
" Last Change: Thu 09 Apr 2020

" The intention here is to have a simple means for writing headings in emails,
" and with the bonus of highlighting hyperlinks.

" This file should be in your vimfiles\ftplugin folder,
" and you'll need to (autocmd BufRead,BufNewFile) setlocal ft=email.

" This syntax file is intended to work with my  ../ftplugin/email.vim
"
" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

syntax match modeline '\%1l^vim: .*'
hi link modeline Comment

" Headings: ====== title ======  ==== title ====  == title ==
syn match heading1 '^=\{6} .* =\{6}$'
syn match heading2 '^=\{4} .* =\{4}$'
syn match heading3 '^=\{2} .* =\{2}$'

" the guifg's are best checked here with hexokinase
hi def heading1 term=bold cterm=bold gui=bold guifg=LightGreen
hi def heading2 term=bold cterm=bold gui=bold guifg=Violet
hi def heading3 term=bold cterm=bold gui=bold guifg=Orange

" Weblinks:
syn match hyperlink '\(http\|https\|telnet\|gopher\|wais\|ftp\|ed2k\|irc\|ldap\):\/\/[a-zA-Z0-9~!@#%&_+=/.,?:;-]*'
hi link hyperlink Underlined

let b:current_syntax = "email"

