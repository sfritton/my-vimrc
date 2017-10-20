filetype on
syntax on
colorscheme monokai 

set colorcolumn=80

set number "turns on line numbering
set relativenumber "turns on relative numbering

set hidden
set history=100

filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

set hlsearch
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

set showmatch

function TRelative()
  set relativenumber!
endfunc

noremap <c-t> :call TRelative()<cr>
