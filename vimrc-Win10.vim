
" ---------------------------------
" Joseph Harriott - Mon 07 Mar 2022
" sourced by  $machine\troin\_vimrc
" ---------------------------------

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

"">> open in Emacs
function! OpenInEmacs()
  execute 'silent !C:\Emacs\emacs-28.1\bin\runemacs.exe --no-splash +'.line('.').' '.expand('%:p')
endfunction

"">> open equivalent LaTeX compiled PDF
function! CompiledPDF()
  execute 'silent !start '.expand('%:p:r').".pdf"
endfunction
" this function is only needed for markdown and TeX files

"">> paths
" $Drpbx  &  $USER  are set in  $machine > $USER > _vimrc
let $cITh = $Drpbx.'/JH/copied/IT-handy'
  let $GHrUse = $cITh.'/GHrepos'  " GitHub Repositories Use
let $core = $Drpbx.'/JH/core'
  let $ITstack = $core.'/IT_stack'
    let $CrPl = $ITstack.'/CP'
let $IT1 = $Drpbx.'\JH\Technos\IT1'
let $IT0s = $Drpbx.'\JH\Technos\IT0-storage'  " $IT0s\diskUsage.txt
let $SPD = $onGH.'\SyncPortableDrives\RoboCopy\T430i73520M'
let $MSWin10 = $onGH.'\MSWin10'
let $vimfiles = $onGH.'\vimfiles'

"">>> TeX locations
let $MD4PDF = $onGH.'/md4pdf'
let $Pandoc = $HOME.'/AppData/Roaming/Pandoc'
let $tex = $HOME.'/AppData/Roaming/MiKTeX/tex'

"">> vim-airline
let g:webdevicons_enable_airline_statusline = 0  " to be able to see  fileformat

"">> vim-langtool
let g:langtool_jar = 'C:\LanguageTool\languagetool-commandline.jar'

"">> vim-LanguageTool
let g:languagetool_jar='C:\LanguageTool\languagetool-commandline.jar'

"">> Windows Explorer on current file
nnoremap <F11> :!start explorer /select,%:p<CR>
inoremap <F11> <Esc><F11>

