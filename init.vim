call plug#begin('~/.config/nvim/plugged')
Plug 'https://github.com/vim-scripts/fcitx.vim.git'
Plug 'mattn/emmet-vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'vim-airline/vim-airline'
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'jacoborus/tender.vim'
Plug 'Yggdroot/indentLine'
call plug#end()


set number  "设置行号
set relativenumber  "相对行号
set showcmd  "命令模式底部显示键入指令
set nocompatible  "不与vi兼容
syntax on  "语法高亮
inoremap jk <esc>  
colorscheme tender
syntax enable

set autoindent
set tabstop=2 
set shiftwidth=4
set expandtab
set softtabstop=2
set ignorecase
set smartcase

" set airline theme
let g:airline_theme = 'tender'

inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i
inoremap " ""<Esc>i

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" If you have vim >=8.0 or Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif
