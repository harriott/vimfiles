
Joseph's (g)Vim Quick Reference

    r $vfs
    let v=6 | echo g:v | =vim.g.v  " lua print(vim.api.nvim_eval('exists("g:v")'))

# guifont
    :Bufferize se gfn
    :se gfn=*         " pop-up font selection

# Nvim
    $vfn/lua/lazy/nvim-lspconfig.lua
    $VIMRUNTIME/filetype.lua
    :echo has('nvim')
    :echo matchstr('source_to_match','match')
    :echo nvim_get_runtime_file('parser', v:true)
    C /usr/share/nvim/runtime
    :lua vim.notify('test notification')
    nvim -?
    nvim -v

    fd health\.lua $vfn/packs-nvim  " health.lua
    fd init\.lua $vfn/packs-nvim  " init.lua

```vim
:verb ve  " :verbose version
```

## help
    \K  " $vfn/init.vim

### manpages
    :h Man

#### unix
    :Man Bash
    :Man rg

## lua
    :h vim.cmd
    :lua if x==nil then print("x is nil") end
    :lua vim.cmd.tabnew()
    :lua vim.cmd('wshada')

### boolean
    lua b = true
    lua b = not b; print(b)

### package.loaded
    :echo luaeval('package.loaded["csvview"]') " v:null if not loaded
    :h package.loaded
    :lua print(package.loaded)
    :lua print(package.loaded['csvview']) " nil  if not loaded

#### tests
    :if !empty(luaeval('package.loaded["csvview"]')) | echo 'loaded' | endif
    :lua if package.loaded['csvview'] then print('loaded') end

### print(...)
    :lua print("Hello!")
    :=package.config:sub(1,1) " identify winxx by \
    :=vim.api.nvim_eval('g:') " all global variables
    :=vim.bo.filetype
    :=vim.env.MYVIMRC  " path of my  init
    :=vim.env.vimfiles  " path of my  $vimfiles
    :=vim.env.VIMRUNTIME
    :=vim.fn.has'gui_running'
    :=vim.loop.cwd()

## neovide
    $ neovide &
    echo g:neovide

### g:neovide
    :if !exists('g:neovide') | echo 'no neovide' | endif
    :let g:neovide

## OS
    :=jit.os
    :=vim.fn.has("linux")

### MSWin
    $ProgramFiles\Neovim\share\nvim\runtime\mswin.vim
    $CPF\Neovim\share\nvim\runtime\filetype.lua
    g $HOME\.vimswap
    g $lazy
    g 'C:\Program Files\Neovim\share\nvim\runtime'

#### shada file
    g $HADL\nvim-data\shada
    rm $HADL\nvim-data\shada\main.shada.tmp.*  # works while nvim is running

> ...shada.tmp.X files exist, fixes "cannot write ShaDa file!"

### unix
    n ~/.vimswap

#### shada file
    cp ~/.local/share/nvim/shada/main.shada ~/nvim.shada
    r ~/.local/share/nvim/shada

`Arch`, if `handlr get .texty_extension`  returns `vim.desktop`, both `gVim` & `Vim` launch with `$VIM` & `$VIMRUNTIM` set as for `Nvim`!

### win64 ?
    :lua if package.config:sub(1,1) == "\\" then print('win64') end  " leveraging pure Lua

#### has()
    :=vim.fn.has("win64")
    :lua if vim.fn.has("win64") == 1 then print('win64') else print('not win6') end

## plugins
    $lazy
    $vfn/lua/lazy/telescope.lua

### Comment.nvim
- `gb[motion]`/`gc[motion]` toggles block/line comment [motion] or selection
- `[n]gbc`/`[n]gcc` toggles block/line comment for [n] line

## settings
`:che` (`:checkhealth`) if stuck in `unix`, `pkill neovim`

### default-mappings
    :h default-mappings

- `<c-w>k` => `vim.diagnostic.open_float()`
- `[d`/`]d`=> previous/next diagnostic

## spell
`\cs` = `cmp-spell` which underlines in red possible mistakes
`\ss` = `snipe-spell` if `cword` is misspelled, get labelled picker

## terminal
    :lua vim.cmd.terminal()
    :sp +te
    :te  " :terminal  in current window
    :vs +te

