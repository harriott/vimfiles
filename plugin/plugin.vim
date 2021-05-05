" vim: ft=vim:

" Joseph Harriott - Sun 28 Mar 2021
" ---------------------------------

" keep this file in your plugin directory so's it's automatically sourced at startup

""> buffer - finish a Git commit message
autocmd BufRead,BufNewFile /.git/COMMIT_EDITMSG/ nnoremap <F4> :wa<CR>:q<CR>
autocmd BufRead,BufNewFile /.git/COMMIT_EDITMSG/ inoremap <F4> <Esc>:wa<CR>:q<CR>

""> buffer - nnn temporary files
" clear nnn selections:
autocmd BufRead,BufNewFile /tmp/.nnn* nnoremap <buffer> <C-e> ggVGd:wq <CR>

" finish an nnn file rename:
autocmd BufRead,BufNewFile /tmp/.nnn* nnoremap <F4> :wa<CR>:q<CR>
autocmd BufRead,BufNewFile /tmp/.nnn* inoremap <F4> <Esc>:wa<CR>:q<CR>

""> buffer - packing msgFilterRules.dat
" pack msgFilterRules.dat "name" lines:
autocmd BufRead,BufNewFile *msgFilterRules.dat nnoremap <buffer> <F12> :%s#^name="\v(.*$)\n(^.*$)\n(^.*$)\n(^.*$)\n(^.*$)\n(^.*$)#name="\1░\2░\3░\4░\5░\6#g <bar> nohlsearch <CR>

" unpack msgFilterRules.dat "name" lines:
autocmd BufRead,BufNewFile *msgFilterRules.dat nnoremap <buffer> <S-F12> :%s#^name="\v(.*)░(.*)░(.*)░(.*)░(.*)░(.*)$#name="\1\r\2\r\3\r\4\r\5\r\6#g<CR>
"
" These hooks aren't in an  ftplugin/dat.vim  because there's no such default filetype.

""> buffer - refresh
" writes all changed buffers and reloads the current one
nnoremap <F5> :wa<CR>:e<CR>
inoremap <F5> <Esc>:wa<CR>:e<CR>
vnoremap <F5> <Esc>:wa<CR>:e<CR>

""> buffer - split window to a buffer
nnoremap <leader>s :buffers<CR>:sbuffer<Space>

""> clear registers b-z
command! WipeReg for i in range(98,122) | silent! call setreg(nr2char(i), []) | endfor

""> easy q macro
noremap Q @q

" qq  starts recording
" end recording in normal/visual with q
" (:reg q  shows what's been saved)
" [count]Q plays back

""> format - clear fancy punctuation
" - left & right double & single quotes (as these aren't mapped to a keyboard key)
" en dash, which can be copied from websites
" nnoremap <leader>2 :sil!%s/“/"/g<bar>:sil!%s/”/"/g<bar>:sil!%s/‘/'/g<bar>:sil!%s/’/'/g<cr>
nnoremap <leader>2 :call ClearFancyText()<cr>
function! ClearFancyText()
  :sil!%s/​//g
  :sil!%s/‌//g
  :sil!%s/‍//g
  :sil!%s/‎//g
  :sil!%s/‏//g
  :sil!%s/“/"/g
  :sil!%s/”/"/g
  :sil!%s/‘/'/g
  :sil!%s/’/'/g
  :sil!%s/–/-/g
  :sil!%s/―/-/g
  :sil!%s/…/.../g
  :sil!%s/，/,/g
endfunction

""> format - date abbreviations
iab <expr> d8- strftime("%y-%m-%d")
iab <expr> d8a strftime("%Y-%m-%d-%a")
iab <expr> d8c strftime("%y%m%d")
iab <expr> d8d strftime("%a %d %b %Y")
iab <expr> d8l strftime("%Hh%M %a %d %b %Y")
iab <expr> d8m strftime("%y%m%d-%Hh%Mm")
iab <expr> d8p strftime("%Y-%m-%d %H:%M")
iab <expr> d8s strftime("%d/%m/%y")
iab <expr> d8t strftime("%y%m%d(%Hh%Mm%S)")

