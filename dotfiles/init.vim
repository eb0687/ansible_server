" General settings
set nowrap
set encoding=utf-8
set relativenumber
set number
set laststatus=2
set noswapfile
set incsearch
set scrolloff=8
set hls
set list
set cmdheight=1
set listchars=trail:.
set ttimeoutlen=50
set timeoutlen=500
set splitbelow splitright
set hidden
set showtabline=2
set mouse=a
set mouse=ni
set title
set titlestring=%(%m%)%(%{expand(\"%:~\")}%)
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set lbr
set tw=500
set ai
set si

" Autocmd
autocmd InsertEnter * norm zz

" Keybinds
let mapleader = " "
nnoremap <leader>h :split<CR>
nnoremap <leader>v :vsplit<CR>
nnoremap <leader>q :q!<CR>
nnoremap <leader>s :w<CR>
nnoremap <leader>xo :source %<CR>
nnoremap Y y$
nnoremap <leader>ho :noh<CR>
nnoremap <C-s> :%s/
nnoremap <silent> <tab> :bn<CR>
nnoremap <silent> <S-tab> :bp<CR>
imap jk <Esc>
imap kj <Esc>
imap jj <Esc>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
vnoremap > >gv
vnoremap < <gv
map gf :edit <cfile><cr>
