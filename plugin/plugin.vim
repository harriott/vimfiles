" Joseph Harriott - Tue 30 Aug 2022
" ---------------------------------

" $vimfiles/plugin/plugin.vim
" here I have things that I might, rarely, want to comment out
" keep this file in your plugin directory so's it's automatically sourced at startup

function! UnComment()
  " set filetype=
  " normal Vip<Esc>
  normal Vip
  " normal <Esc>
  escape
  '<,'>s/%/※/
  " s/%/※/
  " set filetype=tex
endfunction

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
" These hooks aren't in an  ftplugin/dat.vim  because there's no such default filetype.

" pack msgFilterRules.dat "name" lines:
autocmd BufRead,BufNewFile *msgFilterRules.dat nnoremap <buffer> <F12> :%s#^name="\v(.*$)\n(^.*$)\n(^.*$)\n(^.*$)\n(^.*$)\n(^.*$)#name="\1░\2░\3░\4░\5░\6#g <bar> nohlsearch <CR>
" unpack msgFilterRules.dat "name" lines:
autocmd BufRead,BufNewFile *msgFilterRules.dat nnoremap <buffer> <S-F12> :%s#^name="\v(.*)░(.*)░(.*)░(.*)░(.*)░(.*)$#name="\1\r\2\r\3\r\4\r\5\r\6#g<CR>

""> buffer - refresh
" writes all changed buffers and reloads the current one
nnoremap <F5> :wa<CR>:edit<CR>
inoremap <F5> <Esc>:wa<CR>:e<CR>
vnoremap <F5> <Esc>:wa<CR>:e<CR>

""> buffer - split window to a buffer
nnoremap <leader>sb :buffers<CR>:sbuffer<Space>

""> clear registers b-z
command! WipeReg for i in range(98,122) | silent! call setreg(nr2char(i), []) | endfor

""> easy q macro
noremap Q @q

" qq  starts recording
" end recording in normal/visual with q
" (:reg q  shows what's been saved)
" [count]Q plays back

""> format - clear fancy glyphs
" - left & right double & single quotes (as these aren't mapped to a keyboard key)
"   en dash, which can be copied from websites
"   more...
if v:lang =~ 'fr'
  " AZERTY
  nnoremap <leader>é :call ClearFancyGlyphs()<cr>
else
  nnoremap <leader>2 :call ClearFancyGlyphs()<cr>
endif
function! ClearFancyGlyphs()
  " nuls
  :sil!%s/ / /g
  :sil!%s/​//g
  :sil!%s/‌//g
  :sil!%s/‍//g
  :sil!%s/‎//g
  :sil!%s/‏//g
  " punctuations
  :sil!%s/´/'/g
  :sil!%s/ˮ/"/g
  :sil!%s/[ก-๛]/-/g  " Thai characters
  :sil!%s/“/"/g
  :sil!%s/”/"/g
  :sil!%s/″/"/g
  :sil!%s/＂/"/g
  :sil!%s/ʻ/'/g
  :sil!%s/‘/'/g
  :sil!%s/’/'/g
  :sil!%s/‑/-/g
  :sil!%s/–/-/g
  :sil!%s/—/-/g
  :sil!%s/―/-/g
  :sil!%s/‐/-/g
  :sil!%s/­//g  " remove soft hyphen
  :sil!%s/…/.../g
  :sil!%s/，/,/g
  :sil!%s/：/:/g
  :sil!%s/？/?/g
  " various
  :sil!%s/│/|/g
  :sil!%s/⟨/</g
  :sil!%s/⟩/>/g
  :sil!%s/→/-->/g
  :sil!%s/⧹/\\/g  " normalise big backslash
endfunction

