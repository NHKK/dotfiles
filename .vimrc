" Syntax hightlight "
syntax on

" Make vim incompatbile to vi.
set nocompatible
set modelines=0

"TAB settings.
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" More Common Settings.
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set visualbell
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set number
set norelativenumber
set title
set ignorecase
set smartcase

"cursor highlighting
set termguicolors
set cursorline
set cursorcolumn
highlight CursorLine ctermbg=White cterm=bold guibg=#F8F8F8
highlight CursorColumn ctermbg=White cterm=bold guibg=#F8F8F8


"Vertically Centering doc upon insert mode
autocmd InsertEnter * norm zz

"Remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" Dictionary path, from which the words are being looked up.
set dictionary=/usr/share/dict/words

"Enable spellcheck
map <leader>s :setlocal spell! spelllang=en_us<CR>

"Shortcut split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"Autocompletion
set wildmode=longest,list,full

"Splitting
set splitbelow splitright

"Disable arrow keys navigation
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap j gj
nnoremap k gk


