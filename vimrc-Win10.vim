
" -------------------------------------------------
" a wrapper vimrc for use on a MS Windows 10 system
" Joseph Harriott - Mon 28 Jun 2021
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
  set background=dark
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

"">> nicer font
set guifont=Lucida_Console:h9  "better to append size so that it's reported
set linespace=4

"">> open equivalent LaTeX compiled PDF
function! CompiledPDF()
  execute 'silent !start '.expand('%:p:r').".pdf"
endfunction
" this function is only needed for markdown and TeX files

"">> paths
let $IT1 = $DROPBOX.'\JH\Technos\IT1'
let $ITP = $DROPBOX.'\JH\Technos\IT0-Partitionable'  " $ITP\diskUsage.txt
let $SPD = $onGH.'\SyncPortableDrives\RoboCopy\T430i73520M'
let $vimfiles = $HOME.'\vimfiles'

"">>> TeX locations
let $MD4PDF = $onGH.'/md4pdf'
let $Pandoc = $HOME.'/AppData/Roaming/Pandoc'
let $tex = $HOME.'/AppData/Roaming/MiKTeX/tex'

"">> vim-langtool
" let g:languagetool_jar=$HOME.'\tools\LanguageTool-5.4\languagetool-commandline.jar'
let g:langtool_jar=$HOME.'\tools\LanguageTool-5.4\languagetool-commandline.jar'

"">> Windows Explorer on current file
nnoremap <F11> :!start explorer /select,%:p<CR>
inoremap <F11> <Esc><F11>

