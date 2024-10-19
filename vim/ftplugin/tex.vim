
" Language: TeX
" Maintainer: Joseph Harriott
" Last Change: Sun 21 Apr 2024

" $vfv/ftplugin/tex.vim (& $vfv/syntax/tex.vim)
" Useful adjustments for working with LaTeX documents.
"  supplemental to  $VIMRUNTIME/ftplugin/tex.vim

" Detections:
"  $vfv/filetype.vim  for *.toc
"  $vfvp/packs-cp/opt/vimtex/ftdetect/tex.vim
"  $VIMRUNTIME/filetype.vim > TeX

" Syntax: can't seem to add my own supplemental  tex.vim
"
" open compiled pdf
  nnoremap <buffer><F12> :call CompiledPDF()<CR>
" convert md url
  nnoremap <buffer><localleader>< :s/</\\url{/<bar>s/>/}/<bar>nohls<CR>

" EasyAlign  mappings for  tabular  environment
nnoremap <buffer><leader><F7> :call TabularFullAlign()<CR><Bar>:update<CR>
inoremap <buffer><leader><F7> <Esc>:call TabularFullAlign()<CR><Bar>:update<CR>
function! TabularFullAlign()
  " include comments
  normal vip
  silent! '<,'>s/%/※/
  normal gAip*&
  silent! '<,'>s/※/%/
endfunction

""> \command{}
nnoremap <buffer><localleader>r :s#\\\h\+{##<bar>s/}//<bar>nohls<CR>  " remove first command

"">> for a selection
vnoremap <buffer><localleader>b c\textbf{<Esc>pa}<Esc>  " enbolden
vnoremap <buffer><localleader>d c\dgy{<Esc>pa}<Esc>  " $LTXj/JH.sty
vnoremap <buffer><localleader>i c\textit{<Esc>pa}<Esc>  " italicize

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
  nnoremap <silent><buffer><leader><F7> :call PHMatch()<cr>
  inoremap <silent><buffer><leader><F7> <Esc>:call PHMatch()<cr>
  vnoremap <silent><buffer><leader><F7> <Esc>:call PHMatch()<cr>
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
elseif match(&runtimepath, 'vimtex') != -1
  setlocal fdc=1 tw=0
else
  " For folding to be handled by  $VIMRUNTIME/syntax/tex.vim,
  "  let g:tex_fold_enabled=1
  "  needs to be done before opening the buffer, eg in vimrc
  setlocal fdc=1 fdl=1 fdm=syntax tw=0
  " toggle syntax folding on and off for the buffer - useful for large files
  nnoremap <silent><buffer><leader><F7> :call LaTeXsyntaxFolding()<cr>
  inoremap <silent><buffer><leader><F7> <Esc>:call LaTeXsyntaxFolding()<cr>
  vnoremap <silent><buffer><leader><F7> <Esc>:call LaTeXsyntaxFolding()<cr>
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

""> language help
if !has('nvim')
  let b:ale_enabled = 0
  let b:ale_linters = ['vale']
  " se ofu=ale#completion#OmniFunc " omnifunc - doesn't work
  source $vfv/ftplugin/ALElocaleader.vim
endif

" VimTeX
" ------
" :se ofu  reports  vimtex#complete#omnifunc
setlocal conceallevel=2
  " toggle it
  nnoremap <localleader><f5> :let &cole=(&cole == 2) ? 0 : 2 <bar> echo 'conceallevel ' . &cole <CR>
  " - can help when using  tabular  while  VimTeX  is active

""> tabbing
" (lifted from syntax\dokuwiki.vim):
" Set shift width for indent
setlocal shiftwidth=2
" Set the tab key size to two spaces
setlocal softtabstop=2
" Let tab keys always be expanded to spaces
setlocal expandtab

""> for Verse
" append  \\:
vnoremap <buffer> <leader>v1 :s#^\v(.+)$#\1 \\\\#g <bar> nohlsearch <CR>
" remove  \\ from the last line of a stanza:
vnoremap <buffer> <leader>v2 :s#^\v(.+) \\\\$\n^$#\1\r#g <CR>

