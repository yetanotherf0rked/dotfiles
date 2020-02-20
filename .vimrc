""""""""""""""""""""""
"      Plugins       "
""""""""""""""""""""""

    call plug#begin('~/.local/share/nvim/site/plugged')

    " Nerd Suite
    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
    Plug 'xuyuanp/nerdtree-git-plugin'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'scrooloose/nerdcommenter'
    Plug 'ryanoasis/vim-devicons'

    " Compilers/Linters
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'honza/vim-snippets'
    Plug 'xuhdev/singlecompile'
    Plug 'scrooloose/syntastic'
    Plug 'lervag/vimtex'

    " Git support
    Plug 'tpope/vim-fugitive'
    "test"
    Plug 'airblade/vim-gitgutter'

    " Airline 
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Themes
    Plug 'flazz/vim-colorschemes'

    " Surround and autoclose
    Plug 'tpope/vim-surround'
"    Plug 'townk/vim-autoclose'

    " Syntax highlight
    Plug 'sheerun/vim-polyglot'

    " Open menu at launch
    Plug 'mhinz/vim-startify'
    
    " Fuzzy File finder
    Plug 'junegunn/fzf'

    call plug#end()

""""""""""""""""""""""
"  General Options   "
""""""""""""""""""""""

" Indentation & Tabs
    set autoindent
    set smartindent
    set tabstop=4
    set shiftwidth=4
    set expandtab
    set smarttab
    set cindent

" Display & format
    syntax on
    colorscheme deus " requires colorschemes
    hi Normal guibg=NONE ctermbg=NONE
    hi SignColumn guibg=NONE ctermbg=NONE
    set cursorline
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

""""""""""""""""""""""
"  NERDTree Options  "
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
"  NERDCommenter     "
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
"     Git-Gutter     "
""""""""""""""""""""""

    set updatetime=100 " Also required by Coc
    highlight GitGutterAdd    guifg=#009900 ctermfg=2 
    highlight GitGutterChange guifg=#bbbb00 ctermfg=3
    highlight GitGutterDelete guifg=#ff2222 ctermfg=1

""""""""""""""""""""""
"      Syntastic     "
""""""""""""""""""""""

    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*

"    let g:syntastic_always_populate_loc_list = 1
"    let g:syntastic_auto_loc_list = 1
"    let g:syntastic_check_on_open = 1
"    let g:syntastic_check_on_wq = 0

""""""""""""""""""""""
"      Airline       "
""""""""""""""""""""""

    let g:airline_theme='deus'
    let g:airline#extensions#tabline#enabled = 1
    let g:airline_powerline_fonts = 1

""""""""""""""""""""""
" Personal Mappings  "
""""""""""""""""""""""

    "Esc with JK
    inoremap jk <ESC>
    nmap <A-"> <plug>NERDCommenterToggle   
    vmap <A-"> <plug>NERDCommenterToggle   
    nmap <A-&> <plug>NERDCommenterSexy
    vmap <A-&> <plug>NERDCommenterSexy
    nmap <C-t> :NERDTreeToggle<CR>
    nmap <C-a> :Gwrite %<CR>
    nmap <C-c> :Gcommit -m "
    nmap <C-p> :Gpush<CR>
"    nmap <C-l> :Gpull<CR>
    nmap <F9> :SCCompile<cr>
    nmap <F10> :SCCompileRun<cr>     
    nnoremap td  :tabclose<CR>
    nnoremap tl :tabnext<CR>
    nnoremap th :tabprev<CR>
    nnoremap tn :tabnew<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   COC                                   "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""
"  COC Extensions    "
""""""""""""""""""""""

    let g:coc_global_extensions = [
        \  'coc-snippets',
        \  'coc-python',
        \  'coc-html',
        \  'coc-css',
        \  'coc-tsserver',
        \  'coc-texlab',
        \  'coc-json',
        \  'coc-prettier',
        \  'coc-pairs',
        \]
""""""""""""""""""""""
"  COC Default Opt.  "
""""""""""""""""""""""

" if hidden is not set, TextEdit might fail.
    set hidden

" Some servers have issues with backup files, see #649
    set nobackup
    set nowritebackup

" Better display for messages
    set cmdheight=2

" don't give |ins-completion-menu| messages.
    set shortmess+=c

" always show signcolumns
    set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
    " inoremap <silent><expr> <TAB>
    "       \ pumvisible() ? "\<C-n>" :
    "       \ <SID>check_back_space() ? "\<TAB>" :
    "       \ coc#refresh()
    " inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Use <c-space> to trigger completion.
    inoremap <silent><expr> <c-space> coc#refresh()
" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
    inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
    nmap <silent> [g <Plug>(coc-diagnostic-prev)
    nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
    nmap <silent> gd <Plug>(coc-definition)
    nmap <silent> gy <Plug>(coc-type-definition)
    nmap <silent> gi <Plug>(coc-implementation)
    nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
    nnoremap <silent> K :call <SID>show_documentation()<CR>

    function! s:show_documentation()
      if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
      else
        call CocAction('doHover')
      endif
    endfunction

" Highlight symbol under cursor on CursorHold
    autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
    nmap <leader>rn <Plug>(coc-rename)
    nmap <F2> <Plug>(coc-rename)

" Remap for format selected region
    xmap <leader>f  <Plug>(coc-format-selected)
    nmap <leader>f  <Plug>(coc-format-selected)

    augroup mygroup
      autocmd!
      " Setup formatexpr specified filetype(s).
      autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
      " Update signature help on jump placeholder
      autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
    augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
    xmap <leader>a  <Plug>(coc-codeaction-selected)
    nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
    nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
    nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
    xmap if <Plug>(coc-funcobj-i)
    xmap af <Plug>(coc-funcobj-a)
    omap if <Plug>(coc-funcobj-i)
    omap af <Plug>(coc-funcobj-a)

" Use <TAB> for select selections ranges, needs server support, like: coc-tsserver, coc-python
    nmap <silent> <TAB> <Plug>(coc-range-select)
    xmap <silent> <TAB> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
    command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
    command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
    command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
    set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
    let airline#extensions#coc#error_symbol = 'Error:'
    let airline#extensions#coc#warning_symbol = 'Warning:'
    let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'
    let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'

""""""""""""""""""""""
"  CocList Mappings  "
""""""""""""""""""""""

" Show all diagnostics
    nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
    nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
    nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
    nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
    nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
    nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
    nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
    nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

""""""""""""""""""""""
"  COC Snippets Opt. "
""""""""""""""""""""""

" Use <C-l> for trigger snippet expand.
    imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
    vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
    let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
    let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
    imap <C-j> <Plug>(coc-snippets-expand-jump)

" Make <tab> used for trigger completion, snippet expand and jump like VSCode.
    " inoremap <silent><expr> <TAB>
    "       \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
    "       \ <SID>check_back_space() ? "\<TAB>" :
    "       \ coc#refresh()

    inoremap <silent><expr> <TAB>
          \ pumvisible() ? "\<C-n>" :
          \ <SID>check_back_space() ? "\<TAB>" :
          \ coc#refresh()
    inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
    
" Make <tab> used for completion confirm, add this line in the inoremap below :
    "      \ pumvisible() ? coc#_select_confirm() :

    function! s:check_back_space() abort
      let col = col('.') - 1
      return !col || getline('.')[col - 1]  =~# '\s'
    endfunction

    let g:coc_snippet_next = '<tab>'

""""""""""""""""""""""
"  Miscellaneous     "
""""""""""""""""""""""

    autocmd FileType json syntax match Comment +\/\/.\+$+