""> format - date in French
if has('unix')
  noremap <leader>yp :lan fr_FR.UTF-8<CR>:pu=strftime('%a %d %b %Y')<CR>:lan en_GB.UTF-8<CR>
elseif has('win32')
  noremap <leader>yp :lan tim French<CR>:pu=strftime('%a %d %b %Y')<CR>:lan tim English_United Kingdom<CR>
endif

""> format - percent code
" convert url parenthesis, and various diacritics to percent code
" to switch the order of these substitutions, use  s#/\(.\{-}\)/\(.\{-}\)/#/\2/\1/#g

"">> from
" 9 here means convert back to parentheses (eg for a quoted url in tex):
nnoremap <leader>9 :call PercentUnicode()<cr>
function! PercentUnicode()
    :keepp s/%27/'/e
    :keepp s/%28/(/e
    :keepp s/%29/)/e
    :keepp s/%C3%82/Â/eg
    :keepp s/%C3%A0/à/eg
    :keepp s/%C3%A2/â/eg
    :keepp s/%C3%A4/ä/eg
    :keepp s/%C3%A3/ã/eg
    :keepp s/%C4%81/ā/eg
    :keepp s/%C2%BA/º/eg
    :keepp s/%C3%98/Ø/eg
    :keepp s/%C3%A7/ç/eg
    :keepp s/%C3%A8/è/eg
    :keepp s/%C3%A9/é/eg
    :keepp s/%C3%AA/ê/eg
    :keepp s/%C3%8E/Î/eg
    :keepp s/%C3%AE/î/eg
    :keepp s/%C3%B3/ó/eg
    :keepp s/%C3%B4/ô/eg
    :keepp s/%C3%B6/ö/eg
    :keepp s/%C3%BB/û/eg
    :keepp s/%C3%BC/ü/eg
    :keepp s/%C4%B1/ı/eg
    :keepp s/%C5%81/Ł/eg
    :keepp s/%C5%84/ń/eg
    :keepp s/%C5%93/œ/eg
    :keepp s/%C5%AB/ū/eg
    :keepp s/%E2%80%93/–/eg
    :keepp s/%E2%80%94/—/eg
endfunction
" if you need to work on a range, use  :<selection>call PercentUnicode()

"">> to
" 5 here means convert to % code (my general preference):
nnoremap <leader>5 :call UnicodePercent()<cr>
function! UnicodePercent()
    :keepp s/'/%27/eg
    :keepp s/(/%28/e
    :keepp s/)/%29/e
    :keepp s/Â/%C3%82/eg
    :keepp s/à/%C3%A0/eg
    :keepp s/â/%C3%A2/eg
    :keepp s/ä/%C3%A4/eg
    :keepp s/ã/%C3%A3/eg
    :keepp s/ā/%C4%81/eg
    :keepp s/º/%C2%BA/eg
    :keepp s/Ø/%C3%98/eg
    :keepp s/ç/%C3%A7/eg
    :keepp s/è/%C3%A8/eg
    :keepp s/é/%C3%A9/eg
    :keepp s/ê/%C3%AA/eg
    :keepp s/Î/%C3%8E/eg
    :keepp s/î/%C3%AE/eg
    :keepp s/ó/%C3%B3/eg
    :keepp s/ô/%C3%B4/eg
    :keepp s/ö/%C3%B6/eg
    :keepp s/û/%C3%BB/eg
    :keepp s/ü/%C3%BC/eg
    :keepp s/ı/%C4%B1/eg
    :keepp s/Ł/%C5%81/eg
    :keepp s/ń/%C5%84/eg
    :keepp s/œ/%C5%93/eg
    :keepp s/ū/%C5%AB/eg
    :keepp s/–/%E2%80%93/eg
    :keepp s/—/%E2%80%94/eg
endfunction

