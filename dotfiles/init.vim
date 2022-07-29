
" ██╗███╗   ██╗██╗████████╗██╗   ██╗██╗███╗   ███╗
" ██║████╗  ██║██║╚══██╔══╝██║   ██║██║████╗ ████║
" ██║██╔██╗ ██║██║   ██║   ██║   ██║██║██╔████╔██║
" ██║██║╚██╗██║██║   ██║   ╚██╗ ██╔╝██║██║╚██╔╝██║
" ██║██║ ╚████║██║   ██║██╗ ╚████╔╝ ██║██║ ╚═╝ ██║
" ╚═╝╚═╝  ╚═══╝╚═╝   ╚═╝╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝

" [[[ {{{ General settings }}}

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
set foldmethod=marker
set foldmarker=[[[,]]]

" ]]]
" [[[ {{{ Autocmd }}}

autocmd InsertEnter * norm zz

" ]]]
" [[[ {{{ Keybinds }}}

let mapleader = " "

" [[[ {{{ Vim }}}

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
nnoremap <silent> <leader>bd :bd<CR>
imap jk <Esc>
imap kj <Esc>
imap jj <Esc>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
vnoremap > >gv
vnoremap < <gv
map gf :edit <cfile><cr>

" ]]]
" [[[ {{{ Commentary }}}

nnoremap <C-q> :Commentary<CR>
vnoremap <C-q> :Commentary<CR>

" ]]]
" [[[ {{{ FZF }}} 

nnoremap <silent> <leader>ff :Files<CR>

" ]]]
" [[[ {{{ Harpoon }}} 

nnoremap <leader>hm :lua require("harpoon.ui").toggle_quick_menu()<CR>
nnoremap <leader>ha :lua require("harpoon.mark").add_file()<CR>

nnoremap <leader>1 :lua require("harpoon.ui").nav_file(1)<CR>
nnoremap <leader>2 :lua require("harpoon.ui").nav_file(2)<CR>
nnoremap <leader>3 :lua require("harpoon.ui").nav_file(3)<CR>
nnoremap <leader>4 :lua require("harpoon.ui").nav_file(4)<CR>

" ]]]

" ]]]
" [[[ {{{ Plugins }}}

" This section needs to stay above the plug call
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/nvim_plug/plugged')

Plug 'sainnhe/gruvbox-material'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'nvim-lua/plenary.nvim' 
Plug 'ThePrimeagen/harpoon'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'romgrk/barbar.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'farmergreg/vim-lastplace'
Plug 'unblevable/quick-scope'
Plug 'christoomey/vim-tmux-navigator'
Plug 'windwp/nvim-autopairs'
Plug 'nvim-lualine/lualine.nvim'

call plug#end()

" ]]]
" [[[ {{{ Plugin Settings }}}

" [[[ {{{ Colorscheme - gruvbox-material (https://github.com/sainnhe/gruvbox-material) }}}
if has('termguicolors')
    set termguicolors
endif
set background=dark

let g:gruvbox_material_enable_italic = 1
let g:gruvbox_material_enable_bold = 1
let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_transparent_background = 1
let g:gruvbox_material_visual = 'red background'
let g:gruvbox_material_menu_selection_background = 'orange'
let g:gruvbox_material_ui_contrast = 'low'
let g:gruvbox_material_diagnostic_text_highlight = 1
let g:gruvbox_material_diagnostic_line_highlight = 1
let g:gruvbox_material_diagnostic_virtual_text = 'colored'
let g:gruvbox_material_show_eob = 0
let g:gruvbox_material_disable_italic_comment = 1
colorscheme gruvbox-material

" ]]]
" [[[ {{{ FZF }}}
let g:fzf_layout = { 'window': { 'width': 1.0 , 'height': 1.0 } }
let g:fzf_action = { 'ctrl-t': 'edit'}

let g:fzf_colors =
    \ { 'fg':      ['fg', 'Normal'],
      \ 'bg':      ['bg', 'Normal'],
      \ 'hl':      ['fg', 'Comment'],
      \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
      \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
      \ 'hl+':     ['fg', 'Statement'],
      \ 'info':    ['fg', 'PreProc'],
      \ 'border':  ['fg', 'Ignore'],
      \ 'prompt':  ['fg', 'Conditional'],
      \ 'pointer': ['fg', 'Exception'],
      \ 'marker':  ['fg', 'Keyword'],
      \ 'spinner': ['fg', 'Label'],
      \ 'header':  ['fg', 'Comment'] }

" ]]]
" [[[ {{{ VIM-Lastplace }}}

let g:lastplace_open_folds = 0

" ]]]
" [[[ {{{ Quickscope }}}

" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
" Trigger a highlight only when pressing f and F.
let g:qs_highlight_on_keys = ['f', 'F']

" ]]]
" [[[ {{{ LUA-plugins }}}

source ~/.config/nvim/lua/eb/indent-blankline.lua
source ~/.config/nvim/lua/eb/barbar.lua
source ~/.config/nvim/lua/eb/autopair.lua
source ~/.config/nvim/lua/eb/lualine.lua

" ]]]


" ]]]
