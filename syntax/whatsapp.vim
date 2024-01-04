
" Language: whatsapp - for conversation exported from WhatsApp
" Maintainer: Joseph Harriott
" Last Change: Thu 02 Nov 2023
" in WhatsApp phone app,  menu > More > Export chat

" $vimfiles/syntax/whatsapp.vim
" *.whatsapp  is detected by  $vimfiles/filetype.vim

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" stamp
syntax match WACstamp '^[^:]*:[^:]*:'
hi def link WACstamp ModeMsg
syntax match WACstampJH '^[^:]*:\d\d - Joseph Harriott:'
hi def link WACstampJH Number

let b:current_syntax = "whatsapp"

