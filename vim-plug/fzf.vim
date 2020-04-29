" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'

map <c-p> :GFilesAll<CR>

let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }

command! -bang -nargs=? -complete=dir GFilesAll
    \ call fzf#vim#gitfiles('--cached --others --exclude-standard', {'options': ['--layout=reverse', '--info=inline', '--preview', '~/.config/nvim/autoload/plugged/fzf.vim/bin/preview.sh {}']}, <bang>0)
