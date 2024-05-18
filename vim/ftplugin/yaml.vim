
" Language: YAML
" Maintainer: Joseph Harriott
" Last Change: Sat 20 Apr 2024
" $vimfiles/vim/ftplugin/yaml.vim  - supplementary to  $VIMRUNTIME/ftplugin/yaml.vim
"  also  $vimfiles/vim/after/syntax/yaml.vim
" ($VIMRUNTIME/filetype.vim  decides the various files that are detected as  yaml)

let b:ale_linters = ['yamllint']
source $vimfiles/vim/ftplugin/ALElocaleader.vim

setlocal foldcolumn=1 textwidth=0

" my folding tools:
source $vimfiles/vim/ftplugin/HashEqualsFolding.vim

