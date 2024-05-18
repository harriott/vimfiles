
" Joseph Harriott - dim 07 avr 2024

" $vimfiles\test\vimrc-Win10.vim
" source'd by
"  $MSWin10\mb\_vimrc-AZERTY
"  $vimfiles/nvim/init.vim

let g:test_vimrc_Win10 = 1

""> 3 my initial settings
let $USER = 'troin'
" set noloadplugins

"">> colorscheme
function! STWDG()
  set background=dark
    let g:useSTW='1'
    " highlight ShowTrailingWhitespace ctermbg=Grey guibg=DarkGreen
    highlight ShowTrailingWhitespace ctermbg=Grey guibg=Black
  let g:CSDark = 1
endfunction
colorscheme tomorrow
set background=dark
call STWDG()

"">>> reliable light-dark toggle
nnoremap <C-F5> :call ColorLightDark()<cr>
function! ColorLightDark()
  if g:CSDark
    set background=light
    " " if Solarized
    " highlight ShowTrailingWhitespace ctermbg=Grey guibg=White
    " if Tomorrow
    highlight ShowTrailingWhitespace ctermbg=Grey guibg=Grey
    let g:CSDark = 0
  else
    call STWDG()
  endif
endfunction

