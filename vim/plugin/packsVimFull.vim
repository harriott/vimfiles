
" https://harriott.githubio/ - Thu 06 Mar 2025

" $vfv/plugin/packsVimFull.vim  optionally sourced by  $vfv/plugin/packs.vim
"  needs recent Vim
"  $vfvp/packs-cp-full

let g:packsVimFull = 1

""> encoding - vim-gitgutter
let g:gitgutter_max_signs = 600
let g:gitgutter_enabled = 0
packadd vim-gitgutter
" toggle is in  $vfv/after/plugin/packs.vim

"">> toggle
let g:GGF = 0
" $vfv/after/plugin/packs.vim

""> fuzzyy
if has('win64')
  nnoremap <f1> :FuzzyBuffers<CR>
  inoremap <f1> <Esc>:FuzzyBuffers<CR>
  vnoremap <f1> <Esc>:BuffFuzzyers<CR>
  nnoremap <F8> :FuzzyCmdHistory<CR>
  inoremap <F8> <Esc>:FuzzyCmdHistory<CR>
  vnoremap <F8> <Esc>:FuzzyCmdHistory<CR>
endif
packadd fuzzyy
" :FuzzyCmdHistory
" :FuzzyHighlights - ctrl+k toggles light/dark
" \fb = :FuzzyBuffers
" \fc = :FuzzyCommands
" \ff = :FuzzyFiles - in cwd - crap in  $DJH
" \fh = :FuzzyHelp
" \fi = :FuzzyInBuffer [string]
" \fm = :FuzzyMru - ctrl+k toggles all/cwd
" ctrl+s/v = open selection in horizontal/vertical split

""> fzf - fzf
if has('win64') " junegunn/fzf
  " $vfv/plugin/fzf/README-VIM.md
  set rtp+=~/vimfiles/plugin/fzf  " no quotes!

  nnoremap <S-F9> call popup_clear(1):<CR>
  " - for when the pop window seizes - nice idea, but shift+f9 also gets blocked
endif

" doesn't supply  fzf.exe
" FZF  is the only command, hence  fzf.vim
" $vfv/plugin/fzf/shell/completion.bash
" $vfv/plugin/fzf/shell/key-bindings.bash

""> fzf - fzf.exe
" :!fzf  to check that it's interactively finding files
" :!fzf --version
" $HADL\Microsoft\WinGet\Links\fzf.exe  is found

""> fzf - fzf.vim
if has('unix')
  " $vfvp/packs-cp-full/opt/fzf.vim/doc/fzf-vim.txt
  " requires  :set shell  be unchanged from  cmd.exe
  let g:fzf_vim = {}
    let g:fzf_vim.preview_bash = 'C:\Git\bin\bash.exe'
    " let g:fzf_vim.preview_bash = 'C:\Git\usr\bin\bash.exe'
    " let g:fzf_vim.preview_bash = 'C:\Users\jharr\AppData\Local\Microsoft\WindowsApps\bash.exe'
    " let g:fzf_vim.preview_bash = 'C:\Windows\System32\bash.exe'
    let g:fzf_vim.preview_window = ['hidden,up,50%', 'f1']
    " - f1  will reveal the hidden preview window
  packadd fzf.vim

  nnoremap <leader>B :BLines<CR>
  nnoremap <leader>L :Lines<CR>

  " in ~/.vim: rg '>j' --no-ignore
  nnoremap <leader>j :Files $DJH<CR>

  nnoremap <f1> :Buffers<CR>
  inoremap <f1> <Esc>:Buffers<CR>
  vnoremap <f1> <Esc>:Buffers<CR>

  nnoremap <F8> :History:<CR>
  inoremap <F8> <Esc>:History:<CR>
  vnoremap <F8> <Esc>:History:<CR>

  nnoremap <F9> :History/<CR>
  inoremap <F9> <Esc>:History/<CR>
  vnoremap <F9> <Esc>:History/<CR>

  nnoremap <s-f1> :Jumps<CR>

  " case-sensitive
  " 'search  searches for exactly that

  " :Commits
  " :Helptags
  " :Maps  = normal mode mappings
endif

