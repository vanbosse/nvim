" ----- General Settings -----

syntax enable                           " Enables syntax highlighing
set hidden                              " Required to keep multiple buffers open multiple buffers
set iskeyword+=-                      	" Treat dash separated words as a word text object
set conceallevel=0                      " So that I can see `` in markdown files
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=100                      " By default timeoutlen is 1000 ms
set clipboard=unnamedplus               " Copy paste between vim and everything else

" ----- Text formatting -----

set autoindent                          " Good auto indent
set smartindent                         " Makes indenting smart
set nowrap                              " Display long lines as just one line
set tabstop=4                           " Insert 4 spaces for a tab
set softtabstop=4                       " Insert 4 spaces for a tab
set shiftwidth=4                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces

" ----- Searching -----

set ignorecase                          " No case sensitivity please.
set smartcase                           " Search case sensitive if i'm willing to.
set incsearch                           " Do incremental search.

" ----- Formatting -----
"
set encoding=utf-8                      " The encoding displayed
set fileencoding=utf-8                  " The encoding written to file
set fileformat=unix                     " Always use unix fileformat.

" ----- UI settings -----

set ruler              		            " Show the cursor position all the time
set laststatus=2                        " Always display the status line
set showtabline=2                       " Always show tabs
set t_Co=256                            " Support 256 colors
set background=dark                     " Tell vim what the background color looks like
set cursorline                          " Enable highlighting of the current line
set number                              " Line numbers
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right

" ----- Commands -----

au! BufWritePost $MYVIMRC source %      " Auto source when writing to init.vm alternatively you can run :source $MYVIMRC
autocmd BufWritePre * :%s/\s\+$//e      " On save, remove trailing spaces.
