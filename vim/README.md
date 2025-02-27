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
