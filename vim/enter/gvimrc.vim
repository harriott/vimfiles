" vim: set fdl=1:

" $vimfiles/vim/enter/gvimrc.vim
"  not used by  Nvim
"  source'd by
"   $vimfiles/vim/enter/gvimrc-Arch.vim
"   $vimfiles/vim/enter/gvimrc-Win10.vim

let g:sourced_gvimrc_vim = 1

""> 0 preliminaries
" adapted from  $VIMRUNTIME/gvimrc_example.vim

" Only do this for Vim version 5.0 and later.
if version >= 500
  " switch on syntax highlighting if it wasn't on yet
  if !exists("syntax_on")
    syntax on
  endif
  " syntax on  is done in  $VIMRUNTIME/defaults.vim (check with  let g:syntax_on)
endif

" set cmdheight=2  " make command line two lines high
set mousehide  " hide the mouse when typing text

""> 1 my additional initial settings
highlight SpecialKey guifg=#4d4d4c
" - reduce intrusiveness of  CR  characters
let c_comment_strings=1  " I like highlighting strings inside C comments
set cursorline
set guioptions-=T  "removes toolbar (se go+=T)
set hlsearch  " switch on search pattern highlighting
set visualbell t_vb=  " disable beeps

"">> high contrast Solarized
let g:solarized_contrast="high"  "default value is normal, for solarized & tomorrow

"">> menubar
set guioptions-=m  " removes it by default

" Ctrl+f1 can toggle it:
nnoremap <C-F1> :if &guioptions=~#'m'<Bar>set guioptions-=m<Bar>else<Bar>set guioptions+=m<Bar>endif<CR>

"">> gVim siwe
" set lines=34  " good for screen with 600 pixel height
set lines=46  " good for screen with 768 pixel height
if has('unix') && g:monitorheight == '900'
  set lines=50
elseif has('unix') && g:monitorheight == '1050'
  set lines=60
elseif has('unix') && g:monitorheight == '1080'
  set lines=63
elseif has('win32') && g:monitorheight == '1080'
  set lines=60
endif
set columns=106  "good for tw=99 with linenumbers up to 9999, and a foldcolumn

"">>> toggle width
source $vimfiles/vim/enter/GUIs.vim
if hostname() == 'sbMb'
  " se co=160  takes all rh side
  if v:lang =~ 'fr'
    nnoremap <leader>à :call ToggleGUIwidth(106,160)<cr>
  else
    nnoremap <leader>0 :call ToggleGUIwidth(106,160)<cr>
  endif
endif

