## Useful vim skills

1. buffers
    - In command mode, `bd` : Close the buffer you are in currently. Remove it from the buffers list.
    - In command mode, `bn` : Go to the **next** buffer.
    - In command mode, `bp` : Go to the **previous** buffer.
2. Paste words from system's clipboard: Use `"+p` in **normal mode**. (In archlinux, you should install `gvim` package to have the clipboard feature.) Lowercase `p` pasting the word after the cursor. Uppercase `P` pasting the word before the cursor.
3. Copy words to system's clipboard: Use `"+y` in **visual mode**.
4. In **normal mode**, `0` or `^` means `home` . (But they are a little different.)
5. In **normal mode**, `$` means `end`. (`g_` is also `end` but it is a little different from `$`.)
6. tabs 
    - In command mode, use **tabedit file** to open the file in a new tab.
    - In normal mode, `gt` : Go to next tab.
    - In normal mode, `gT` : Go to previous tab.
7. Folding
    - `zo` : Open the current folding.
    - `zc` : Close the current folding.
    - `zm` : Close **all** foldings in the file.
    - `zr` : Open **all** foldings in the file.
8. INSERT mode's key
    - `s` : Delete the word under the cursor and enter the INSERT mode. It is equivalent to `cl`.
    - `S` : Delete **the whole line** under the cursor and enter the INSERT mode. It is equivalent to `cc`.
9. Spell check keys
When entering spell check, there are the keys to use:
    - `]s` : Move to the next misspelled word.
    - `[s` : Move to the previous misspelled word.
    - `z=` : Entering a list of options to that word.
    - `zg` : Mark the word as a **correct** word.
    - `zw` : Mark the word as a **wrong** word.
10. vim-sneak's keybindings
    - `s` : To search forwards.
    - `S` : To search backwards. 
    - `;` : To go the next match.
    - `,` : To go the previous match.
11. Quickly generate numbers
    - Input `1.` at first, then copy and paste a few `1.` . Second, press `V` to select the lines you want to insert numbers. Finally in visual mode, press `g` as a prefix, then press `<C-A>` (Ctrl-a) to generate numbers in a sequence manner. 
## zsh skills in emacs mode

1. Editing multi-line command, press `Esc+Enter` or `Alt+Enter` to insert the new line.
2. Press `<C-x><C-e>` to open the default editor to edit commands. It's useful when the command is too long. You have to add some [configs][] in order to use this feature.
3. `<C-p>` for the previous command.
4. `<C-n>` for the command after pressing `<C-p>`.
5. `<C-u>` for delete the line in terminal.
6. `<C-e>` for going to the end of the line.
7. `<C-a>` for going to the beginning of the line.

[configs]: https://github.com/tkuwill/willdezenbookArch_dotfiles/blob/master/.config/.zshrc#L111

## vifm skills

1. `za` : toggle dot files visibility.
 
