
" $vfv/enter/vimrc-Arch.vim
" sourced from my
"  $ABjo/textEdit/Vim/vimrc
"  $vfn/init.vim

if hostname() == 'DOP3040D11S'
  set redrawtime=4000  " for  linux-pn.dw
elseif hostname() == 'sbMb'
  set redrawtime=50000  " for  pack/packs-cp/opt/vim-markdown/test/syntax.vader
endif

set linespace=2

""> 1 LanguageTool
let g:langtool_jar = $ITccl.'/CP/LanguageTool/languagetool-commandline.jar' " :exe 'edit '.g:langtool_jar
let g:languagetool_jar = $ITccl.'/CP/LanguageTool/languagetool-commandline.jar'

""> 1 open in Emacs
function! OpenInEmacs()
  execute 'silent !emacs --no-splash +'.line('.').' '.expand('%:p').' & disown'
endfunction
" this function is only needed for markdown and TeX files

""> 1 open equivalent LaTeX compiled PDF
function! CompiledPDF()
  execute 'silent !zathura '.expand('%:p:r').'.pdf & disown'
endfunction
" this function is only needed for markdown and TeX files

""> 1 open file manager on directory of current buffer
if $XDG_CURRENT_DESKTOP == 'KDE'
  " Dolphin
  noremap <F11> :silent !dolphin %:p:h &<CR>
  imap <F11> <Esc><F11>
else " assume Openbox
  " PCManFM
  noremap <F11> :cd %:p:h<CR><bar>:silent !pcmanfm &<CR>
  imap <F11> <Esc><F11>
endif

""> 1 select colorscheme & vim-ShowTrailingWhitespace
if $myDrA
  if !has('nvim')
    colorscheme tomorrow
    let g:useSTW = 1  " for  $vfv/plugin/packsFull.vim
  endif  " gVim, as  deus  later selected for plain  Vim
endif

""> 2 vimrc-linux.vim
source $vfv/enter/vimrc-linux.vim  " $vfv/enter/vimrc-linux.vim

