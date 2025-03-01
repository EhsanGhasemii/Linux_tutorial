# VIM



How to set nvim configuration?
```bash
nvim ~/.config/nvim/init.vim
```

Where should you put your plugins?
```bash
~/.local/share/nvim/site/pack/plugins/start/
```

## Somethings to be corrected
1. copy/paste mode in server side. 
2. create git projects in server side. 


## How to find just pure words in nvim?
```nvim
/\<example\>
```

## How to just process a specific lines in nvim?
```nvim 
:110,120s/<first_word>/<second_word>/gc
```

## ShortCut way to search just a specific word in nvim.
go to the word and press 'SHIFT' + '8' in visual mode.


## How to write a word at the end of some lines simultaneously?
1. Move your cursor to the first line where you want to add the word.
2. Enter visual block mode by pressing `Ctrl-v`.
3. Use the `j` key to select all the lines you want to modify.
4. Press `$` to move the cursor to the end of the selected lines.
5. Press `A` to enter insert mode at the end of each selected line.
6. Type the word you want to add.
7. Press `Esc` to apply the changes to all selected lines.
