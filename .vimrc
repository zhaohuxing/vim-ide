" basic configuration
set nocompatible
set autoindent
set shiftwidth=4
set ignorecase
set cindent
set hlsearch
set ts=4
set nu
set background=light
syntax enable

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'scrooloose/nerdtree'
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'majutsushi/tagbar'
call plug#end()

" Theme
colorscheme dracula

" NerdTrdee
let NERDTreeShowHidden=1
autocmd StdinReadPre  let s:std_in=1
autocmd VimEnter  if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>

" Tagbar
let g:tagbar_type_go = {
	\ 'ctagstype' : 'go',
	\ 'kinds'     : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'm:methods',
		\ 'r:constructor',
		\ 'f:functions'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 't' : 'ctype',
		\ 'n' : 'ntype'
	\ },
	\ 'scope2kind' : {
		\ 'ctype' : 't',
		\ 'ntype' : 'n'
	\ },
	\ 'ctagsbin'  : 'gotags',
	\ 'ctagsargs' : '-sort -silent'
\ }
nmap <F8> :TagbarToggle<CR>
