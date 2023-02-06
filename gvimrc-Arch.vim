
" $vimfiles/gvimrc-Arch.vim  sourced by  $machBld/jo/gvimrc
" ---------------------------------------------------------

" move on to the more portable configuration:
source $HOME/.vim/gvimrc.vim

""> Colour Scheme
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

""> guifont
" first font is always applied
" set guifont=DejaVu\ Sans\ Mono\ 10
" set guifont=DejaVuSansMono\ Nerd\ Font\ Mono\ 9
" set guifont=Droid\ Sans\ Mono\ 10
" set guifont=JetBrainsMonoNL\ Nerd\ Font\ Mono\ 9
" set guifont=MesloLGS\ Nerd\ Font\ Mono\ 9
" set guifont=Ubuntu\ Mono\ 10
set guifont=UbuntuMono\ Nerd\ Font\ Mono\ 10

