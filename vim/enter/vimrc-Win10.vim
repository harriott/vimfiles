
" Joseph Harriott - ven 17 mai 2024

" $vimfiles\vim\enter\vimrc-Win10.vim
" source'd by
"  $MSWin10\mb\_vimrc-AZERTY
"  $vimfiles/nvim/init.vim

if $computername == 'T430I73520M' | let mapleader = '#' | endif  " because keyboard has no  \

""> 0 quit if called from Git's vim
if $VIM == '/usr/share/vim' | finish | endif  " (adapted for Git-2.8.1-64-bit.exe on Windows 10)

""> 1 vimrc_example.vim
if !has('nvim')
  source $vimfiles/vim/enter/vimrc_example.vim
endif

""> 2 mswin.vim
source $VIMRUNTIME/mswin.vim  " *map <c-f4>  to close window

" Undo some:
unmap <C-A>
" - revert Ctrl-A back to number increment:
if has('gui_running') && !has('nvim')
  unmap <c-f>
  " - ctrl-f back to move forward
endif
if has('nvim') && !exists('g:neovide')
  " it was  $ProgramFiles\Neovim\share\nvim\runtime\mswin.vim
  unmap <c-v>
endif

""> 3 my initial settings
let $USER = 'troin'
" set noloadplugins

"">> colorscheme
if !has('nvim')
  " 1) tomorrow dark
  function! STWDG()
    set background=dark
      let g:useSTW='1'
      " highlight ShowTrailingWhitespace ctermbg=Grey guibg=DarkGreen
      highlight ShowTrailingWhitespace ctermbg=Grey guibg=Black
    let g:CSDark = 1
  endfunction
  call STWDG()
  colorscheme tomorrow
  " set background=dark

  " 2) reliable light-dark toggle
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
endif

"">> continue vimrc
source $vimfiles/vim/enter/vimrc.vim

"">> ensure vimswap
if isdirectory($HOME.'/.vimswap') == 0
  :silent !md \%UserProfile\%\\.vimswap
endif

"">> ensure vimundo
if isdirectory($HOME.'/.vimundo') == 0
  :silent !md \%UserProfile\%\\.vimundo
endif

"">> nicer font
if hostname() == 'HPEB840G36'
  set guifont=Lucida_Console:h8
else
  set guifont=Lucida_Console:h9
endif
" - better to append size so that it's reported
set linespace=4

"">> open in Emacs
function! OpenInEmacs()
  execute 'silent !C:\Emacs\emacs-29.2\bin\runemacs.exe --no-splash +'.line('.').' '.expand('%:p')
endfunction

"">> open equivalent LaTeX compiled PDF
function! CompiledPDF()
  execute 'silent !start '.expand('%:p:r').".pdf"
endfunction
" this function is only needed for markdown and TeX files

"">> vim-airline
let g:webdevicons_enable_airline_statusline = 0  " to be able to see  fileformat

"">> vim-langtool
" let g:langtool_jar = 'C:\LanguageTool\languagetool-commandline.jar'
let g:langtool_jar = $ITscc.'\CP\LanguageTool\languagetool-commandline.jar'
" C:\Users\jharr\Dropbox\JH\core\IT_stack\copied-code\CP\LanguageTool\languagetool-commandline.jar

"">> vim-LanguageTool
" let g:languagetool_jar='C:\LanguageTool\languagetool-commandline.jar'
let g:languagetool_jar = $ITscc.'\CP\LanguageTool\languagetool-commandline.jar'

"">> Windows Explorer on current file
nnoremap <F11> :!start explorer %:h<CR><CR>
inoremap <F11> <Esc><F11>

