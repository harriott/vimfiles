
" -----------------------------------------------------------------------
" sourced by  $vimfiles/gvimrc-Arch.vim
" sourced by  $vimfiles/gvimrc-Win10.vim
" -----------------------------------------------------------------------

""> 0 preliminaries
" adapted from  $VIMRUNTIME/gvimrc_example.vim

" Only do this for Vim version 5.0 and later.
if version >= 500

  " Switch on syntax highlighting if it wasn't on yet.
  if !exists("syntax_on")
    syntax on
  endif
  " - somewhere, syntax_on has already been set to 1

endif

set cmdheight=2  " make command line two lines high
set mousehide  " hide the mouse when typing text

""> 1 my additional initial settings
highlight SpecialKey guifg=#4d4d4c
" - reduce intrusiveness of  CR  characters
let c_comment_strings=1  " I like highlighting strings inside C comments
set cursorline
set guioptions-=T  "removes toolbar
set hlsearch  " switch on search pattern highlighting
set visualbell t_vb=  " disable beeps

"">> high contrast Solarized
let g:solarized_contrast="high"  "default value is normal, for solarized & tomorrow

"">> menubar
" Shift+F1 can toggle it:
nnoremap <S-F1> :if &guioptions=~#'m'<Bar>set guioptions-=m<Bar>else<Bar>set guioptions+=m<Bar>endif<CR>

set guioptions-=m  " removes it by default

"">> toggle window width
" possibly a better size for reading prose
nnoremap <leader>8 :call EightyTwoColumns()<cr>
let g:columnsdefault = 1
function! EightyTwoColumns()
    if g:columnsdefault
        set columns=82
        let g:columnsdefault = 0
    else
        set columns=106
        let g:columnsdefault = 1
    endif
endfunction

"">> window sizes
" set lines=34  " good for screen with 600 pixel height
set lines=44  " good for screen with 768 pixel height
if has('unix') && g:monitorheight == '900'
  set lines=50
elseif has('unix') && g:monitorheight == '1050'
  set lines=60
elseif has('unix') && g:monitorheight == '1080'
  set lines=63
endif
set columns=106  "good for tw=99 with linenumbers up to 9999, and a foldcolumn

