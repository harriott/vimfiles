
" sourced from my Arch Linux installation's ~/.vimrc

source $HOME/.vim/vimrc-GNULinux.vim

set linespace=2

""> LanguageTool
let g:langtool_jar = '/usr/share/java/LanguageTool/languagetool-commandline.jar'
" let g:languagetool_cmd = '/usr/bin/languagetool'

""> load the matchit plugin if the required features are available
if has('syntax') && has('eval')
  packadd! matchit
endif

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

""> select colorscheme and plugin for showing trailing white spaces
if has('nvim')
  packadd jellybeans.vim
  colorscheme jellybeans
  " packadd vim-wombat-scheme
  " colorscheme wombat
  packadd vim-better-whitespace
  EnableWhitespace
  highlight ExtraWhitespace ctermbg=blue
  let g:better_whitespace_operator=''
else
  colorscheme tomorrow
  packadd vim-ingo-library
  packadd vim-ShowTrailingWhitespace
endif

