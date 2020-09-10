" ----------------------------------------------------------------------
" source this file in ~/.gvimrc like this: source $HOME/.vim/<this file>
" ----------------------------------------------------------------------

" disable beeps:
set vb t_vb=

" move on ot the more portable configuration:
source $HOME/.vim/gvimrc.vim

" Colour Scheme
" ------------
function! UpdateTWSDark()
  highlight ShowTrailingWhitespace ctermbg=Grey guibg=Black
  highlight SignColumn guibg=black ctermbg=black " less distracting ALE
endfunction

" start with Tomorrow dark
colorscheme tomorrow
set background=dark
call UpdateTWSDark()
set cul

" colour scheme toggle
call togglebg#map("<C-F5>")

