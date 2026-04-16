
Joseph's (g)Vim Quick Reference

    let v=6 | echo g:v | =vim.g.v  " lua print(vim.api.nvim_eval('exists('g:v')'))

# guifont
    :Bufferize se gfn
    :se gfn=*         ' pop-up font selection

# Nvim
    $vfn/lua/lazy/nvim-lspconfig.lua
    $VIMRUNTIME/filetype.lua
    :echo has('nvim')
    :echo has('nvim-0.11')
    :echo has('nvim-0.12.0')
    :=not vim.fn.has('nvim-0.12.0')
    :echo matchstr('source_to_match','match')
    :echo nvim_get_runtime_file('parser', v:true)
    :lua vim.notify('test notification')
    :verb ve  " :verbose version
    nvim -?
    nvim -v

    fd health\.lua $vfn/packs-nvim  " health.lua
    fd init\.lua $vfn/packs-nvim  " init.lua

## Treesitter
    :=vim.treesitter.language_version  " :lua vim.treesitter.inspect_tree()
    :InspectTree
    :lua vim.treesitter.start()
    :lua vim.treesitter.stop()

## help
    \K  ' $vfn/init.vim

### manpages
    :h Man

#### unix
    :Man Bash
    :Man rg

## lua
    :h vim.cmd
    :lua if x==nil then print('x is nil') end
    :lua vim.b.v = '5'  " then  :echo b:v
    :lua vim.cmd.tabnew()
    :lua vim.cmd('wshada')

### boolean
    lua b = true
    lua b = not b; print(b)

### package.loaded
    :echo luaeval('package.loaded['csvview']') ' v:null if not loaded
    :h package.loaded
    :lua print(package.loaded)
    :lua print(package.loaded['csvview']) ' nil  if not loaded

#### tests
    :if !empty(luaeval('package.loaded['csvview']')) | echo 'loaded' | endif
    :lua if package.loaded['csvview'] then print('loaded') end

### print(...)
    :lua print('Hello!')
    :=package.config:sub(1,1) ' identify winxx by \
    :=vim.api.nvim_eval('g:') ' all global variables
    :=vim.bo.filetype
    :=vim.env.MYVIMRC  ' path of my  init
    :=vim.env.vimfiles  ' path of my  $vimfiles
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
    :=vim.fn.has('linux')

### MSWin
    $CPF\Neovim\share\nvim\runtime\mswin.vim
    $CPF\Neovim\share\nvim\runtime\filetype.lua
    g $HOME\.vimswap
    g $lazy

navigating into `C:\Vim` requires cursor on C

#### ShaDa file
    g $HADL\nvim-data\shada
    rm $HADL\nvim-data\shada\main.shada.tmp.*  # works while nvim is running

> ...shada.tmp.X files exist, fixes 'cannot write ShaDa file!'

#### win64 ?
    :lua if package.config:sub(1,1) == '\\' then print('win64') end  ' leveraging pure Lua

##### has()
    :=vim.fn.has('win64')
    :lua if vim.fn.has('win64') == 1 then print('win64') else print('not win6') end

### unix
    $nvmp
    :if $XDG_CURRENT_DESKTOP == '' | echo 'might be Openbox' | endif
    n ~/.vimswap

#### plugins
    $lazy
    /root/.local/share/nvim/lazy

#### ShaDa file
    cp ~/.local/share/nvim/shada/main.shada ~/nvim.shada
    r ~/.local/share/nvim/shada

- `~/.local/state/nvim/shada/main.shada` has more recent command history
- `Arch`, if `handlr get .texty_extension`  returns `vim.desktop`, both `gVim` & `Vim` launch with `$VIM` & `$VIMRUNTIM` set as for `Nvim`!

## plugins
    $lazy
    $vfn/lua/lazy/telescope.lua

### Comment.nvim
- `gb[motion]`/`gc[motion]` toggles block/line comment [motion] or selection
- `gcA` append comment
- `gco`/`gcO` begin comment on next/previous line
- `[n]gbc`/`[n]gcc` toggles block/line comment for [n] line

## settings
    :Bufferize echo stdpath('cache')
    :Bufferize echo stdpath('config')
    :Bufferize echo stdpath('data')
    nvim --clean

- `:che` (`:checkhealth`)
    - if stuck in `unix`, `pkill neovim`
    - somehow accesses `:white_check_mark:` ✅

### inccommand
- `:h icm`
- `:let &icm = ''` disables preview of substitute changes
- `:se icm` shows default is `split`

### default-mappings
    :h default-mappings
    <c-w>d  ' (:h CTRL-W_d-default) opens diagnostic

`[d`/`]d`=> previous/next diagnostic

### ShaDa file
- `MessagePack` format which is almost unreadable from `Vim`
- manually editing: with no `Neovim` running, `nvim --clean ~/.local/state/nvim/shada/main.shada`, remove the relevant lines, `:w|wsh|q`

## spell
`\cs` = `cmp-spell` which underlines in red possible mistakes
`\ss` = `snipe-spell` if `cword` is misspelled, get labelled picker

## terminal
`lynx`, `w3m` override Nvim's keys...

### in current window
    :lua vim.cmd.terminal()
    :te  ' :terminal

### in split
    :sp +te
    :vs +te

# Vim
    :echo $HOME
    c-k<non-text-key> " enters the Vim value of a non-text-key
    c-r '  " (in command line) insert the unnamed register
    vim -u NONE
    vim --version

