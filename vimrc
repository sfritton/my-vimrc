set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'morhetz/gruvbox'
Plugin 'jiangmiao/auto-pairs'
Plugin 'TeTrIs.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-fugitive'
Plugin 'ap/vim-css-color'
Plugin 'SirVer/ultisnips'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"create swp files in a 'tmp' directory, instead of the directory where you're working
set directory^=$HOME/.vim/tmp//

syntax enable 
colorscheme gruvbox

let mapleader=","

set colorcolumn=80

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let g:indent_guides_enable_on_vim_startup = 1

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

set ignorecase smartcase hlsearch showmatch
set matchtime=1
nnoremap <silent> <Enter> :nohlsearch<Bar>:echo<CR>

nnoremap <leader>rc :e $MYVIMRC<CR>
"source with one leader 
map <leader>s :w<CR>:source %<CR>:PluginInstall<CR>:x<CR>

"easier navigation of splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"easier to use snippets
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

"set the snippets directory
let g:UltiSnipsSnippetDirectories=["my-snippets"]

"easier to open nerdtree
nnoremap <leader>f :NERDTree<CR>

"auto open/close NERDTree on entering vim or closing all files
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"easier to clear search
nnoremap <leader>d :noh<CR>

set pastetoggle=<F9>
