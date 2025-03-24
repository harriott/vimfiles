" vim: set fdl=1:

" $vfv/enter/gvimrc-Arch.vim  sourced by  $machBld/jo/gvimrc

" move on to the more portable configuration:
source $vfv/enter/gvimrc.vim

""> colour scheme
function! TWSDark()
  set background=dark
    highlight ShowTrailingWhitespace ctermbg=Grey guibg=Black
    highlight SignColumn guibg=black ctermbg=black " less distracting ALE
  let g:CSDark = 1
endfunction
call TWSDark()

let g:gitgutter_set_sign_backgrounds = 1
" - better for Tomorrow dark

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

""> guifont
" first font is always applied
" set guifont=DejaVuSansM\ Nerd\ Font\ Mono\ 9
" set guifont=JetBrainsMono\ NFM\ 9
" set guifont=MesloLGS\ Nerd\ Font\ Mono\ 9
set guifont=UbuntuMono\ Nerd\ Font\ Mono\ 10

