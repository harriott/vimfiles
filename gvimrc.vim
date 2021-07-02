" vim: fdm=expr ft=vim.vimconfig:

" -----------------------------------------------------------------------
" source this file in _gvimrc like this: source $HOME/vimfiles/gvimrc.vim
" -----------------------------------------------------------------------

""> 0 preliminaries
" adapted directly from gvim's $VIM/vim74/gvimrc_example.vim:

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

set cmdheight=2		" Make command line two lines high
set mousehide		" Hide the mouse when typing text

""> 1 my additional initial settings
set guioptions-=T  "removes toolbar

"">> high contrast
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

"">> wiki/dokuwiki
" have two pre-installed DokuWiki files open ready configured
autocmd BufRead,BufNewFile */pages/wiki/dokuwiki.txt,*/pages/wiki/syntax.txt setlocal ft=dokuwiki fdl=1

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

