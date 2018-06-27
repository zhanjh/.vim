" NERDTree
let g:NERDTreeQuitOnOpen=0 " close NERDTree after a file is opened
let NERDTreeShowHidden=1 " show hidden files in NERDTree
nmap <leader>k :NERDTreeToggle<cr> " Toggle NERDTree
nmap <leader>y :NERDTreeFind<cr> " expand to the path of the file in the current buffer

" -------------------------------
" junegunn/fzf & junegunn/fzf.vim
" -------------------------------
"  https://github.com/junegunn/fzf.vim
nmap <silent> <C-P> :FZF<CR>
nmap <silent> <leader>p :Tags<CR>

" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

" [[B]Commits] Customize the options used by 'git log':
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

" [Tags] Command to generate tags file
let g:fzf_tags_command = 'ctags -R'

" [Commands] --expect expression for directly executing the command
let g:fzf_commands_expect = 'alt-enter,ctrl-x'

" ---
" ale
" ---
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

" -----------------
" majutsushi/tagbar
" -----------------
" https://github.com/majutsushi/tagbar

nmap <F8> :TagbarToggle<CR>

let g:tagbar_type_javascript = {
    \ 'ctagstype' : 'JavaScript',
    \ 'kinds'     : [
        \ 'M:Modules',
        \ 'V:Variables',
        \ 'P:Properties',
        \ 'C:Classes',
        \ 'E:Exports',
        \ 'F:Functions',
        \ 'G:Generators',
        \ 'I:Imports',
        \ 'O:Objects',
        \ 'T:Tags'
    \ ]
\ }
