
" Joseph Harriott - http://momentary.eu/
" --------------------------------------
" More buffer stuff.
"
" (keep this file in your plugin directory so's it's automatically sourced at startup)
" ------------------------------------------------------------------------------------

" Split window to a buffer number:
nnoremap <F5> :buffers<CR>:sbuffer<Space>

" toggle centering line in window:
nnoremap <Leader>zz :let &scrolloff=999-&scrolloff<CR>

" toggle relativenumber:
nnoremap <silent><leader>n :set rnu! rnu? <CR>

" buffer save mappings
" --------------------
" F2 to write all changed buffers:
nnoremap <F2> :wa<CR>
inoremap <F2> <Esc>:wa<CR>

" Shift+F2 to write all changed buffers and reload the current one:
nnoremap <S-F2> :wa<CR>:e<CR>
inoremap <S-F2> <Esc>:wa<CR>:e<CR>

" Alt+F2 to write all changed buffers and close the current one:
nnoremap <A-F2> :wa<CR>:bd<CR>
inoremap <A-F2> <Esc>:wa<CR>:bd<CR>
" (only right-Ctrl+F2 works in Arch)

" mutt file treatments:
" ------------------------
" required for muttrc-gmx (see Dropbox/JH/Now/Technos/IT/Cross-platform/Vim/muttrc-123)
autocmd BufNewFile,BufRead muttrc-* setlocal filetype=neomuttrc

" neomutt temporary files (eg mail) finish
autocmd BufRead,BufNewFile /tmp/neomutt-* nnoremap <buffer> <A-e> :wa<CR>:q<CR>
autocmd BufRead,BufNewFile /tmp/neomutt-* inoremap <buffer> <A-e> <Esc>:wa<CR>:q<CR>

" nnn temporary file treatments
" -----------------------------
" clear nnn selections:
autocmd BufRead,BufNewFile /tmp/.nnn* nnoremap <buffer> <C-e> ggVGd:wq <CR>

" finish an nnn file rename:
autocmd BufRead,BufNewFile /tmp/.nnn* nnoremap <A-F2> :wa<CR>:q<CR>
autocmd BufRead,BufNewFile /tmp/.nnn* inoremap <A-F2> <Esc>:wa<CR>:q<CR>

" turn off Hexokinase colouring:
autocmd BufRead,BufNewFile /tmp/.nnn* :HexokinaseTurnOff

" Other special file treatments
" -----------------------------
" pack msgFilterRules.dat "name" lines:
autocmd BufRead,BufNewFile *msgFilterRules.dat nnoremap <buffer> <F12> :%s#^name="\v(.*$)\n(^.*$)\n(^.*$)\n(^.*$)\n(^.*$)\n(^.*$)#name="\1░\2░\3░\4░\5░\6#g <bar> nohlsearch <CR>
" unpack msgFilterRules.dat "name" lines:
autocmd BufRead,BufNewFile *msgFilterRules.dat nnoremap <buffer> <S-F12> :%s#^name="\v(.*)░(.*)░(.*)░(.*)░(.*)░(.*)$#name="\1\r\2\r\3\r\4\r\5\r\6#g<CR>
" (These hooks aren't in an  ftplugin/dat.vim  because there's no such default filetype.)

" For Thymio's Aseba code, I suppose that  sgml  filetype might be more appropriate,
" but I use  xml  filetype  because it has folding
autocmd BufNewFile,BufRead *.aesl setlocal filetype=xml

" Syntax preparations
" -------------------
" LaTeX syntax folding on before opening a buffer:
let g:tex_fold_enabled=1
" turn off syntax folding for the long log files from  md4pdf.ps1
autocmd BufNewFile,BufRead *-md4pdfLog.tex setlocal fdm=manual

" XML syntax folding on:
let g:xml_syntax_folding = 1

