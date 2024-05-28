
Joseph's (g)Vim Quick Reference

    r $vimfiles/settings

# guifont
    :Bufferize se gfn
    :se gfn=*         " pop-up font selection

# Nvim
    :echo has('nvim')
    :echo nvim_get_runtime_file('parser', v:true)
    :lua vim.cmd.tabnew()
    :Man git

    fd health\.lua $vimfiles/nvim/packs-nvim  " health.lua
    fd init\.lua $vimfiles/nvim/packs-nvim  " init.lua

`:che` (`:checkhealth`)

## lua boolean
    lua b = true
    lua b = not b; print(b)

## lua print(...)
    :=package.config:sub(1,1)  " identify winxx by \
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
    $HOME\AppData\Local\nvim-data\shada\main.shada
    :=jit.os
    :=vim.fn.has("linux")

### win64 ?
    :lua if package.config:sub(1,1) == "\\" then print('win64') end  " leveraging pure Lua

#### has()
    :=vim.fn.has("win64")
    :lua if vim.fn.has("win64") == 1 then print('win64') else print('not win6') end

## plugins
    $vimfiles/nvim/lua/lazy/telescope.lua

### Comment.nvim
- `gb[motion]`/`gc[motion]` toggles block/line comment [motion] or selection
- `[n]gbc`/`[n]gcc` toggles block/line comment for [n] line

## terminal
    :lua vim.cmd.terminal()
    :sp +te
    :te  " :terminal  in current window
    :vs +te

# Vim
```vim
@@           " = @: = repeat last command-line
\8           " toggle 82\106 columns
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
:echo getline(1) " contents of line 1

$DCGRs/CP/Vim/vim-vim/README.md
vim -u NONE
vim(1)

$misc/CP/vimtest/README.md
```

## messages
- `:echo v:errmsg` - the last one
- `g<` - review

### buffer listing recents
    :Bufferize messages
	:redir @m | silent messages | redir END | new | exe "normal! \"mp"

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

- `"` = default regiser
- `*` = X11 primary (mouse) regiser
- `+` = X11 clipboard regiser
- `0` = yank regiser
- `1-9` = shifting delete registers
- `_` = null regiser

## settings
    :Bufferize dig!        " categorised digraphs
    :Bufferize let         " all internal variables
    :Bufferize scr         " (:scriptnames) list of files sourced, in order
    :Bufferize se          " all option changes
    :Bufferize se ofu      " omnifunc
    :Bufferize version     " Vim version etc
    :colo [default]        " current colorscheme
    :echo has ('gui_running')
    :function <name_of_function_to_reveal>
    :let mapleader
    :se                    " show all modified options
    :se spc                " pattern for of a sentence
    :se ttm                " ms timeout for key codes
    :verb se tw            " shows where textwidth was set

    $VIMRUNTIME
    C \usr\share\vim\vim90\ftplugin
    C:\Vim\vim90\ftplugin
    /usr/share/vim/vim91/

- `&&`, `||`
- options as variable: `:echo &textwidth`

### mappings
    :Bufferize map           " n s v
    :Bufferize map!          " e i
    :Bufferize map|map!      " e i n s v
    :verb map <localleader>q " where that mapping was set
    :[verb ]map <c-n>        " shows the mapping

#### won't work
    <leader><leader><f11>

##### in terminals
- `alt+<key>`
- `<s-fn>` from  Alacritty  or xterm

### runtimepath
    :Bufferize echo &rtp
    :Bufferize se rtp
    :se pp  " packpath
    $vimfiles/grab/rtp-$host.fetl

### syntax highlighting
	:h syn-region
    :windo echo b:current_syntax
    C \usr\share\vim\vim90\syntax
    C:\Vim\vim90\syntax
    let g:syntax_on

`syntax.txt`

#### settings
    :Bufferize sy  " :h syn-list
	:hi
    :Inspect  " to see what's highlighting under the cursor
    :se synmaxcol=0  " removes 3000 character limit (:se smc)
	:so $VIMRUNTIME/syntax/hitest.vim
    :sy sync fromstart  " but can't find any way to check this setting

	$VIMRUNTIME/syntax/syncolor.vim

