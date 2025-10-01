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



## How to create incremental numbers in nvim?
```bash
put = range(1, n)
```

## How to move the screen up/down without moving the cursor?
Use ctrl+e and ctrl+y

## How to make a word upper/lower charactrized? 
In **Neovim (nvim)**, you can easily change the case of selected text. Here are the main ways:

---

### 1. **Using Visual Mode**

1. Select the text:

   * `v` → character-wise selection
   * `V` → line-wise selection
   * `Ctrl+v` → block-wise selection
2. Then:

   * `U` → make it **uppercase**
   * `u` → make it **lowercase**

---

### 2. **Using Normal Mode on a Motion**

You don’t even need to select. You can apply directly:

* `gU<motion>` → uppercase
* `gu<motion>` → lowercase

Examples:

* `gUw` → uppercase the current word
* `guw` → lowercase the current word
* `gU}` → uppercase until end of paragraph
* `guap` → lowercase a paragraph

---

### 3. **With Visual Selection + `gU` / `gu`**

* Select text with `v`, then press `gU` for uppercase or `gu` for lowercase.

---

👉 Quick example:

* Place cursor on a word
* Type `gUw` → it becomes **ALLCAPS**
* Type `guw` → it becomes lowercase

---

