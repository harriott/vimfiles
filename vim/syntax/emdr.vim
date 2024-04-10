" vim: set fdl=1:

" Language: emdr - for my draft emails ($vimfiles/sample.emdr)
" Maintainer: Joseph Harriott
" Last Change: Fri 07 Oct 2022
"
" sourced by  $vimfiles/vim/filetype.vim
" also  $vimfiles/vim/ftplugin/emdr.vim

""> sectioning marks for emails
" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

syntax match emdrModeline '\%1l^vim: .*'
hi link emdrModeline Comment

" Headings: ━━━━━━ l0 ━━━━━━  ━━━━ l1 ━━━━  ━━ l2 ━━
syn match emdrHeading1 '^━\{6} .* ━\{6}$'
syn match emdrHeading2 '^━\{4} .* ━\{4}$'
syn match emdrHeading3 '^━\{2} .* ━\{2}$'

" the guifg's are best checked here with hexokinase
hi def emdrHeading1 term=bold cterm=bold gui=bold guifg=LightGreen
hi def emdrHeading2 term=bold cterm=bold gui=bold guifg=Violet
hi def emdrHeading3 term=bold cterm=bold gui=bold guifg=Orange

" Lists:
syn match emdrList '⇒'
hi link emdrList ModeMsg

" Weblinks:
syn match emdrHyperlink '\(http\|https\|telnet\|gopher\|wais\|ftp\|ed2k\|irc\|ldap\):\/\/[a-zA-Z0-9~!@#%&_+=/.,?:;-]*'
hi link emdrHyperlink Underlined

let b:current_syntax = "text"