```vim
@@               " = @: = repeat last command-line
\8               " toggle 82\106 columns
ga               " returns code values for character under cursor
gQ               " enter Ex mode
K                " brings up a man page (if there is one) for word under cursor
q:               " brings up an interactive history of :commands (in an editable window)
vi               " exit Ex mode
:ar              " the argument list
:h key-notation
:h index        " lists the all of the commands
:h split()
:his            " Display command-line history
:his s          " Display search string history
:packadd clrzr  " $vfv/plugin/packsVimFull.vim
:profile ...    " for speed tests
:so %           " source the current file
:tab ball       " all buffers into tabs
:DiffOrig       " brings the Recover version up left
:X              " prompts for an encryption key
```

- `&&`, `||`
- command-line window: `C-c C-c`  closes
- vim(1)

## completion
    :Bufferize se ofu  ' omnifunc
    :h compl-spelling

## fzf.vim
```vim
\B " :BLines
\L " :Lines
```

## messages
    :mes
    :mes clear

- `:echo v:errmsg` - the last one
- `g<` - review

### buffer listing recents
    :Bufferize mes  " including Lua errors
    :redi @m | sil mes | redi END | new | exe 'norm! \'mp'  ' in a split below

## quickfix
    :cc n    ' goto error n
    :ccl     ' close
    :cn :cp  ' next error  previous error
    :copen   ' open
    :cw      ' open if errors or close

## registers
    ':p                               " paste in last command.
    'kyy                              " copies current line into register k
    :h registers

`"` also triggers `vim-peekaboo`

## scripting
```vim
:echo expand('<cword>') " echos the word under the cursor
:echo getline(1) " contents of line 1
:echo has('win32')
:echo has('win64')
:echo hostname()
```

vimscript

### detect file
    :if filereadable(expand('~/_vimrc')) | echo 'there' | endif
    :if !empty(expand(glob('~/_vimrc'))) | echo 'there' | endif  # also detects unreadable files

### registers
    :echo @%                          " (relative) filepath
    :let @a = 'a'|let @A ='a'|reg a
    :let@/='something to search for'  " makes that last search
    :let@a=@_                         " sets a to (always empty) black hole register
    :let@q=@k                         " sets a to contents of register k

#### registers
- `'` = unnamed (default) register
- `*` = X11 primary (mouse) register
- `+` = X11 clipboard register
- `-` = small delete register
- `0` = yank register
- `1-9` = shifting delete registers
- `_` = null register

### variables
    echo 'count'.len('four')
    if g:empty | true | endif
    let g:empty = 0 | if empty(g:empty) | echo 'empty' | endif
    let g:v = 1 | if g:v | echo g:v | endif

- `echo g:` gets a vast list
- `let g:v = get(g:, 'v', 'v_not_set')` then `let g:v = 'v_set'`

## settings
    $ rg -uu vim9script $vimfiles
    :Bufferize dig!        " categorised digraphs
    :Bufferize lan         " language  settings
    :Bufferize let         " all internal variables
    :Bufferize scr         " (:scriptnames) list of files sourced, in order
    :Bufferize ve          " Vim version etc
    :Bufferize verb se scl " where signcolumn was last set
    :echo has ('gui_running')
    :function <name_of_function_to_reveal>
    :let mapleader
    ~/.viminfo

    /usr/share/vim/vim91/filetype.vim
    C:\Vim\vim90\ftplugin

### colorscheme
    :Bufferize colo
    :colo default
    :colo PaperColor
    :colo tomorrow  " $vfv/enter/gvimrc-Arch.vim

#### background
    :h 'bg'
    :se bg=dark
    :se bg=light

### file formats
    :se ff        ' fileformat
    :se ffs       ' fileformats
    :e ++ff=unix  ' shows ^M at end of dos files

### language
    :echo v:lang
    :if v:lang =~ 'gb' | echo 'Great Britain' | endif

### mappings
    :Bufferize map           ' n s v
    :Bufferize map!          ' e i
    :Bufferize map|map!      ' e i n s v
    :h unmap
    :h <sid>
    :verb map <localleader>q ' where that mapping was set
    :[verb ]map <c-n>        ' shows the mapping

#### won't work
    <leader><leader><f11>

##### in terminals
- `alt+<key>`
- `<s-fn>` from  Alacritty  or xterm

### options
    :Bufferize se          ' all option changes
    :se                    ' show all modified options
    :se fenc=utf8          ' fileencoding
    :se spc                ' (spellcapcheck) pattern for defining a sentence
    :se ttm                ' ms timeout for key codes
    :se wop                ' wildoptions
    :verb se tw?           ' shows where textwidth was set (? is only really needed for booleans)

options as variable: `:echo &textwidth`

### runtimepath
    $VIMRUNTIME
    :Bufferize se rtp
    :echo match(&runtimepath, 'mru') ' returns -1 if MRU is not loaded
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

#### settings
    :Bufferize sy  " :h syn-list
    :Bufferize Inspect  " to see what's highlighting under the cursor
    :hi
    :se smc=0  " (synmaxcol) removes 3000 character limit
    :so $VIMRUNTIME/syntax/hitest.vim  " wait for it to load!
    :sy sync fromstart  " but can't find any way to check this setting

##### not Nvim
    $cGRs/d-CP/d-Vim-Vim/r-vim-vim/runtime/syntax/syncolor.vim
    $VIMRUNTIME/syntax/syncolor.vim

#### state
    :h syn-off
    :let g:syntax_on
    :sy off
    :sy on