"">> fugitive

nnoremap <c-f3> :BCommits<CR>
inoremap <c-f3> <Esc>:BCommits<CR>
vnoremap <c-f3> <Esc>:BCommits<CR>

nnoremap <s-f3> :Commits<CR>
inoremap <s-f3> <Esc>:Commits<CR>
vnoremap <s-f3> <Esc>:Commits<CR>

""> fzf - vim-fzf-dictionary
packadd vim-fzf-dictionary
imap <c-d> <Plug>(fzf-dictionary-open)
" no longer having any effect

""> layout - clrzr
" just :packadd clrzr  then  $vfvp/packs-unix/opt/clrzr/colortest.txt
" doesn't work for  $ulLA/IM-magick-list_color.txt

""> shell - Fern
noremap <c-e> :cd %:p:h<CR>:Fern . -reveal=%<CR>
packadd fern.vim " $vfvp/packs-cp-full/opt/fern.vim/README.md

" overrides my c-h/j/k/l mappings
" vim default c-e = scroll up the window, without displacing the cursor

" ! -- toggles hidden
" + -- vim-buffing-wheel override (quits)
" <bs>/<c-h> -- fern-action-leave (goes up a directory)
" <c-m>/<cr> -- open-or-enter
" ? -- help
" - -- mark
" e/<enter> -- open
" E -- open:side
" p -- preview:toggle
" t -- open:tabedit
" x -- open:system (eg to open an image)

""> shell - fern-git-status
packadd fern-git-status.vim

""> shell - fern-preview.vim
augroup fern-settings
  autocmd!
  autocmd FileType fern call s:fern_settings()
augroup END
function! s:fern_settings() abort
  nmap <silent> <buffer> p     <Plug>(fern-action-preview:toggle)
  nmap <silent> <buffer> <c-d> <Plug>(fern-action-preview:scroll:down:half)
  nmap <silent> <buffer> <c-u> <Plug>(fern-action-preview:scroll:up:half)
endfunction
packadd fern-preview.vim

""> shell - fern-renderer-nerdfont.vim
let g:fern#renderer = "nerdfont"
packadd fern-renderer-nerdfont.vim

""> shell - nerdtree-git-plugin
packadd nerdtree-git-plugin

" ""> shell - vim-dirvish
" " h dirvish
" " can't navigate up a directory
" " takes over :e.
" " -  breaks  vim-buffing-wheel

" " in dirvish
" "  -       -> out
" "  <enter> -> in
" "  a       -> open file in window left
" "  g?      -> dirvish-mappings
" "  gq      -> quit
" "  preview left
" "   p
" "    Ctrl-n -> next
" "    Ctrl-p -> previous

" packadd vim-dirvish

" ""> shell - vim-dirvish-git
" if has('unix')
"   packadd vim-dirvish-git
" endif

""> shell - vim-picker
if has('unix')
  packadd vim-picker
  nmap <unique> <leader>pe <Plug>(PickerEdit)
  " - files in cwd
  nmap <unique> <leader>pb <Plug>(PickerBuffer)
endif

""> text wrangling - Highlight.vim
" $vfvp/packs-cp-full/opt/Highlight.vim/README.md
if !has('gui_running') | packadd Highlight.vim | endif  " plain vim only

""> text wrangling - vim-surround
" h surround
" optional target∙alias: )∙b ]∙B }∙r >∙a

" cs'b cs'B cs'r cs'a => change surrounding '
" cs'( cs'{ cs'[ cs'< => ...with spaces

" ds' => delete surrounding '
" dst => delete surrounding tags

" on a visual selection, Sr => wrap with []
" ysiw<q> => yes surround word in quote tags (ySiw  or  ySS  to include newlines)
" yssb => bracket the line

packadd vim-surround

""> vim - buffers - bufexplorer
packadd bufexplorer
noremap <silent> <leader>be :BufExplorer<CR>

"">> default mappings
"  <Leader>be - Opens BufExplorer
"  <Leader>bt - Toggles BufExplorer open or closed
"  <Leader>bs - Opens horizontally split window BufExplorer
"  <Leader>bv - Opens vertically split window BufExplorer

