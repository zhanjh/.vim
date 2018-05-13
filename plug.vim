" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'mileszs/ack.vim'
Plug 'w0rp/ale'
Plug 'junegunn/fzf'
Plug 'gregsexton/gitv'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'gosukiwi/vim-atom-dark'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'mhinz/vim-signify'
Plug 'janko-m/vim-test'
Plug 'vim-scripts/wombat256.vim'

" Initialize plugin system
call plug#end()
