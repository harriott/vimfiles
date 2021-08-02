" ----------------------------------------------------------------------
" source this file in ~/.gvimrc like this: source $HOME/.vim/<this file>
" ----------------------------------------------------------------------

" disable beeps:
set visualbell t_vb=

" move on ot the more portable configuration:
source $HOME/.vim/gvimrc.vim

" Colour Scheme
" ------------
function! TWSDark()
  set background=dark
    highlight ShowTrailingWhitespace ctermbg=Grey guibg=Black
    highlight SignColumn guibg=black ctermbg=black " less distracting ALE
  let g:CSDark = 1
endfunction

" start with Tomorrow dark
" colorscheme solarized
let g:gitgutter_set_sign_backgrounds = 1
call TWSDark()

" reliable light-dark toggle
nnoremap <C-F5> :call ColorLightDark()<cr>
function! ColorLightDark()
  if g:CSDark
    colorscheme default
    set background=light
    " " if Solarized
    " highlight ShowTrailingWhitespace ctermbg=Grey guibg=White
    " if Tomorrow
    highlight ShowTrailingWhitespace ctermbg=Grey guibg=Grey
    let g:CSDark = 0
  else
    colorscheme tomorrow
    call TWSDark()
  endif
endfunction

