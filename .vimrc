"General
syntax on
set wrap
set linebreak

" Indentation & Tabs
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set cindent

" Display & format
set number relativenumber
set textwidth=80
set wrapmargin=2
set showmatch
set showmode

" Search
set hlsearch
set incsearch
set ignorecase
set smartcase

" Browse & Scroll
set scrolloff=5
set laststatus=2

" Spell
"set spell spelllang=en_us

" Miscellaneous
set nobackup
set noswapfile
set autochdir
set undofile
set visualbell
set errorbells

" For NERDTree
    " Automatically opens NERDTree if no files are specified
    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
    " Automatically opens NERDTree when opening a directory
    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" For NERDCommenter
    filetype plugin on

" For Git-Gutter
    set updatetime=100
    highlight GitGutterAdd    guifg=#009900 ctermfg=2 
    highlight GitGutterChange guifg=#bbbb00 ctermfg=3
    highlight GitGutterDelete guifg=#ff2222 ctermfg=1

" Mappings
    map <C-t> :NERDTreeToggle<CR>
    map <C-a> :Gwrite %<CR>
    map <C-c> :Gcommit -m "
    map <C-p> :Gpush<CR>
    map <C-P> :Gpull<CR>    
    
"Plugins
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'lervag/vimtex'
Plug 'valloric/youcompleteme'
Plug 'scrooloose/syntastic'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline-themes'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-surround'
call plug#end()
