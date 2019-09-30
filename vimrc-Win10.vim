" -------------------------------------------------------------
" This is a wrapper vimrc for use on a MS Windows 10 system.
" Joseph Harriott - http://momentary.eu/ - Wed 20 Jun 2018
" this should be sourced by  C:\Users\jnbh\_vimrc
" --------------------------------------------------------------

" quit if called from Git's vim (adapted for Git-2.8.1-64-bit.exe on Windows 10):
if $VIM == '/usr/share/vim'
  finish
endif

" Debug:
" set noloadplugins
" source ~\vimfiles\pack\git\start\vim-fugitive\plugin\fugitive.vim
" source ~\vimfiles\pack\git\start\vim-fugitive\ftdetect\fugitive.vim
" source ~\vimfiles\pack\git\start\vim-fugitive\autoload\fugitive.vim

" first, some general settings
source $HOME/vimfiles/vimrc_example.vim

source $VIMRUNTIME/mswin.vim
" but revert Ctrl-A back to number increment:
unmap <C-A>
" and Ctrl-F back to move forward:
unmap <C-F>

" ---------------------------------
" More of my preferences for MSWin:

" undofiles:
if isdirectory($HOME . '/.vimundo') == 0
  :silent !md \%UserProfile\%\\.vimundo
endif

" swapfiles:
if isdirectory($HOME . '/.vimswap') == 0
  :silent !md \%UserProfile\%\\.vimswap
endif

"  Point to my more portable vimrc:
source $HOME/vimfiles/vimrc.vim

" A nicer font for MSWin:
set guifont=Lucida_Console:h9  "better to append size so that it's reported
set linespace=4

" Open Windows Explorer showing directory of current buffer
nmap <F11> :!start explorer /select,%:p<CR>
imap <F11> <Esc><F11>

let g:languagetool_jar='$HOME\LanguageTool-4.6\languagetool-commandline.jar'

" Colour Scheme
" ------------
" start with Solarized dark
colorscheme solarized
" reassign Solarized provided toggle for light/dark
autocmd VimEnter * call togglebg#map("<S-F5>")
" (in an autocmd to be sure it works with Arch vim-colors-solarized)

