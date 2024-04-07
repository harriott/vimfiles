
" $vimfiles/vimrc-Arch.vim  sourced from my  $ABjo/textEdit/Vim/vimrc

source $HOME/.vim/vimenter/vimrc-GNULinux.vim  " $vimfiles/vimrc-GNULinux.vim

if hostname() == 'AsusW202'
  set redrawtime=4000  " for  linux-pn.dw
elseif hostname() == 'sbMb'
  set redrawtime=50000  " for  pack/packs-cp/opt/vim-markdown/test/syntax.vader
endif

set linespace=2

""> LanguageTool
let g:langtool_jar = $ITscc.'/CP/LanguageTool/languagetool-commandline.jar'
let g:languagetool_jar = $ITscc.'/CP/LanguageTool/languagetool-commandline.jar'

""> open in Emacs
function! OpenInEmacs()
  execute 'silent !emacs --no-splash +'.line('.').' '.expand('%:p').' & disown'
endfunction
" this function is only needed for markdown and TeX files

""> open equivalent LaTeX compiled PDF
function! CompiledPDF()
  execute 'silent !zathura '.expand('%:p:r').'.pdf & disown'
endfunction
" this function is only needed for markdown and TeX files

""> open file manager on directory of current buffer
if $XDG_CURRENT_DESKTOP == 'KDE'
  " Dolphin
  noremap <F11> :silent !dolphin %:p:h &<CR>
  imap <F11> <Esc><F11>
else " assume Openbox
  " PCManFM
  noremap <F11> :cd %:p:h<CR><bar>:silent !pcmanfm &<CR>
  imap <F11> <Esc><F11>
endif

""> select colorscheme, and plugin for showing trailing white spaces
if has('nvim')
  colorscheme jellybeans
  " colorscheme wombat
  packadd vim-better-whitespace
  EnableWhitespace
  highlight ExtraWhitespace ctermbg=blue
  let g:better_whitespace_operator=''
else
  colorscheme tomorrow
  let g:useSTW = 1
endif

