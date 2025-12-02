
" Joseph Harriott - ven 01 nov 2024

" $vfv\enter\vimrc-Win10.vim
" source'd by
"  $MSWin10\mb\_vimrc-AZERTY
"  $vfn/init.vim

" if $computername == 'HPEB840G36' | let mapleader = 'ù' | endif  " until  $MSWin10\AZERTY.ahk
if $computername == 'T430I73520M' | let mapleader = '#' | endif  " because keyboard has no  \

""> 0 quit if called from Git's vim
if $VIM == '/usr/share/vim' | finish | endif  " (adapted for Git-2.8.1-64-bit.exe on Windows 10)

""> 1 vimrc_example.vim
if !has('nvim')
  source $vfv/enter/vimrc_example.vim
endif

""> 2 mswin.vim
" $env:programfiles\Neovim\share\nvim\runtime
" *map <c-f4>  to close window

if filereadable(expand("$VIMRUNTIME/mswin.vim"))
  source $VIMRUNTIME/mswin.vim
else
  source $VIMRUNTIME/scripts/mswin.vim
endif

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
let g:zip_unzipcmd= "C:/Git/usr/bin/unzip.exe"
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
source $vfv/enter/vimrc.vim

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
set guifont=Lucida_Console:h8  " smallest available (for 1366x768 screen)
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
let g:langtool_jar = $cITcc.'\CP\LanguageTool\languagetool-commandline.jar'
" C:\Users\jharr\Dropbox\JH\core\IT_stack\copied-code\CP\LanguageTool\languagetool-commandline.jar

"">> vim-LanguageTool
" let g:languagetool_jar='C:\LanguageTool\languagetool-commandline.jar'
let g:languagetool_jar = $cITcc.'\CP\LanguageTool\languagetool-commandline.jar'

"">> Windows Explorer on current file
nnoremap <F11> :!start explorer %:p:h<CR><CR>
inoremap <F11> <Esc><F11>