""> format - clear mathematical alphanumeric symbols
nnoremap <leader><leader>2 :call ClearMAS()<cr>
function! ClearMAS()
  :sil!s/\v𝐀|𝐴|𝑨|𝖠|𝗔|𝘈|𝘼|𝒜|𝓐|𝔄|𝕬|𝙰|𝔸/A/g
  :sil!s/\v𝐁|𝐵|𝑩|𝖡|𝗕|𝘉|𝘽|ℬ|𝓑|𝔅|𝕭|𝙱|𝔹/B/g
  :sil!s/\v𝐂|𝐶|𝑪|𝖢|𝗖|𝘊|𝘾|𝒞|𝓒|ℭ|𝕮|𝙲|ℂ/C/g
  :sil!s/\v𝐃|𝐷|𝑫|𝖣|𝗗|𝘋|𝘿|𝒟|𝓓|𝔇|𝕯|𝙳|𝔻/D/g
  :sil!s/\v𝐄|𝐸|𝑬|𝖤|𝗘|𝘌|𝙀|ℰ|𝓔|𝔈|𝕰|𝙴|𝔼/E/g
  :sil!s/\v𝐅|𝐹|𝑭|𝖥|𝗙|𝘍|𝙁|ℱ|𝓕|𝔉|𝕱|𝙵|𝔽/F/g
  :sil!s/\v𝐆|𝐺|𝑮|𝖦|𝗚|𝘎|𝙂|𝒢|𝓖|𝔊|𝕲|𝙶|𝔾/G/g
  :sil!s/\v𝐇|𝐻|𝑯|𝖧|𝗛|𝘏|𝙃|ℋ|𝓗|ℌ|𝕳|𝙷|ℍ/H/g
  :sil!s/\v𝐈|𝐼|𝑰|𝖨|𝗜|𝘐|𝙄|ℐ|𝓘|ℑ|𝕴|𝙸|𝕀/I/g
  :sil!s/\v𝐉|𝐽|𝑱|𝖩|𝗝|𝘑|𝙅|𝒥|𝓙|𝔍|𝕵|𝙹|𝕁/J/g
  :sil!s/\v𝐊|𝐾|𝑲|𝖪|𝗞|𝘒|𝙆|𝒦|𝓚|𝔎|𝕶|𝙺|𝕂/K/g
  :sil!s/\v𝐋|𝐿|𝑳|𝖫|𝗟|𝘓|𝙇|ℒ|𝓛|𝔏|𝕷|𝙻|𝕃/L/g
  :sil!s/\v𝐌|𝑀|𝑴|𝖬|𝗠|𝘔|𝙈|ℳ|𝓜|𝔐|𝕸|𝙼|𝕄/M/g
  :sil!s/\v𝐍|𝑁|𝑵|𝖭|𝗡|𝘕|𝙉|𝒩|𝓝|𝔑|𝕹|𝙽|ℕ/N/g
  :sil!s/\v𝐎|𝑂|𝑶|𝖮|𝗢|𝘖|𝙊|𝒪|𝓞|𝔒|𝕺|𝙾|𝕆/O/g
  :sil!s/\v𝐏|𝑃|𝑷|𝖯|𝗣|𝘗|𝙋|𝒫|𝓟|𝔓|𝕻|𝙿|ℙ/P/g
  :sil!s/\v𝐐|𝑄|𝑸|𝖰|𝗤|𝘘|𝙌|𝒬|𝓠|𝔔|𝕼|𝚀|ℚ/Q/g
  :sil!s/\v𝐑|𝑅|𝑹|𝖱|𝗥|𝘙|𝙍|ℛ|𝓡|ℜ|𝕽|𝚁|ℝ/R/g
  :sil!s/\v𝐒|𝑆|𝑺|𝖲|𝗦|𝘚|𝙎|𝒮|𝓢|𝔖|𝕾|𝚂|𝕊/S/g
  :sil!s/\v𝐓|𝑇|𝑻|𝖳|𝗧|𝘛|𝙏|𝒯|𝓣|𝔗|𝕿|𝚃|𝕋/T/g
  :sil!s/\v𝐔|𝑈|𝑼|𝖴|𝗨|𝘜|𝙐|𝒰|𝓤|𝔘|𝖀|𝚄|𝕌/U/g
  :sil!s/\v𝐕|𝑉|𝑽|𝖵|𝗩|𝘝|𝙑|𝒱|𝓥|𝔙|𝖁|𝚅|𝕍/V/g
  :sil!s/\v𝐖|𝑊|𝑾|𝖶|𝗪|𝘞|𝙒|𝒲|𝓦|𝔚|𝖂|𝚆|𝕎/W/g
  :sil!s/\v𝐗|𝑋|𝑿|𝖷|𝗫|𝘟|𝙓|𝒳|𝓧|𝔛|𝖃|𝚇|𝕏/X/g
  :sil!s/\v𝐘|𝑌|𝒀|𝖸|𝗬|𝘠|𝙔|𝒴|𝓨|𝔜|𝖄|𝚈|𝕐/Y/g
  :sil!s/\v𝐙|𝑍|𝒁|𝖹|𝗭|𝘡|𝙕|𝒵|𝓩|ℨ|𝖅|𝚉|ℤ/Z/g
  :sil!s/\v𝐚|𝑎|𝒂|𝖺|𝗮|𝘢|𝙖|𝒶|𝓪|𝔞|𝖆|𝚊|𝕒/a/g
  :sil!s/\v𝐛|𝑏|𝒃|𝖻|𝗯|𝘣|𝙗|𝒷|𝓫|𝔟|𝖇|𝚋|𝕓/b/g
  :sil!s/\v𝐜|𝑐|𝒄|𝖼|𝗰|𝘤|𝙘|𝒸|𝓬|𝔠|𝖈|𝚌|𝕔/c/g
  :sil!s/\v𝐝|𝑑|𝒅|𝖽|𝗱|𝘥|𝙙|𝒹|𝓭|𝔡|𝖉|𝚍|𝕕/d/g
  :sil!s/\v𝐞|𝑒|𝒆|𝖾|𝗲|𝘦|𝙚|ℯ|𝓮|𝔢|𝖊|𝚎|𝕖/e/g
  :sil!s/\v𝐟|𝑓|𝒇|𝖿|𝗳|𝘧|𝙛|𝒻|𝓯|𝔣|𝖋|𝚏|𝕗/f/g
  :sil!s/\v𝐠|𝑔|𝒈|𝗀|𝗴|𝘨|𝙜|ℊ|𝓰|𝔤|𝖌|𝚐|𝕘/g/g
  :sil!s/\v𝐡|ℎ|𝒉|𝗁|𝗵|𝘩|𝙝|𝒽|𝓱|𝔥|𝖍|𝚑|𝕙/h/g
  :sil!s/\v𝐢|𝑖|𝒊|𝗂|𝗶|𝘪|𝙞|𝒾|𝓲|𝔦|𝖎|𝚒|𝕚/i/g
  :sil!s/\v𝐣|𝑗|𝒋|𝗃|𝗷|𝘫|𝙟|𝒿|𝓳|𝔧|𝖏|𝚓|𝕛/j/g
  :sil!s/\v𝐤|𝑘|𝒌|𝗄|𝗸|𝘬|𝙠|𝓀|𝓴|𝔨|𝖐|𝚔|𝕜/k/g
  :sil!s/\v𝐥|𝑙|𝒍|𝗅|𝗹|𝘭|𝙡|𝓁|𝓵|𝔩|𝖑|𝚕|𝕝/l/g
  :sil!s/\v𝐦|𝑚|𝒎|𝗆|𝗺|𝘮|𝙢|𝓂|𝓶|𝔪|𝖒|𝚖|𝕞/m/g
  :sil!s/\v𝐧|𝑛|𝒏|𝗇|𝗻|𝘯|𝙣|𝓃|𝓷|𝔫|𝖓|𝚗|𝕟/n/g
  :sil!s/\v𝐨|𝑜|𝒐|𝗈|𝗼|𝘰|𝙤|ℴ|𝓸|𝔬|𝖔|𝚘|𝕠/o/g
  :sil!s/\v𝐩|𝑝|𝒑|𝗉|𝗽|𝘱|𝙥|𝓅|𝓹|𝔭|𝖕|𝚙|𝕡/p/g
  :sil!s/\v𝐪|𝑞|𝒒|𝗊|𝗾|𝘲|𝙦|𝓆|𝓺|𝔮|𝖖|𝚚|𝕢/q/g
  :sil!s/\v𝐫|𝑟|𝒓|𝗋|𝗿|𝘳|𝙧|𝓇|𝓻|𝔯|𝖗|𝚛|𝕣/r/g
  :sil!s/\v𝐬|𝑠|𝒔|𝗌|𝘀|𝘴|𝙨|𝓈|𝓼|𝔰|𝖘|𝚜|𝕤/s/g
  :sil!s/\v𝐭|𝑡|𝒕|𝗍|𝘁|𝘵|𝙩|𝓉|𝓽|𝔱|𝖙|𝚝|𝕥/t/g
  :sil!s/\v𝐮|𝑢|𝒖|𝗎|𝘂|𝘶|𝙪|𝓊|𝓾|𝔲|𝖚|𝚞|𝕦/u/g
  :sil!s/\v𝐯|𝑣|𝒗|𝗏|𝘃|𝘷|𝙫|𝓋|𝓿|𝔳|𝖛|𝚟|𝕧/v/g
  :sil!s/\v𝐰|𝑤|𝒘|𝗐|𝘄|𝘸|𝙬|𝓌|𝔀|𝔴|𝖜|𝚠|𝕨/w/g
  :sil!s/\v𝐱|𝑥|𝒙|𝗑|𝘅|𝘹|𝙭|𝓍|𝔁|𝔵|𝖝|𝚡|𝕩/x/g
  :sil!s/\v𝐲|𝑦|𝒚|𝗒|𝘆|𝘺|𝙮|𝓎|𝔂|𝔶|𝖞|𝚢|𝕪/y/g
  :sil!s/\v𝐳|𝑧|𝒛|𝗓|𝘇|𝘻|𝙯|𝓏|𝔃|𝔷|𝖟|𝚣|𝕫/z/g
