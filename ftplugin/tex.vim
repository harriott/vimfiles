
" Language:	TeX
" Maintainer: Joseph Harriott
" Last Change: Tue 31 Aug 2021
" Useful adjustments for working with LaTeX documents.
"  supplemental to  $VIMRUNTIME/ftplugin/tex.vim
" This file should be in your vimfiles\ftplugin folder.
" $VIMRUNTIME/filetype.vim > TeX  to see detections
" see also  $vimfiles/after/ftplugin/tex.vim

" ALE
let b:ale_enabled = 0 " and toggle it as defined in $vimfiles/plugin/plugins.vim

nnoremap <buffer><F12> :call CompiledPDF()<CR>  " open compiled pdf
nnoremap <buffer><leader><leader>< :s/</\\url{/<bar>s/>/}/<CR>  " convert md url
vnoremap <buffer><leader><leader>b c\textbf{<Esc>pa}<Esc>  " enbolden a selection
vnoremap <buffer><leader><leader>i c\textit{<Esc>pa}<Esc>  " italicize a selection

" EasyAlign  mappings for  tabular  environment
nnoremap <buffer> gT :normal gAip*&<CR><Bar> :update<CR> " over-mapping - h gT
inoremap <buffer><S-F7> <Esc>:normal gAip*&<CR><Bar> :update<CR>
" - doesn't work in Win10's gVim
function! TabularFullAlign()
  " include comments
endfunction

""> demote or promote sections
" select a region, then
function! DemoteSubSections()
  silent normal! gv"sy
  let VS = getreg('s')
  if match(VS, '\\subsubsection{') >= 0
    echo 'can''t demote a subsubsection'
  else
    :%s/\%Vsection{/subsection{/
    echo 'demoted'
  endif
endfunction
nnoremap <buffer><leader>> :call DemoteSubSections()<CR>
vnoremap <buffer><leader>> <Esc>:call DemoteSubSections()<CR>
function! PromoteSubSections()
  silent normal! gv"sy
  let VS = getreg('s')
  if match(VS, '\\section{') >= 0
    echo 'can''t promote a section'
  else
    :%s/\%Vsubsection{/section{/
    echo 'promoted'
  endif
endfunction
nnoremap <buffer><leader>< :call PromoteSubSections()<CR>
vnoremap <buffer><leader>< <Esc>:call PromoteSubSections()<CR>

""> folding
if b:PandocLaTeX
  " I've made this case for easier management of $onGH/pandoc-templates/default-jh-3.latex
  setlocal fde=LTXF() fdl=0 fdm=expr
  function! LTXF()
      let l:percents = matchstr(getline(v:lnum), '^%\+') "defined l:percents, even in no match
      " if there's a valid heading set a fold start
      if len(l:percents) >= 2 | return ">1" | else | return "=" | endif
  endfunction
  " unfortunately  syntax match percentHeading '^%%.*$'  is unreliable
  " apparently due to overriding definitions in  $VIMRUNTIME/syntax/tex.vim
  hi percentHeading term=bold cterm=bold gui=bold guifg=LightGreen
  " toggle  match  on and off - can allow for easier reading
  "  (match works on the window)
  nnoremap <silent> <F7> :call PHMatch()<cr>
  inoremap <silent> <F7> <Esc>:call PHMatch()<cr>
  vnoremap <silent> <F7> <Esc>:call PHMatch()<cr>
  let w:PHMatch = 0
  function! PHMatch()
    if w:PHMatch
      match none
      let w:PHMatch = 0
      echo 'match none'
    else
      match percentHeading '^ *%%.*$'
      let w:PHMatch = 1
      echo 'match ^%%'
    endif
  endfunction
else
  " For folding to be handled by  $VIMRUNTIME/syntax/tex.vim,
  "  let g:tex_fold_enabled=1
  "  needs to be done before opening the buffer, eg in vimrc
  setlocal fdc=1 fdl=1 fdm=syntax tw=0
  " toggle syntax folding on and off for the buffer - useful for large files
  nnoremap <silent><buffer> <F7> :call LaTeXsyntaxFolding()<cr>
  inoremap <silent><buffer> <F7> <Esc>:call LaTeXsyntaxFolding()<cr>
  vnoremap <silent><buffer> <F7> <Esc>:call LaTeXsyntaxFolding()<cr>
  let b:LaTeXsyntaxFolding = 1
  function! LaTeXsyntaxFolding()
    if b:LaTeXsyntaxFolding
      setlocal fdm=manual
      let b:LaTeXsyntaxFolding = 0
      echo 'fdm=manual'
    else
      setlocal fdm=syntax
      let b:LaTeXsyntaxFolding = 1
      echo 'fdm=syntax'
    endif
  endfunction
endif

""> Tabbing
" (lifted from syntax\dokuwiki.vim):
" Set shift width for indent
setlocal shiftwidth=2
" Set the tab key size to two spaces
setlocal softtabstop=2
" Let tab keys always be expanded to spaces
setlocal expandtab

" \textbf{<selection>}
vnoremap <leader>b c\textbf{}<Esc>P

""> for Verse
" append  \\:
vnoremap <buffer> <leader>v1 :s#^\v(.+)$#\1 \\\\#g <bar> nohlsearch <CR>
" remove  \\ from the last line of a stanza:
vnoremap <buffer> <leader>v2 :s#^\v(.+) \\\\$\n^$#\1\r#g <CR>

