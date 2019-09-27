" ----------------------------------------------------------------------
" source this file in ~/.gvimrc like this: source $HOME/.vim/<this file>
" ----------------------------------------------------------------------

" disable beeps:
set vb t_vb=

" move on ot the more portable configuration:
source $HOME/.vim/gvimrc.vim

" Colour Scheme
" ------------
" start with Tomorrow dark
colorscheme tomorrow
set background=dark

" colour scheme toggle
nnoremap <C-F5> :call TomorrowSolarized()<cr>
" assume starting with Solarized:
let g:SolarizedScheme = 0
" toggle with Solarized
function! TomorrowSolarized()
  if g:SolarizedScheme
    colorscheme tomorrow
    set background=dark
    let g:SolarizedScheme = 0
    highlight ShowTrailingWhitespace ctermbg=grey guibg=black
  else
    colorscheme solarized
    set background=light
    let g:SolarizedScheme = 1
    highlight ShowTrailingWhitespace ctermbg=grey guibg=white
  endif
  redraw
  colorscheme
endfunction

