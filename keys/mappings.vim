" ----- Key Mappings -----

" Leave your visual world behind.
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

" Force myself to leave insert mode for movement.
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" No more arrows my dear.
vnoremap <up> <nop>
vnoremap <down> <nop>
vnoremap <left> <nop>
vnoremap <right> <nop>

" Less finger wrecking window navigation.
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<c-n>")
inoremap <expr> <c-k> ("\<c-p>")

" <TAB>: completion.
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv
