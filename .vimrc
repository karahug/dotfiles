" Set default clipboard to system clipboard
set clipboard=unnamed

" Disable vi-compatibility only if not already disabled to avoid bugs
if &compatible
    set nocompatible
endif

" ==== Navigation ==============================================================

    " Maintain context around cursor by scrolling before the final line
    set scrolloff=1

    " Enable shell-like completion
    set wildmenu
    set wildmode=list:longest
    set wildignore=*.o,*.obj,*.pdf

    " Enable comprehensive %-movement between if-statements
    runtime macros/matchit.vim

" ==============================================================================

" ==== Search ==================================================================

    " Use smartcase searching (i.e. ignore case if all lowercase characters)
    set ignorecase
    set smartcase

    " Highlight search terms and highlight as each key is pressed
    set hlsearch
    set incsearch

" ==============================================================================


" ==== Style ===================================================================

    " Set the colorscheme to molokai
    colorscheme molokai

    " Set the colorscheme to solarized
    " colorscheme solarized
    " let g:solarized_termcolors=256
    " set background=dark

    " Enable the highlight on the cursor's current line
    set cursorline

    " Enable line numbers
    set number

    " Enable syntax highlighting properly (i.e. do not use `syntax on`)
    if !exists("g:syntax_on")
        syntax enable
    endif

    " Display rule at the bottom
    set ruler

    " Set the maximum line width to 128
    set textwidth=128

" ==============================================================================

" ==== Plugins =================================================================

    " Enable Pathogen and load plugins
    execute pathogen#infect()

    " vim-airline options
    " Use powerline fonts for the powerline icons
    let g:airline_powerline_fonts=1

    " Always display the status line
    set laststatus=2

    " vim-airline-themes options
    " Set the airline theme to wombat
    let g:airline_theme='molokai'

" ==============================================================================


" ==== Whitespace  =============================================================

    " Before writing to buffer (i.e. saving file), remove all trailing whitespace
    autocmd BufWritePre * %s/\s\+$//e

    " Indent according to previous line
    set autoindent

    " Enable indentation matching
    filetype plugin indent on

    " Use 4-spaces instead of tab
    set expandtab
    set shiftwidth=4

    " Set the tab's width to 4
    set tabstop=4
    set softtabstop=4

    " Display whitespace characters, specifically tab and trailing whitespace
    set list
    set listchars=tab:>-,trail:~

    " Enable expected backspace behavior
    set backspace=eol,indent,start

" ==============================================================================
