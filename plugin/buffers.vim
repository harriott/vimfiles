
" Joseph Harriott - http://momentary.eu/
" --------------------------------------
" More buffer stuff.
"
" (keep this file in your plugin directory so's it's automatically sourced at startup)
" ------------------------------------------------------------------------------------

" F2 to write all changed buffers:
nnoremap <F2> :wa<CR>
inoremap <F2> <Esc>:wa<CR>

" F2 to write all changed buffers and reload the current one:
nnoremap <S-F2> :wa<CR>:e<CR>
inoremap <S-F2> <Esc>:wa<CR>:e<CR>

" Split window to a buffer number:
nnoremap <F5> :buffers<CR>:sbuffer<Space>

" toggle centering line in window:
nnoremap <Leader>zz :let &scrolloff=999-&scrolloff<CR>

" toggle relativenumber:
nnoremap <silent><leader>n :set rnu! rnu? <CR>

" Special file treatments:
" ------------------------
" clear nnn selections:
autocmd BufRead,BufNewFile /tmp/.nnn* nnoremap <buffer> <C-e> ggVGd:wq <CR>

" muttrc-gmx (see Dropbox/JH/Now/Technos/IT/Cross-platform/Vim/muttrc-123)
autocmd BufNewFile,BufRead muttrc-* setlocal filetype=neomuttrc

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

" XML syntax folding on:
let g:xml_syntax_folding = 1

