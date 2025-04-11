vim: set fdl=6:

    C:\Vim\vim91\vim.exe $vimfiles/test/README.md

```bash
echo hello
```

```python
def main() -> None:
    print("Hello, World!")
```

```rust
fn main() {
    println!("Hello, World!");
```

[!TODO] <https://github.com/MeanderingProgrammer/render-markdown.nvim/wiki/Callouts>

- list level 1
- list level 1
- list level 1
    - list level 2
    - list level 2
    - list level 2
        - list level 3
            - list level 4
            - list level 4
            - list level 4
                - list level 5
                - list level 5
                - list level 5
                    - list level 6
                        - list level 7
                        - list level 7
                        - list level 7

# heading level 1

## heading level 2

### heading level 3

#### heading level 4

##### heading level 5

###### heading level 6

# vimfiles test
my reduced vim files for testing

setup - see [ $vimfiles/README.md ](https://github.com/harriott/vimfiles/blob/master/README.md)

## linux tests
    gvim -u ~/.vimtest/vimrc.vim $vimfiles/test/vimrc.vim

    vim -u ~/.vimtest/vimrc.vim $vimfiles/test/vimrc.vim

    vim -u ~/.vimtest/vimrc.vim $vimfiles/test/README.md

    vim -u ~/.vimtest/vimrc.vim $vimfiles/test/test_files/filetypes/test.bbcode
    vim -u ~/.vimtest/vimrc.vim $vimfiles/test/test_files/filetypes/test.csv
    vim -u ~/.vimtest/vimrc.vim $vimfiles/test/test_files/filetypes/test-csv-1.md
    vim -u ~/.vimtest/vimrc.vim $vimfiles/test/test_files/filetypes/test.dw

### harriott/vim-markdown
    vim -u ~/.vimtest/vimrc.vim $vimfiles/test/test_files/filetypes/test_bbcode.md
    vim -u ~/.vimtest/vimrc.vim $vimfiles/test/test_files/filetypes/test_csv-0.md
    vim -u ~/.vimtest/vimrc.vim $vimfiles/test/test_files/filetypes/test_ps1.md
    vim -u ~/.vimtest/vimrc.vim $vimfiles/test/test_files/filetypes/test_tex.md

## MSWin tests
    C:\Vim\vim91\vim.exe -u ~/vimtest/vimrc.vim "$vimfiles/test/vimrc.vim"

