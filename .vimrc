let mapleader = " "

set guicursor=a:block

set tabstop=4
set shiftwidth=4
set expandtab

set fillchars=vert:│
hi VertSplit cterm=NONE ctermbg=NONE ctermfg=black guibg=NONE guifg=black
hi StatusLine cterm=NONE ctermbg=NONE ctermfg=white guibg=NONE guifg=white
hi StatusLineNC cterm=NONE ctermbg=NONE ctermfg=black guibg=NONE guifg=black

inoremap jj <Esc>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <leader>vs :vsplit<CR>
nnoremap <leader>sv :split<CR>

nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
