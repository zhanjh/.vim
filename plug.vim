" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'mileszs/ack.vim'
Plug 'w0rp/ale'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'gregsexton/gitv'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'gosukiwi/vim-atom-dark'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'mhinz/vim-signify'
Plug 'janko-m/vim-test'
Plug 'vim-scripts/wombat256.vim'
Plug 'majutsushi/tagbar'
Plug 'gabrielelana/vim-markdown'
Plug 'godlygeek/tabular'
Plug 'pangloss/vim-javascript'
Plug 'jelera/vim-javascript-syntax'
" Plug 'Quramy/vim-js-pretty-template'
Plug 'vim-scripts/phpfolding.vim'
Plug 'StanAngeloff/php.vim'


" Initialize plugin system
call plug#end()