# Vim
```vim
@@           " = @: = repeat last command-line
\8           " toggle 82\106 columns
echo g:      " list of all variable"
ga           " returns code values for character under cursor
gQ           " enter Ex mode
K            " brings up a man page (if there is one) for word under cursor
q:           " brings up an interactive history of :commands (in an editable window)
vi           " exit Ex mode
:ar          " the argument list
:echo has('win32')
:echo has('win64')
:h key-notation
:h index     " lists the all of the commands
:h split()
:his         " Display command-line history
:his s       " Display search string history
:profile ... " for speed tests
:so %        " source the current file
:DiffOrig    " brings the Recover version up left
:X           " prompts for an encryption key
```

```
c-k<non-text-key> " enters the Vim value of a non-text-key
c-r "  " (in command line) insert the unnamed register
command-line window: C-c C-c  closes
:echo $HOME
:echo expand('<cword>')  " echos the word under the cursor
:echo getline(1) " contents of line 1
:echo hostname()

$DCGRs/CP/Vim/vim-vim/README.md
vim -u NONE
vim --version
vim(1)

$misc/CP/vimtest/README.md
```

## fzf.vim
```vim
\B                    " :BLines
\L                    " :Lines
```

## messages
    :mes
    :mes clear

- `:echo v:errmsg` - the last one
- `g<` - review

### buffer listing recents
    :Bufferize mes  " including Lua errors
	:redi @m | sil mes | redi END | new | exe "norm! \"mp"  " in a split below

## quickfix
    :cc n    " goto error n
    :ccl     " close
    :cn :cp  " next error  previous error
    :copen   " open
    :cw      " open if errors or close

## registers
    ":p                               " paste in last command.
    "kyy                              " copies current line into register k
    :echo @%                          " (relative) filepath
    :let@/='something to search for'  " makes that last search
    :let@a=@_                         " sets a to (always empty) black hole register
    :let@q=@k                         " sets a to contents of register k

- `"` = unnamed (default) register
- `*` = X11 primary (mouse) register
- `+` = X11 clipboard register
- `-` = small delete register
- `0` = yank register
- `1-9` = shifting delete registers
- `_` = null register

## settings
    $ rg -uu vim9script $vimfiles
    :Bufferize dig!        " categorised digraphs
    :Bufferize lan         " language  settings
    :Bufferize let         " all internal variables
    :Bufferize scr         " (:scriptnames) list of files sourced, in order
    :Bufferize se          " all option changes
    :Bufferize se ofu      " omnifunc
    :Bufferize ve          " Vim version etc
    :colo [default]        " current colorscheme
    :echo has ('gui_running')
    :function <name_of_function_to_reveal>
    :let mapleader
    :se                    " show all modified options
    :se fenc=utf8          " fileencoding
    :se spc                " pattern for of a sentence
    :se ttm                " ms timeout for key codes
    :se wop                " wildoptions
    :verb se tw            " shows where textwidth was set

    /usr/share/vim/vim91/filetype.vim
    C:\Vim\vim90\ftplugin

- `&&`, `||`
- options as variable: `:echo &textwidth`

### file formats
    :se ff        " fileformat
    :se ffs       " fileformats
    :e ++ff=unix  " shows ^M at end of dos files

### mappings
    :Bufferize map           " n s v
    :Bufferize map!          " e i
    :Bufferize map|map!      " e i n s v
    :h unmap
    :verb map <localleader>q " where that mapping was set
    :[verb ]map <c-n>        " shows the mapping

#### won't work
    <leader><leader><f11>

##### in terminals
- `alt+<key>`
- `<s-fn>` from  Alacritty  or xterm

### runtimepath
    $VIMRUNTIME
    :Bufferize se rtp
    :echo match(&runtimepath, 'mru') " returns -1 if MRU is not loaded
    :put =&rtp

`:Bufferize echo &rtp`, then `:s/,/\r/g`

#### packpath
    :echo &pp
    :se pp

### syntax highlighting
	:h ownsyntax
	:h syn-region
    :windo echo b:current_syntax
    C \usr\share\vim\vim90\syntax
    C:\Vim\vim90\syntax

`syntax.txt`

#### state
    :h syn-off
    :let g:syntax_on
    :sy off
    :sy on

#### settings
    :Bufferize sy  " :h syn-list
    :Bufferize Inspect  " to see what's highlighting under the cursor
	:hi
    :se synmaxcol=0  " removes 3000 character limit (:se smc)
	:so $VIMRUNTIME/syntax/hitest.vim  " wait for it to load!
    :sy sync fromstart  " but can't find any way to check this setting
	$VIMRUNTIME/syntax/syncolor.vim

