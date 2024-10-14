set number " Display line number on the left side. 
set ls=2 " This makes Vim show a status line even shen only one window is shown. 
filetype plugin on " This line enables loading the plugin files for specific file types. 
set tabstop=2 " Set tabstop to tell vim how many columns a tab counts for. Linux kernel code expoects each tab to be eithg columns. 
set expandtab " When expandtab is set, hitting Tab in insert made will produce the appropriate number of spaces. 
set softtabstop=2 " Set softtabsstop to contrl how many columns text is indented with the reindent operations (<< and >>) and automate. 


" Set tab width to 8 spaces
set shiftwidth=2

" Disable filetype-specific indent settings
autocmd FileType * setlocal tabstop=2 shiftwidth=2 expandtab




setlocal foldmethod=indent " Set folding method
set t_Co=256 " Makes Vim use 256 colors. 
set nowrap " Dont wrap lines!
colorscheme desert " 
set nocp " This changes the values of a LOT of options, enabling features which are not Vi compatible but really really nice. 
set clipboard=unnamed 
set clipboard+=unnamedplus
set autoindent " Automatic indentation
set cindent " This turns on C style indentatino
set si " Smart indent
syntax enable "syntax highlighting 
set showmatch " Show matching brackets
set hlsearch " Highlight in serach
set ignorecase " Ignore case in search
set noswapfile " Avoid swap files
set mouse=a " Mouse Integration

" auto complete for ( , " , ' , [ , {
"inoremap    ( ()<Left>
"inoremap    <Left>
"inoremap    ` ``<Left>
"inoremap    ' ''<Left>
"inoremap    [ []<Left>
"inoremap    { {}<Left>

" auto comment and uncomment with F6 and F7 key
""autocmd FileType c, cpp, java, scala let b:comment_leader = '// '
""autocmd FileType sh, ruby, python    let b:comment_leader = '#'
autocmd BufEnter * if &filetype ==# 'c' || &filetype ==# 'cpp' || &filetype ==# 'java' || &filetype ==# 'scala' | let b:comment_leader = '// ' | endif
autocmd BufEnter * if &filetype ==# 'sh' || &filetype ==# 'ruby' || &filetype ==# 'python' | let b:comment_leader = '# ' | endif

" Commenting line with F6
nnoremap <silent> <F6> :silent s/^/<C-R>=escape(b:comment_leader, '\/')<CR>/ <CR>:nohlsearch<CR>
vnoremap <silent> <F6> :s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/ <CR>:nohlsearch<CR>

" Uncommenting line with F7
nnoremap <silent> <F7> :silent s/^\V<C-R>=escape(b:comment_leader, '\/')<CR>//e <CR>:nohlsearch<CR>
vnoremap <silent> <F7> :s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e <CR>:nohlsearch<CR>

""noremap <silent> K :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR> " commenting line with F6
""noremap <silent> L :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR> " uncommenting line with F7

noremap <silent> #5 :!./% <CR> "execute bash & python script with F5
""noremap <silent> #3 :bp<CR> " switch to pervious tab with F3
""noremap <silent> #4 :bn<CR> " switch to next tab with F2
noremap <silent> #3 :tabprevious<CR> " switch to previous tab with F3
noremap <silent> #4 :tabnext<CR> " switch to next tab with F2

map <F8> :setlocal spell! spelllang=en_us<CR> " check spelling with F8
set pastetoggle=<F2> " Paste mode toggle with F2 Pastmode disable auto-indent and bracket auto-compelation and it helps you to 


" PLUGINS

" Airline plugin setting
let g:airline_theme = 'wombat' " Set Airline plugin theme
let g:airline#extensions#tabline#enabled = 1 " Enable showing tabs
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
" Unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'




" NERDTree plugin setting
map <F9> :NERDTreeToggle<CR> " toggle showing NERDTree
" open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " close vim if the only wind
let NERDTreeMapOpenInTab='<c-t>'


" jedi-vim plugin
""autocmd BufEnter *.py setlocal omnifunc=jedi-vim#completions


"" indentline-vim
""let g:indentLine_loaded=1
""let g:indentLine_enabled = 1
""let g:indentLine_char = '┆'   " Character used for indentation lines
""let g:indentLine_fileTypeExclude = ['help', 'dashboard']

let g:indentLine_bufTypeExclude = ['Dockerfile'] " Disable indentLine for Dockerfile



let g:AutoPairsShortcutToggle = ''


















