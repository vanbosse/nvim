" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    Plug 'sheerun/vim-polyglot'                         " Better Syntax Support
    Plug 'neoclide/coc.nvim', {'branch': 'release'}     " Stable version of coc
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " Install fzf
    Plug 'junegunn/fzf.vim'                             " Use fzf for fuzzy file search
    Plug 'joshdick/onedark.vim'                         " Use the One Dark Theme
    Plug 'vim-airline/vim-airline'                      " Airline
    Plug 'vim-airline/vim-airline-themes'               " Airline themes

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
    \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
    \|   PlugInstall --sync | q
    \| endif
