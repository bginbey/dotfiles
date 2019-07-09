" Plugin directory
call plug#begin('~/.local/share/nvim/plugged')

" Install plugins
" ------------------------------------------------

Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-syntastic/syntastic'
Plug 'mtscout6/syntastic-local-eslint.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --enable-framework' }
Plug 'jelera/vim-javascript-syntax'
Plug 'omnisharp/omnisharp-vim'

" Initialize plugin system
call plug#end()

" Vim key mapping
" ------------------------------------------------
let mapleader=","
map <leader>c :set cursorline!<CR>
map <leader><leader> <C-^>

" Clear the current search pattern
nnoremap <leader>h :let @/ = ""<CR>

cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e :edit %%
map <leader>v :view %%
map <leader>d :edit .<CR>
map <leader>f :CommandTFlush<CR>

" Fix delete key errors on Macbook Pro
" ------------------------------------------------
set backspace=indent,eol,start

" Plugin settings
" ------------------------------------------------

" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 3
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ["eslint"]

" NERDTree
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeShowHidden=1
let NERDTreeQuitOnOpen = 1
let g:NERDTreeRespectWildIgnore = 1

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_show_hidden = 1
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" Airline
" Set Airline to display even if there is only one buffer open
set laststatus=2
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#syntastic#enabled = 1
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'

" YouCompleteMe
" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" Omnisharp
let g:OmniSharp_server_stdio = 1

" UI settings
" ------------------------------------------------
syntax on
set expandtab
set shiftwidth=2
set softtabstop=2
set cursorline
set nowrap

set number
set ruler " shows cursor position
set so=20
set hlsearch
set hidden " allows hidden buffer<Paste>
set wrap
set linebreak
set nolist

" file type handling
" ------------------------------------------------
" Language specific syntax highlighting
filetype on
filetype plugin indent on
" au BufNewFile,BufRead *.json set ft=javascript
au BufNewFile,BufRead *.gulpfile set ft=javascript
" ignore files
set wildignore+=**/node_modules
set wildignore+=*.swp,.DS_Store,.git,.vs