endfunction

""> format - date abbreviations
iabbrev <expr> d8- strftime("%y-%m-%d")
iabbrev <expr> d8a strftime("%Y-%m-%d-%a")
iabbrev <expr> d8c strftime("%y%m%d")
iabbrev <expr> d8d strftime("%a %d %b %Y")
iabbrev <expr> d8l strftime("%Hh%M %a %d %b %Y")
iabbrev <expr> d8m strftime("%y%m%d-%Hh%Mm")
iabbrev <expr> d8p strftime("%Y-%m-%d %H:%M")
iabbrev <expr> d8s strftime("%d/%m/%y")
iabbrev <expr> d8t strftime("%y%m%d(%Hh%Mm%S)")

""> format - put date in other language
if has('unix')
  if v:lang =~ 'gb'
    noremap <leader>yp :lan fr_FR.UTF-8<CR>:pu=strftime('%a %d %b %Y')<CR>:lan en_GB.UTF-8<CR>:s/\.//g<cr>:noh<cr>
  else
    noremap <leader>yp :lan en_GB.UTF-8<CR>:pu=strftime('%a %d %b %Y')<CR>:lan fr_FR.UTF-8<CR>
  endif
elseif has('win32')
  if v:lang =~ 'fr'
    noremap <leader>yp :lan tim English_United Kingdom<CR>:pu=strftime('%a %d %b %Y')<CR>:lan tim French<CR>
  else
    noremap <leader>yp :lan tim French<CR>:pu=strftime('%a %d %b %Y')<CR>:lan tim English_United Kingdom<CR>:s/\.//g<cr>:noh<cr>
  endif
