set tabstop=2
set whichwrap="bs<>hl"
set termguicolors
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
set undofile
set cursorline
set ignorecase
set sidescrolloff=8
set scrolloff=8
set number
set mouse=a
set timeoutlen=300
set nowrap
set shiftwidth=2
set autoindent
filetype plugin on
syntax on
call plug#begin()
Plug 'https://github.com/tpope/vim-commentary' 
Plug 'tanvirtin/monokai.nvim'
Plug 'andersevenrud/nordic.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-tree/nvim-web-devicons' 
Plug 'akinsho/bufferline.nvim', { 'tag': 'v3.*' }
Plug 'nvim-telescope/telescope.nvim'
Plug 'navarasu/onedark.nvim'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'nvim-lua/plenary.nvim'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'https://github.com/neoclide/coc.nvim'
Plug 'https://github.com/honza/vim-snippets'
call plug#end()

" colorscheme catppuccin
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
inoremap '' ''<Esc>i
inoremap <C-v> <Esc>pi
inoremap " ""<Esc>i
inoremap <S-Tab> <C-D>
" use <tab> to trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
map <F9> :!g++ -g % -o %:r && ./%:r < input.txt<CR>
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
"Normal mode settings
nnoremap ff <cmd>Telescope find_files<cr>
nnoremap fg <cmd>Telescope live_grep<cr>
nnoremap fb <cmd>Telescope buffers<cr>
nnoremap fh <cmd>Telescope help_tags<cr>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-Up> :resize -2<CR>
nnoremap <C-Down> :resize +2<CR>
nnoremap <C-Left> :vertical resize -2<CR>
nnoremap <C-Right> :vertical resize +2<CR>
noremap <C-s> :w<cr>
nnoremap <C-f> :NERDTreeToggle<CR>
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
nnoremap <C-t> :terminal<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>
" Terminal mode settings
tnoremap ZZ exit<CR>
let g:airline_powerline_fonts = 1

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
lua << EOF
require("bufferline").setup{}
EOF
