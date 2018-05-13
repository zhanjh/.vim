" NERDTree
let g:NERDTreeQuitOnOpen=0 " close NERDTree after a file is opened
let NERDTreeShowHidden=1 " show hidden files in NERDTree
nmap <leader>k :NERDTreeToggle<cr> " Toggle NERDTree
nmap <leader>y :NERDTreeFind<cr> " expand to the path of the file in the current buffer

" junegunn/fzf
nmap <silent> <C-P> :FZF<CR>

" ale
let g:ale_sign_column_always = 1
let g:airline#extensions#ale#enabled = 1 " Set this. Airline will handle the rest.
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

let g:ale_php_phpcs_standard = 'PSR2' " php
let g:ale_php_phpstan_level = 7

highlight ALEError cterm=reverse,bold ctermfg=NONE ctermbg=NONE
highlight ALEWarning cterm=reverse,bold ctermfg=NONE ctermbg=NONE

" vim-test
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>f :TestFile<CR>
nmap <silent> <leader>T :TestSuite<CR>
nmap <silent> <leader>; :TestLast<CR>
nmap <silent> <leader>gg :TestVisit<CR>

let test#strategy = {
  \ 'nearest': 'basic',
  \ 'file':    'dispatch',
  \ 'suite':   'basic',
\}

" ack.vim
" https://github.com/mileszs/ack.vim
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" tpope/vim-fugitive
set diffopt+=vertical "https://github.com/tpope/vim-fugitive/issues/510
