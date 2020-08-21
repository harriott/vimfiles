
" Joseph Harriott - Thu 23 Apr 2020
" ---------------------------------

"----------------------
"----------------------
" Extra configurations
" ---------------------
"----------------------
"
" (keep this file in your plugin directory so's it's automatically sourced at startup)

" clear the registers b-z
command! WipeReg for i in range(98,122) | silent! call setreg(nr2char(i), []) | endfor

" get filepath into register f
nnoremap <leader>f :let@f=@%<CR>

if has('nvim')
  " for some edge cases
  function! QuitNoName()
    if len(getbufinfo({'buflisted':1})) == 1
      q!
    endif
  endfunction
  " noremap <F12> :call QuitNoName() <CR>
endif

" fcrontab
if has('nvim')
  autocmd BufRead,BufNewFile fcr-* nnoremap <buffer> <F4> :call BackupQuit()<CR>
  autocmd BufRead,BufNewFile fcr-* inoremap <buffer> <F4> <Esc>:call BackupQuit()<CR>
endif

" switch on DokuWiki comment highlighting (read by ./syntax/dokuwiki.vim)
let dokuwiki_comment=1

" Underline using dashes automatically
" ------------------------------------
" (http://vim.wikia.com/wiki/Underline_using_dashes_automatically)
" eg :Underline ~+-  gives underlining like ~+-~+-~+-~+-~+-~+-
function! s:Underline(chars)
  let chars = empty(a:chars) ? '-' : a:chars
  let nr_columns = virtcol('$') - 1
  let uline = repeat(chars, (nr_columns / len(chars)) + 1)
  put =strpart(uline, 0, nr_columns)
endfunction
command! -nargs=? Underline call s:Underline(<q-args>)
" map:
nnoremap <leader>u :Underline

" -----
" Dates
" -----
if has('unix')
  noremap <leader>yp :lan fr_FR.UTF-8<CR>:pu=strftime('%a %d %b %Y')<CR>:lan en_GB.UTF-8<CR>
elseif has('win32')
  noremap <leader>yp :lan tim French<CR>:pu=strftime('%a %d %b %Y')<CR>:lan tim English_United Kingdom<CR>
endif

" abbreviation for current date
" -----------------------------
iab <expr> d8- strftime("%y-%m-%d")
iab <expr> d8a strftime("%Y-%m-%d-%a")
iab <expr> d8c strftime("%y%m%d")
iab <expr> d8d strftime("%a %d %b %Y")
iab <expr> d8l strftime("%Hh%M %a %d %b %Y")
iab <expr> d8m strftime("%y%m%d-%Hh%Mm")
iab <expr> d8p strftime("%Y-%m-%d %H:%M")
iab <expr> d8s strftime("%d/%m/%y")
iab <expr> d8t strftime("%y%m%d(%Hh%Mm%S)")

" --------
" Grepping
" --------
" Strip the current selection & store it in the l then s register:
function! StripStoreCurSel()
  let l:lastvimsearch = getreg('/')
  " remove the '\V' (very nomagic) prefix, if it's there:
  let @l = substitute(l:lastvimsearch, "^\\\\V", "", "")
  " remove any leading hyphens that somehow cause chaos in Ggrep:
  let @h = substitute(@l, "^-\\+", "", "")
  " remove '\<' & '\>' (:s#\(^\\<\|\\>$\)##g):
  let @s = substitute(@h, "\\(^\\\\<\\|\\\\>$\\)", "", "g")
endfunction

" cd to file's and vimgrep for last search
nnoremap <leader>vg :call VimgrepSelection()<CR>
function! VimgrepSelection()
  cd %:p:h
  call StripStoreCurSel()
  " execute 'silent! vimgrep #'.@l.'#j *.{md,txt,vim} **/*.{md,txt,vim}'
  let l:filetypes = '*.{md,sh,txt,vim}'
  execute 'silent! vimgrep #'.@l.'#j '.l:filetypes' **/'.l:filetypes
  copen
endfunction

" ---------
" searching
" ---------
if !exists("g:loaded_matchparen")
  autocmd VimEnter * NoMatchParen  "turn off parenthesis matching at start
endif
" and <leader>pt toggles it:
nnoremap <leader>pt :call ParenthsToggle()<cr>
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

" clear search highlights
nnoremap <leader>n :nohlsearch<CR>
vnoremap <leader>n <Esc>:nohlsearch<CR>

" re-open the quickfix-window, eg to look again at results of vimgrep
noremap <leader>q :copen<CR>

" select to end of line in unix
if has('unix')
  nnoremap <leader>v v$hy
endif

set ignorecase incsearch smartcase

" Search within a visual selection.
" ---------------------------------
"  before calling this you need to search for something, then
"   either before or any number of times after calling this function,
"     you need to visually select an area, then <Esc>
"   the search will appear highlighted only within your visual selections
"   next search returns to normal
function! ConvertSearchForVisualSelection()
  let @/ = '\%V'.getreg('/')
  echo 'last search is now active only in your escaped visual selection'
endfunction
nnoremap <leader>vs :call ConvertSearchForVisualSelection()<CR>

