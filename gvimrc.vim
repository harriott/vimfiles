" -----------------------------------------------------------------------
" adapted directly from gvim's $VIM/vim74/gvimrc_example.vim
" source this file in _gvimrc like this: source $HOME/vimfiles/gvimrc.vim
" -----------------------------------------------------------------------

" An example for a gvimrc file.
" The commands in this are executed when the GUI is started.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2001 Sep 02
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.gvimrc
"	      for Amiga:  s:.gvimrc
"  for MS-DOS and Win32:  $VIM\_gvimrc
"	    for OpenVMS:  sys$login:.gvimrc

" Make external commands work through a pipe instead of a pseudo-tty
"set noguipty

" set the X11 font to use
" set guifont=-misc-fixed-medium-r-normal--14-130-75-75-c-70-iso8859-1

set ch=2		" Make command line two lines high

set mousehide		" Hide the mouse when typing text

" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

" Only do this for Vim version 5.0 and later.
if version >= 500

  " I like highlighting strings inside C comments
  let c_comment_strings=1

  " Switch on syntax highlighting if it wasn't on yet.
  if !exists("syntax_on")
    syntax on
  endif
  " - somewhere, syntax_on has been set to 1

  " Switch on search pattern highlighting.
  set hlsearch

  " For Win32 version, have "K" lookup the keyword in a help file
  "if has("win32")
  "  let winhelpfile='windows.hlp'
  "  map K :execute "!start winhlp32 -k <cword> " . winhelpfile <CR>
  "endif

  " Set nice colors
  " background for normal text is light grey
  " Text below the last line is darker grey
  " Cursor is green, Cyan when ":lmap" mappings are active
  " Constants are not underlined but have a slightly lighter background
  " highlight Normal guibg=grey90
  " highlight Cursor guibg=DarkGreen guifg=NONE
  " highlight lCursor guibg=Cyan guifg=NONE
  " highlight NonText guibg=grey80
  " highlight Constant gui=NONE guibg=grey95
  " highlight Special gui=NONE guibg=grey95

endif

" -----------------------
" my modifications follow:
" -----------------------
set go-=m  "removes menubar
" and Ctrl+F1 can toggle it:
nnoremap <C-F1> :if &go=~#'m'<Bar>set go-=m<Bar>else<Bar>set go+=m<Bar>endif<CR>

set go-=T  "removes toolbar
set lines=34  "gVim with tabs just fits in my N130 at 600pixel height
set columns=106  "good for tw=99 with linenumbers up to 9999, and a foldcolumn

set background=light  " for solarized
let g:solarized_contrast="high"    "default value is normal

" setting guibg after adjustments to solarised:
highlight ShowTrailingWhitespace ctermbg=White guibg=White

autocmd VimEnter * NoMatchParen  "turn off parenthesis matching at start
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

" -------
" folding
" -------
nnoremap <Space> za  " handy for toggling folds open/closed

" ----------
" gvimrc ends
" ----------
