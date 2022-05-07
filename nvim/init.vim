"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 #GOTO                                   "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" #Plugins
 
" #GeneralOptions   
 
" #PluginOptions
"     #NERDTree
"     #NERDCommenter
"     #GitGutter
"     #Airline
"     #CloseTag
"     #Vimtex

" #PersonalMappings
 
" #Miscellaneous

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                #Plugins                                 "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.local/share/nvim/site/plugged')

" Nerd Suite
    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
    Plug 'xuyuanp/nerdtree-git-plugin'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'scrooloose/nerdcommenter'
    Plug 'ryanoasis/vim-devicons'

" Compilers/Linters
    Plug 'honza/vim-snippets'
    Plug 'xuhdev/singlecompile'
    Plug 'scrooloose/syntastic'
    Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

" Git support
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'

" Airline 
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

" Themes
    Plug 'flazz/vim-colorschemes'

" Surround and autoclose
    Plug 'tpope/vim-surround'
    Plug 'alvan/vim-closetag' 

" Syntax highlight
    Plug 'sheerun/vim-polyglot'

" Open menu at launch
    Plug 'mhinz/vim-startify'
    
" Fuzzy File finder
    Plug 'junegunn/fzf'

call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                            #GeneralOptions                              "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Indentation & Tabs
    set autoindent
    set smartindent
    set tabstop=2
    set shiftwidth=2
    set expandtab
    set smarttab
    set cindent
    
set clipboard=unnamed


" Display & format
    syntax on
    colorscheme deus " requires colorschemes
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

" Clipboard
    set clipboard+=unnamedplus

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                              #PluginOptions                             "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""
"  #NERDTreeOptions  "
""""""""""""""""""""""

" Automatically opens NERDTree if no files are specified
    "autocmd StdinReadPre * let s:std_in=1
    "autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Automatically opens NERDTree when opening a directory
    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" Automatically opens NERDTree when vim starts up
    " autocmd vimenter * NERDTree

" What if I'm also opening a saved session, for example vim -S session_file.vim? I don't want NERDTree to open in that scenario.
    " autocmd StdinReadPre * let s:std_in=1
    " autocmd VimEnter * if argc() == 0 && !exists("s:std_in") && v:this_session == "" | NERDTree | endif

" How can I close vim if the only window left open is a NERDTree?
    " autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

""""""""""""""""""""""
"   #NERDCommenter   "
""""""""""""""""""""""

    filetype plugin on

" Add spaces after comment delimiters by default
    let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
    let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
    let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
    let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
    let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
    let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
    let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
    let g:NERDToggleCheckAllLines = 1

""""""""""""""""""""""
"     #GitGutter     "
""""""""""""""""""""""

    set updatetime=100 " Also required by Coc
    highlight GitGutterAdd    guifg=#009900 ctermfg=2 
    highlight GitGutterChange guifg=#bbbb00 ctermfg=3
    highlight GitGutterDelete guifg=#ff2222 ctermfg=1

""""""""""""""""""""""
"     #Syntastic     "
""""""""""""""""""""""

    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*

"    let g:syntastic_always_populate_loc_list = 1
"    let g:syntastic_auto_loc_list = 1
"    let g:syntastic_check_on_open = 1
"    let g:syntastic_check_on_wq = 0

""""""""""""""""""""""
"     #Airline       "
""""""""""""""""""""""

    let g:airline_theme='deus'
    let g:airline#extensions#tabline#enabled = 1
    let g:airline_powerline_fonts = 1

""""""""""""""""""""""
"    #CloseTag       "
""""""""""""""""""""""

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
    let g:closetag_filetypes = 'html,xhtml,phtml,php'

""""""""""""""""""""""
"     #Vimtex        "
""""""""""""""""""""""

    let g:tex_flavor = 'latex'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                            #PersonalMappings                            "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

    "Esc with alt+a 
    "inoremap <A-a> <ESC>
    " NERDCommenter
    nmap <A-"> <plug>NERDCommenterToggle   
    vmap <A-"> <plug>NERDCommenterToggle   
    nmap <A-&> <plug>NERDCommenterSexy
    vmap <A-&> <plug>NERDCommenterSexy
    " NERDTree
    nmap <C-t> :NERDTreeToggle<CR>
    " Git
    nmap <C-a> :Gwrite %<CR>
    nmap <C-c> :Gcommit -m "
    nmap <C-p> :Gpush<CR>
"    nmap <C-l> :Gpull<CR>
    " SimpleCompile
    nmap <F9> :SCCompile<cr>
    nmap <F10> :SCCompileRun<cr>     
    " Tab Navigation
    nnoremap td  :tabclose<CR>
    nnoremap tl :tabnext<CR>
    nnoremap th :tabprev<CR>
    nnoremap tn :tabnew<CR>
    " Make Session
    nnoremap <C-s> :mks 
    nnoremap <C-o> :session 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                            #Miscellaneous                               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

    autocmd FileType json syntax match Comment +\/\/.\+$+
