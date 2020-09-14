" vim: fdm=expr ft=vim.vimbuild:

" -------------------------------------------------
" a wrapper vimrc for use on a MS Windows 10 system
" Joseph Harriott - Mon 14 Sep 2020
" this should be sourced by $HOME\_vimrc
" -------------------------------------------------

""> 0 quit if called from Git's vim
" (adapted for Git-2.8.1-64-bit.exe on Windows 10)
if $VIM == '/usr/share/vim'
  finish
endif

""> 1 vimrc_example.vim
source $HOME/vimfiles/vimrc_example.vim

""> 2 mswin.vim
source $VIMRUNTIME/mswin.vim
" but revert Ctrl-A back to number increment:
unmap <C-A>
" and Ctrl-F back to move forward:
unmap <C-F>

""> 3 my initial settings
" set noloadplugins

"">> colorscheme
function! STWDG()
  highlight ShowTrailingWhitespace ctermbg=Grey guibg=DarkGreen
endfunction
colorscheme tomorrow
set background=dark
call STWDG()
let g:CSDark = 1

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
    set background=dark
    call STWDG()
    let g:CSDark = 1
  endif
endfunction

"">> continue vimrc
source $HOME/vimfiles/vimrc.vim

"">> ensure vimswap
if isdirectory($HOME.'/.vimswap') == 0
  :silent !md \%UserProfile\%\\.vimswap
endif

"">> ensure vimundo
if isdirectory($HOME.'/.vimundo') == 0
  :silent !md \%UserProfile\%\\.vimundo
endif

"">> LanguageTool
let g:languagetool_jar='$HOME\LanguageTool-4.6\languagetool-commandline.jar'

"">> nicer font
set guifont=Lucida_Console:h9  "better to append size so that it's reported
set linespace=4

"">> open equivalent LaTeX compiled PDF
function! CompiledPDF()
  execute 'silent !start '.expand('%:p:r').".pdf"
endfunction
" this function is only needed for markdown and TeX files

"">> Windows Explorer on current file
nnoremap <F11> :!start explorer /select,%:p<CR>
inoremap <F11> <Esc><F11>

