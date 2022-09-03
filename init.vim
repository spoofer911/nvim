" For Commenting gcc & gcset number
set tabstop=2
set number
set shiftwidth=2
set autoindent
set smarttab
filetype plugin on
syntax on
call plug#begin()
Plug 'https://github.com/tpope/vim-commentary' 
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'https://github.com/neoclide/coc.nvim'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/honza/vim-snippets'
Plug 'https://github.com/SirVer/ultisnips'
call plug#end()


colorscheme gruvbox
inoremap fd <Esc>
inoremap <C-s> <Esc>:w<cr>
inoremap {<cr> {<cr>}<Esc>O
inoremap <C-k> <C-n>
inoremap [ []<Esc>i
inoremap ( ()<Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i
noremap <C-s> :w<cr>
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
