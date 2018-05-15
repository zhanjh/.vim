set nocompatible " not compatible with vi
set autoread " detect when a file is changed

set backspace=indent,eol,start

set history=1000 " change history to 1000
set textwidth=98

let mapleader = ','
let g:mapleader = ','

nnoremap <leader>R :source ~/.vimrc<cr>

set mouse=a " mouse

"set clipboard+=unnamedplus
"set clipboard=unnamed " todo need more digging

set nu " line number

set completeopt=longest,menuone " ctrl+p ctrl+n
" Make Vim completion popup menu work just like in an IDE
" http://vim.wikia.com/wiki/Make_Vim_completion_popup_menu_work_just_like_in_an_IDE

set laststatus=2 " always show status line

set nolazyredraw " don't redraw while executing macros

set magic " Set magic on, for regex

set showmatch " show matching braces
"set mat=2 " how many tenths of a second to blink

" color
syntax enable
set t_Co=256
set background=dark
colorscheme wombat256mod

" Search
set ignorecase " case insensitive searching
set smartcase " case-sensitive if expresson contains a capital letter
set hlsearch
set incsearch " set incremental search, like modern browsers

" Tab & indent control
set expandtab " insert space characters whenever the tab key is pressed
set tabstop=4 " insert 4 spaces for a tab
set shiftwidth=4 " number of spaces to use for indent and unindent
set ai
retab " To change all the existing tab characters to match the current tab settings,

set autoindent " automatically set indent of new line
set smartindent

set smarttab " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set softtabstop=4 " edit as if the tabs are 4 characters wide
set shiftround " round indent to a multiple of 'shiftwidth'

" Toggle invisible characters
set listchars=tab:▸\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=↪
nnoremap <leader>l :set list!<cr>

set backupdir=~/.vim/tmp
set directory=~/.vim/tmp

" Highlight current line
" http://vim.wikia.com/wiki/Highlight_current_line
set cursorline
