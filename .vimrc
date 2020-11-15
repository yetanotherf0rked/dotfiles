" Indentation & Tabs
    set autoindent
    set smartindent
    set tabstop=2
    set shiftwidth=2
    set expandtab
    set smarttab
    set cindent

" Display & format
    syntax on
    colorscheme solarized
    hi Normal guibg=NONE ctermbg=NONE
    hi SignColumn guibg=NONE ctermbg=NONE
    set cursorline
    set number 
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

    " Tab Navigation
    nnoremap td  :tabclose<CR>
    nnoremap tl :tabnext<CR>
    nnoremap th :tabprev<CR>
    nnoremap tn :tabnew<CR>
    " Make Session
    nnoremap <C-s> :mks 
    nnoremap <C-o> :session 

