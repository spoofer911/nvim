set tabstop=2
set background=dark
set nohlsearch
set ignorecase
set number
set mouse=a
set nowrap
set shiftwidth=2
set autoindent
set smarttab
filetype plugin on
syntax on
call plug#begin()
Plug 'https://github.com/tpope/vim-commentary' 
Plug 'navarasu/onedark.nvim'
Plug 'sam4llis/nvim-tundra' 
Plug 'https://github.com/ervandew/supertab'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'jsit/toast.vim'
Plug 'https://github.com/neoclide/coc.nvim'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/honza/vim-snippets'
Plug 'https://github.com/SirVer/ultisnips'
call plug#end()

" Vim
let g:onedark_config = {
    \ 'style': 'darker',
\}
colorscheme onedark
inoremap fd <Esc>
inoremap <C-s> <Esc>:w<cr>
inoremap {<cr> {<cr>}<Esc>O
inoremap [ []<Esc>i
inoremap ( ()<Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i
noremap <C-s> :w<cr>
nnoremap <C-f> :NERDTreeFocus<CR>
" use <tab> for trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
let g:airline_powerline_fonts = 1
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
