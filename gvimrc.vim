" -----------------------------------------------------------------------
" source this file in _gvimrc like this: source $HOME/vimfiles/gvimrc.vim
" -----------------------------------------------------------------------

" adapted directly from gvim's $VIM/vim74/gvimrc_example.vim:
" -----------------------------------------------------------
set cmdheight=2		" Make command line two lines high
set mousehide		" Hide the mouse when typing text

" Only do this for Vim version 5.0 and later.
if version >= 500

  " I like highlighting strings inside C comments
  let c_comment_strings=1

  " Switch on syntax highlighting if it wasn't on yet.
  if !exists("syntax_on")
    syntax on
  endif
  " - somewhere, syntax_on has already been set to 1

  " Switch on search pattern highlighting.
  set hlsearch

endif

" --------------------
" my (JH) additions follow:
" --------------------
set go-=m  "removes menubar
" and Shift+F1 can toggle it:
nnoremap <S-F1> :if &go=~#'m'<Bar>set go-=m<Bar>else<Bar>set go+=m<Bar>endif<CR>

set go-=T  "removes toolbar

" have two installed DokuWiki files open ready configured:
autocmd BufRead,BufNewFile */pages/wiki/dokuwiki.txt,*/pages/wiki/syntax.txt setlocal ft=dokuwiki fdl=1

let g:solarized_contrast="high"    "default value is normal, for solarized & tomorrow

" window sizes
" ------------
set lines=34  "gVim with tabs just fits in my N130 at 600pixel height
if has('unix') && g:monitor == '1680x1050'
  set lines=60
endif
set columns=106  "good for tw=99 with linenumbers up to 9999, and a foldcolumn

" toggle a better size for reading prose
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

