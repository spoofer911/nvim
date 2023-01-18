set tabstop=2
set whichwrap="bs<>hl"
set clipboard+=unnamedplus
set updatetime=300
set background=dark
set completeopt=menu,menuone,noselect
set showtabline=2
set smartcase
set splitbelow
set cmdheight=2
set splitright
set nohlsearch
set cursorline
set undofile
set ignorecase
set sidescrolloff=8
set scrolloff=8
set number
set mouse=a
set nowrap
set shiftwidth=2
set autoindent
filetype plugin on
syntax on
call plug#begin()
Plug 'https://github.com/tpope/vim-commentary' 
Plug 'navarasu/onedark.nvim'
Plug 'https://github.com/ervandew/supertab'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'https://github.com/neoclide/coc.nvim'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/honza/vim-snippets'
Plug 'https://github.com/SirVer/ultisnips'
call plug#end()

" Vim
let g:onedark_config = {
    \ 'style': 'warmer',
\}
colorscheme onedark
"Insert mode settings
inoremap jk <Esc>
inoremap <C-s> <Esc>:w<cr>
inoremap {<cr> {<cr>}<Esc>O
inoremap [ []<Esc>i
inoremap ( ()<Esc>i
inoremap ' ''<Esc>i
inoremap <C-v> <C-r>*
inoremap " ""<Esc>i
inoremap <S-Tab> <C-D>
map <F9> :!g++ -g % -o %:r && ./%:r < input.txt<CR>
"Normal mode settings
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-Up> :resize -2<CR>
nnoremap <C-Down> :resize +2<CR>
nnoremap <C-Left> :vertical resize -2<CR>
nnoremap <C-Right> :vertical resize +2<CR>
noremap <C-s> :w<cr>
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
let g:airline_powerline_fonts = 1

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
