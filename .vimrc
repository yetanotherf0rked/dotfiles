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

" For NERDCommenter
filetype plugin on

" For Git-Gutter
set updatetime=100
highlight GitGutterAdd    guifg=#009900 ctermfg=2 
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1

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
" testMyThing()
