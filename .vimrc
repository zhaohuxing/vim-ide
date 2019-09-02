" basic configuration
set nocompatible
set autoindent
set shiftwidth=4
set ignorecase
set cindent
set hlsearch
set ts=4
set nu

set t_Co=256
syntax enable
set background=light

" Pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

" Nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" color
syntax on
colorscheme monokai 
