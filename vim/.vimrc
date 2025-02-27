set nocompatible
set number relativenumber
inoremap jj <esc> 

" Search Navigation
set incsearch "set incremental search
set hlsearch "enable search highlight
"create a map to disable highlight
nnoremap <space>nh :noh<return><esc>

"set clipboard=unnamed

inoremap <c-u> <c-g>u<c-u>
inoremap <c-w> <c-g>u<c-w>
