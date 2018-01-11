set nocompatible
filetype off
set autowrite
set ruler
set number
set expandtab
set laststatus=2
set incsearch
set autoindent
set tabstop=2
set shiftwidth=2
set numberwidth=2
set textwidth=100
set ignorecase
set mouse=a
set colorcolumn=80
set backspace=indent,eol,start
set nowrap
set cursorline
set ttymouse=xterm
set hlsearch

set rtp+=/usr/local/opt/fzf
call plug#begin('~/.vim/plugged')

" My Plugins
Plug 'airblade/vim-gitgutter'
Plug 'flazz/vim-colorschemes'
Plug 'janko-m/vim-test'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mxw/vim-jsx'
Plug 'NLKNguyen/copy-cut-paste.vim'
Plug 'pangloss/vim-javascript'
Plug 'pbrisbin/vim-mkdir'
Plug 'scrooloose/nerdtree'
Plug 'Shougo/deoplete.nvim'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-haml'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-ruby/vim-ruby'
Plug 'w0rp/ale'
Plug 'Yggdroot/indentLine'
call plug#end()

" glyphs
set encoding=utf8
 
set background=dark
syntax on
colorscheme SlateDark

filetype plugin indent on

let mapleader=","

" Split windows
nnoremap <Leader>s :sp<cr><C-w><C-w>
nnoremap <Leader>v :vsp<cr><C-w><C-w>

" Easily switch between windows
nnoremap <silent> <c-k> :wincmd k<cr>
nnoremap <silent> <c-j> :wincmd j<cr>
nnoremap <silent> <c-h> :wincmd h<cr>
nnoremap <silent> <c-l> :wincmd l<cr>

" Switch between the last two files
nnoremap <Leader><Leader> <c-^>

" Ale
let g:ale_lint_on_text_changed = 1
let g:ale_sign_error = '⨉'
let g:ale_sign_warning = '⚠'
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
let g:ale_emit_conflict_warnings = 0
let g:ale_linters = { 
\   'ruby': ['rubocop'] 
\}
let g:ale_fix_on_save = 1

" Airline
let g:airline_theme='distinguished'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#ale#enabled = 1

" FZF
nnoremap <C-p> :Files<cr>
let g:fzf_layout = { 'down': '~15%' }

" indentLine
let g:indentLine_char = '¦'

" NERDTree
nnoremap <leader><Tab> :NERDTreeToggle<cr>

" copy-cut-paste
let g:copy_cut_paste_no_mappings = 1

" Use your keymap
nmap qc <Plug>CCP_CopyLine
vmap qc <Plug>CCP_CopyText
nmap qx <Plug>CCP_CutLine
vmap qx <Plug>CCP_CutText
nmap qv <Plug>CCP_PasteText

" Quit with :Q
command -nargs=0 Quit :qa!
:command W w

