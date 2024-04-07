
" ------------------------------------------------------------
" Joseph Harriott - Thu 03 Aug 2023
" $vimfiles\vimrc-Win10.vim  source'd by  $machBld\user\_vimrc
" ------------------------------------------------------------

if $computername == 'T430I73520M' | let mapleader = '#' | endif  " because keyboard has no  \

""> 0 quit if called from Git's vim
if $VIM == '/usr/share/vim' | finish | endif  " (adapted for Git-2.8.1-64-bit.exe on Windows 10)

""> 1 vimrc_example.vim
if !has('nvim')
  source $HOME/vim/vimenter/vimrc_example.vim  " $vimfiles/vimrc_example.vim
endif

""> 2 mswin.vim
source $VIMRUNTIME/mswin.vim
" but revert Ctrl-A back to number increment:
unmap <C-A>
" and Ctrl-F back to move forward:
if !has('nvim')
   unmap <C-F>
endif " (see  $ProgramFiles\Neovim\share\nvim\runtime\mswin.vim)

""> 3 my initial settings
" set noloadplugins
let $USER = 'troin'

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
source $HOME/vim/vimenter/vimrc.vim  " $vimfiles/vimrc.vim

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

"">> paths
if hostname() == 'HPEB840G36'
  let $Drpbx = 'D:\Dropbox'
elseif hostname() == 'HPEB840G37'
  let $Drpbx = $HOME.'\Dropbox'
endif
  let $DJH = $Drpbx.'\JH'
    let $Cfzd = $DJH.'\Cafezoide'
      let $CzPhy = $Cfzd.'\PhysicalProperty'
    let $cITh = $DJH.'copied\IT-handy'
    let $core = $DJH.'\core'
      let $ITstack = $core.'\IT_stack'
        let $CrPl = $ITstack.'\CP'
          let $LTXj = $CrPl.'\documenting\LaTeX\jo'
        let $ITscc = $ITstack.'\copied-code'
        let $ITscr = $ITstack.'\copied-reference'
        let $machLg = $ITstack.'\MSWin\ml-'.$computername
        let $onGH = $ITstack.'\onGitHub'
          let $misc = $onGH.'\misc'
          let $MSwin10 = $onGH.'\OS-MSWin10'
            let $machBld = $MSwin10.'\mb\'.$computername
            let $MSWSL = $MSwin10.'\WSL'
          let $OSAB = $onGH.'\OS-ArchBuilds'
          let $OSAT = $onGH.'\OS-Android-Termux'
          let $SPD = $onGH.'\SyncPortableDrives\RoboCopy\'.$computername
          let $vimfiles = $onGH.'\vimfiles'
            let $vfp = $vimfiles.'\pack'
    let $FrFa = $DJH.'\F+F'
      let $FFIdF = $FrFa.'\France\IdF'  " $FFIdF  used in  $TeNo
    let $JHw = $DJH.'\work'
      let $JHm = $JHw.'\IT-Jekyll-harriott-minima'
    let $jtIT = $DJH.'\technos\IT'
    let $Thb = $DJH.'\Thb-dr'
    let $tIs = $DJH.'\technos\IT-storage'  " $tIs\diskUsage.txt
  let $GHrUse = $Drpbx.'\CGHrepos'

"">>> TeX locations
let $MD4PDF = $onGH.'/pandoc-md4pdf'
let $Pandoc = $HOME.'/AppData/Roaming/Pandoc'
let $tex = $HOME.'/AppData/Roaming/MiKTeX/tex'

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
nnoremap <F11> :!start explorer /select,%:p<CR>
inoremap <F11> <Esc><F11>