""> format - remove square bracketed text
" as in Wikipedia articles
nnoremap <leader>[ :s/\m\[.\{-}]//g<CR>

""> format - TwiddleCase
function! TwiddleCase(str)
  if a:str ==# toupper(a:str)
    let result = tolower(a:str)
  elseif a:str ==# tolower(a:str)
    let result = substitute(a:str,'\(\<\w\+\>\)', '\u\1', 'g')
  else
    let result = toupper(a:str)
  endif
  return result
endfunction
vnoremap ~ y:call setreg('', TwiddleCase(@"), getregtype(''))<CR>gv""Pgv

""> format - underline
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

""> ft aesl - Thymio's Aseba code
" I suppose that sgml filetype might be more appropriate,
" but I use xml filetype because it has folding
autocmd BufNewFile,BufRead *.aesl setlocal filetype=xml

""> ft defaults
set shiftwidth=4
set tabstop=4
set tw=99

""> ft dokuwiki
" comment highlighting on - ../syntax/dokuwiki.vim
let dokuwiki_comment=1

""> ft LaTeX syntax folding
" on before opening a buffer:
let g:tex_fold_enabled=1
" check for Pandoc template
autocmd BufReadPre *.cls,*.dtx,*.sty,*.tex let b:PandocLaTeX = 0
autocmd BufReadPre *templates/*.latex let b:PandocLaTeX = 1

"">> md4pdfLog.tex
" turn off syntax folding for the long log files from md4pdf.ps1
autocmd BufNewFile,BufRead *-md4pdfLog.tex setlocal fdm=manual

""> ft vimscript
" lesser indentation of continuation line
let g:vim_indent_cont = &sw

""> ftplugin/xml.vim
" XML syntax folding on:
let g:xml_syntax_folding = 1

""> get g:vimfiles location
if empty(matchstr($HOME, '/home/'))
  let g:vimfiles = $HOME.'\vimfiles'
else
  let g:vimfiles = $HOME.'/.vim'
endif

""> grab my settings
function! GrabWrite(toGrab)
  " only to be called from within a parent function that has just before opened an empty buffer
  silent execute 'Bufferize ' . a:toGrab
  blast
  normal! ggVGd
  bdelete
  blast
  normal! p
  write
endfunction

"">> called from grabbed/grabMaps.sh
function! GrabCommands()
  exe 'edit '.g:vimfiles.'/grabbed/commands.txt'
  normal! VGd
  call GrabWrite("command")
endfunction

function! GrabFnMaps()
  exe 'edit '.g:vimfiles.'/grabbed/FnMaps.txt'
  normal! ggVGd
  call GrabWrite("map|map!")
  v/<.\=.\=F.*>/d
  nohlsearch
  write
endfunction

function! GrabPlugMaps()
  exe 'edit '.g:vimfiles.'/grabbed/PlugMaps.txt'
  normal! ggVGd
  call GrabWrite("map|map!")
  v/<Plug>/d
  nohlsearch
  write
endfunction

" grab runtimepath
function! GrabRtp()
  exe 'edit '.g:vimfiles.'/grabbed/runtimepath.txt'
  normal! ggVGd
  call GrabWrite("echo &runtimepath")
  %s/,/\r/g
  nohlsearch
  write
endfunction

function! GrabScriptnames()
  exe 'edit '.g:vimfiles.'/grabbed/'.hostname().'-scriptnames.txt'
  normal! ggVGd
  call GrabWrite("scriptnames")
endfunction

function! GrabSimpleMaps()
  exe 'edit '.g:vimfiles.'/grabbed/simpleMaps.txt'
  normal! ggVGd
  call GrabWrite("map|map!")
  silent! exe 'g/<.\=.\=F.*>/d'
  silent! exe 'g/<Plug>/d'
  silent! exe 'g/<SNR>/d'
  g/ /d " non-breaking space
  nohlsearch
  write
endfunction

""> layout - toggle relativenumber
nnoremap <silent><leader>rn :set rnu! rnu? <CR>

""> layout - tabline
" set showtabline=1
" because it's somehow sometimes set to 2
" overriden by  vim-airline  extension  tabline

""> maxmempattern
set mmp=25000

""> neomutt
autocmd BufRead,BufNewFile ~/.cache/mutt/tmp/neomutt-* setlocal tw=0

"">> quit safely when written
function! BackupQuit()
  wa
  " precautionary save, incase something goes wrong with the send:
  exec 'sav' $HOME.'/.cache/mutt/sends/'.strftime('%Y-%m-%d-%H:%M:%S').'.txt'
  q
endfunction
autocmd BufRead,BufNewFile ~/.cache/mutt/tmp/neomutt-* nnoremap <buffer> <F4> :call BackupQuit()<CR>
autocmd BufRead,BufNewFile ~/.cache/mutt/tmp/neomutt-* inoremap <buffer> <F4> <Esc>:call BackupQuit()<CR>

"">> required for muttrc-gmx
" (see Dropbox/JH/Now/Technos/IT/Cross-platform/Vim/muttrc-123)
autocmd BufNewFile,BufRead muttrc-* setlocal filetype=neomuttrc

"">> tidy an inmail
" swap out any crap (and go back to top):
"  next line
autocmd BufRead,BufNewFile ~/.cache/mutt/tmp/neomutt-* silent! %s///g | go
"  non-breaking whitespaces
autocmd BufRead,BufNewFile ~/.cache/mutt/tmp/neomutt-* silent! %s/ / /g | go
"  'private use one'
autocmd BufRead,BufNewFile ~/.cache/mutt/tmp/neomutt-* silent! %s//'/g | go
"  'private use two'
autocmd BufRead,BufNewFile ~/.cache/mutt/tmp/neomutt-* silent! %s//'/g | go
"  unneeded blanks
autocmd BufRead,BufNewFile ~/.cache/mutt/tmp/neomutt-* silent! %s/^> */>/g | go

""> neovim - quit fcrontab
if has('nvim')
  autocmd BufRead,BufNewFile fcr-* nnoremap <buffer> <F4> :call BackupQuit()<CR>
  autocmd BufRead,BufNewFile fcr-* inoremap <buffer> <F4> <Esc>:call BackupQuit()<CR>
endif

""> neovim - quit noname
if has('nvim')
  " for some edge cases
  function! QuitNoName()
    if len(getbufinfo({'buflisted':1})) == 1
      q!
    endif
  endfunction
  " noremap <F12> :call QuitNoName() <CR>
endif

""> searching - clear search highlights
nnoremap <leader>n :nohlsearch<CR>
vnoremap <leader>n <Esc>:nohlsearch<CR>

""> searching - grepping
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

""> searching - parenthesis matching
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
    let g:parenthesismatch
  else
    DoMatchParen
    let g:parenthesismatch = 1
    let g:parenthesismatch
  endif
endfunction

""> searching - re-open the quickfix-window
" eg to look again at results of vimgrep
noremap <leader>q :copen<CR>

""> searching - Search within a visual selection.
"  before calling this you need to search for something, then
"   either before or any number of times after calling this function,
"     you need to visually select an area
"   the search will appear highlighted only within your visual selections
"   next search returns to normal
function! ConvertSearchForVisualSelection()
  let @/ = '\%V'.getreg('/')
  echo 'last search is now active only in your escaped visual selection'
endfunction
nnoremap <leader>vs :call ConvertSearchForVisualSelection()<CR>
vnoremap <leader>vs <Esc>:call ConvertSearchForVisualSelection()<CR>

""> searching - select to end of line in unix
if has('unix')
  nnoremap <leader>v v$hy
endif

set ignorecase incsearch smartcase

""> shell - filepath into register f
nnoremap <leader>f :let@f=@%<CR>

""> shell - netrw
let g:netrw_banner = 0
let g:netrw_liststyle = 2
nnoremap <leader>- :Hexplore<cr>

""> shell - working directory to file's
nnoremap <leader>d :cd %:p:h<CR>:pwd<CR>

""> shell - write all changed buffers
nnoremap <F2> :wa<CR>
inoremap <F2> <Esc>:wa<CR>
vnoremap <F2> <Esc>:wa<CR>

""> shell - write & close buffer
nnoremap <F4> :wa<CR>:bd<CR>
inoremap <F4> <Esc>:wa<CR>:bd<CR>
vnoremap <F4> <Esc>:wa<CR>:bd<CR>

""> toggle centering current line
nnoremap <Leader>zz :let &scrolloff=999-&scrolloff<CR>