endif

""> format - capitalised last entered letter
" useful for AZERTY - particularly accented letters
if v:lang=~'fr'|inoremap ² <Esc>~a|endif

""> format - strip Thunderbird address book csv down to just emails
" decorations:  >, .\{-} <

function! TbCsv()
  normal vip
  '<,'>s/^\(.\{-},\)\{,4}/
  '<,'>s/,.*/
endfunction

""> format - percent code
" convert url parenthesis, and various diacritics to percent code
" to switch the order of these substitutions, use  s#/\(.\{-}\)/\(.\{-}\)/#/\2/\1/#g

"">> from
" 9 here means convert back to parentheses (eg for a quoted url in tex):
nnoremap <leader>9 :call PercentUnicode()<cr>
function! PercentUnicode()
    :keepp s/%26/\&/eg
    :keepp s/%27/'/eg
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
if v:lang =~ 'fr'
  " AZERTY
  nnoremap <leader>( :call UnicodePercent()<cr>
else
  nnoremap <leader>5 :call UnicodePercent()<cr>
endif
function! UnicodePercent()
    :keepp s/&/%26/eg
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
if v:lang =~ 'fr'
  nnoremap <leader><leader>( :s/\m\[.\{-}]//g<CR>
else
  nnoremap <leader>[ :s/\m\[.\{-}]//g<CR>
endif

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
nnoremap <leader>U :Underline

""> ft aesl - Thymio's Aseba code
" I suppose that sgml filetype might be more appropriate,
" but I use xml filetype because it has folding
autocmd BufNewFile,BufRead *.aesl setlocal filetype=xml

""> ft Emacs history
autocmd BufNewFile,BufRead ~/.emacs.d/history setlocal filetype=lisp

""> ft defaults
set shiftwidth=4
set tabstop=4
set textwidth=99

""> ft LaTeX syntax folding
" On before opening a buffer:
let g:tex_fold_enabled=1
" Check for Pandoc template:
autocmd BufReadPre *.cls,*.dtx,*.sty,*.tex,*.toc let b:PandocLaTeX = 0
autocmd BufReadPre *templates/*.latex let b:PandocLaTeX = 1

"">> md4pdfLog.tex
" turn off syntax folding for the long log files from md4pdf.ps1
autocmd BufNewFile,BufRead *-md4pdfLog.tex setlocal fdm=manual

""> ft vifm
autocmd BufNewFile,BufRead /usr/share/vifm/vifm-help.txt setlocal ft=man

""> ft vimscript
" lesser indentation of continuation line
let g:vim_indent_cont = &sw

""> ftplugin/xml.vim
" XML syntax folding on:
let g:xml_syntax_folding = 1

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

"">> called from  $vimfiles/grab/all.sh
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
  exe 'edit '.g:vimfiles.'/grabbed/scriptnames-'.hostname().'.txt'
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

""> layout
" new buffer split vertically
nnoremap <leader>vn :vnew<CR>

""> clearmatches
" see  $jtCP/Vim/plugins/csv_vim-HiColumnLeaky/issue.md
inoremap <leader><f5> :call clearmatches()<cr>
nnoremap <leader><f5> :call clearmatches()<cr>

""> layout - tabline
" set showtabline=1
" because it's somehow sometimes set to 2
" overriden by  vim-airline  extension  tabline

""> layout - toggle centering current line
nnoremap <Leader>zz :let &scrolloff=999-&scrolloff<CR>

""> layout - toggle relativenumber
nnoremap <silent><leader>rn :set rnu! rnu? <CR>

""> maxmempattern
" set mmp=90000  " for $TeNo/TN/JH-DailyLife/Health/Ingest/Regimes.md
set mmp=800000
" set mmp=2000000  " = unlimited

""> neomutt
autocmd BufRead,BufNewFile ~/.cache/mutt/tmp/neomutt-* setlocal textwidth=0

"">> quit safely when written
function! BackupQuit()
  wa
  " precautionary save, incase something goes wrong with the send:
  exec 'sav' $HOME.'/.cache/mutt/sends/'.strftime('%Y-%m-%d-%H:%M:%S').'.txt'
  q
endfunction
autocmd BufRead,BufNewFile ~/.cache/mutt/tmp/neomutt-* nnoremap <buffer> <F4> :call BackupQuit()<CR>
autocmd BufRead,BufNewFile ~/.cache/mutt/tmp/neomutt-* inoremap <buffer> <F4> <Esc>:call BackupQuit()<CR>

"">> overcome $VIMRUNTIME/filetype.vim
autocmd BufNewFile,BufRead muttrc-* setlocal filetype=neomuttrc
" required for  muttrc-gmx
" (see $DJH/technos/IT1/cross-platform/Vim/muttrc-123)

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

""> neovim - DiffOrig
if has('nvim')
  command DiffOrig vert new | set buftype=nofile | read ++edit # | 0d_ | diffthis | wincmd p | diffthis
endif
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

""> searching - get lower-case text of last search term in empty buffer
" for tweaking, eg "Find find in finding."
function! TweakLS()
  new
  normal! "/p
  sil! s/\\<//  " remove \<
  sil! s/\\>//  " remove \>
  normal! gue
endfunction
nnoremap <leader>/ :call TweakLS()<CR>

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
  let l:filetypes = '*.{cls,md,dw,sh,sty,tex,txt,vim}'
  execute 'silent! vimgrep #'.@l.'#j '.l:filetypes' **/'.l:filetypes
  copen
endfunction

" search in my QuickReference notes
nnoremap <leader><leader>q :call VimgrepQRs()<CR>
function! VimgrepQRs()
  call StripStoreCurSel()
  execute 'silent! vimgrep #'.@l.'#j '.$misc.'/CP/QR/*.md '.$misc.'/linux/QR/*.md '.$OSAB.'/QR.md'
  copen
endfunction

""> searching - incsearch
set incsearch
nnoremap <leader>is :call IncSearchToggle()<cr>
let g:incsearchSet = 1
function! IncSearchToggle()
  if g:incsearchSet
    set noincsearch
    let g:incsearchSet = 0
    echo 'noincsearch'
  else
    set incsearch
    let g:incsearchSet = 1
    echo 'incsearch'
  endif
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
" noremap <leader>q :copen<CR>
" now using  ListToggle

""> searching - search within a visual selection
"  before calling this you need to search for something, then
"   either before or any number of times after calling this function,
"     you need to visually select an area
"   the search will appear highlighted only within your visual selections
"   next search returns to normal
function! ConvertSearchForVisualSelection()
  let @/ = '\%V'.getreg('/') " reassign the current search
  echo 'last search is now active only in your escaped visual selection'
endfunction
nnoremap <leader>vs :call ConvertSearchForVisualSelection()<CR>
vnoremap <leader>vs <Esc>:call ConvertSearchForVisualSelection()<CR>
" maybe should leverage  vis.vim

""> searching - select to end of line in unix
if has('unix')
  nnoremap <leader>v v$hy
endif

""> shell - filepath into register f
nnoremap <leader>f :let@f=@%<CR>

""> shell - last modification time
nnoremap <silent><leader><F11> :echo strftime('%c',getftime(expand('%')))<cr>
inoremap <silent><leader><F11> <Esc>:echo strftime('%c',getftime(expand('%')))<cr>
vnoremap <silent><leader><F11> <Esc>:echo strftime('%c',getftime(expand('%')))<cr>

""> shell - netrw
let g:netrw_banner = 0
let g:netrw_liststyle = 2
nnoremap <leader>- :Hexplore<cr>

""> shell - open in Emacs
nnoremap <S-F11> :call OpenInEmacs()<CR>
inoremap <S-F11> <Esc><S-F11>

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

""> syntax sync fromstart
" highlighting sometimes disappears on some longer complex files after loading
"  long dw's
"  markdowns
"   $ITstack/unix_like-Android/phones.md
"   $TeNo/md-JH-DailyLife/roles/healing.md
"   my various  .../QR.md
nnoremap <S-F5> :syntax sync fromstart<CR>
inoremap <S-F5> <Esc><S-F5>

