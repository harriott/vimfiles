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

set lines=34  "gVim with tabs just fits in my N130 at 600pixel height
set columns=106  "good for tw=99 with linenumbers up to 9999, and a foldcolumn
" F3 toggles a better size for reading prose:
nnoremap <F3> :call ColumnsToggle()<cr>
let g:columnsdefault = 1
function! ColumnsToggle()
    if g:columnsdefault
        set columns=82
        let g:columnsdefault = 0
    else
        set columns=106
        let g:columnsdefault = 1
    endif
endfunction

if exists("g:loaded_matchparen")
  autocmd VimEnter * NoMatchParen  "turn off parenthesis matching at start
endif
" and <leader>p toggles it:
nnoremap <leader>p :call ParenthsToggle()<cr>
let g:parenthesismatch = 0
function! ParenthsToggle()
    if g:parenthesismatch
        NoMatchParen
        let g:parenthesismatch = 0
    else
		DoMatchParen
        let g:parenthesismatch = 1
    endif
endfunction

nnoremap <Space> za  " handy for toggling folds open/closed

" toggle cursorcolumn:
nnoremap <silent><leader>o :set cuc! cuc? <CR>
" toggle cursorline:
nnoremap <silent><leader>l :set cul! cul? <CR>

" have two installed DokuWiki files open ready configured:
autocmd BufRead,BufNewFile */pages/wiki/dokuwiki.txt,*/pages/wiki/syntax.txt setlocal ft=dokuwiki fdl=1

let g:solarized_contrast="high"    "default value is normal

