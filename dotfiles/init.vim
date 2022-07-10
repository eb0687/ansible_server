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

" Plugins
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

call plug#end()

" Plugin Settings

" Colorscheme - gruvbox-material (https://github.com/sainnhe/gruvbox-material)
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
let g:gruvbox_material_better_performance = 1
let g:gruvbox_material_show_eob = 0
colorscheme gruvbox-material

" FZF settings
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

nnoremap <silent> <leader>ff :Files<CR>
