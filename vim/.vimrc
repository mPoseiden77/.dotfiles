syntax on                   

set noerrorbells            "no beep 
set tabstop=4
set smartindent             
set nowrap                  "no overflow when text reaches the border
set smartcase               
set noswapfile              "no ugly swapfiles  
set nobackup                "no backup
set undodir=~/.vim/undodir  "Undo Dir
set undofile     
set novisualbell            "no beeps
set hls is noic
set nu

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey


" Plugins.I use vim-plug.
call plug#begin('~/.vim/plugins')

Plug 'jremmen/vim-ripgrep'
Plug 'leafgarland/typescript-vim'
Plug 'git@github.com:kien/ctrlp.vim.git'
Plug 'git@github.com:Valloric/YouCompleteMe.git'
Plug 'mbbill/undotree'
Plug 'powerline/powerline' 
Plug 'tpope/vim-fugitive'   
Plug 'vim-utils/vim-man'     
Plug 'lyuts/vim-rtags'       
Plug 'fatih/vim-go'
Plug 'valloric/youcompleteme'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'kaicataldo/material.vim'


call plug#end()


set background=dark

if executable('rg')
    let g:rg_derive_root='true'
endif

let g:ctrlp_user_command = ['.git/','git --git-dir=%s/.git ls-files -oc --exclude-started']
let mapleader=""
let g:netrw_browse_split=2
let g:netrw_banner = 0

let g:ctrlp_use_caching = 0
let g:netrw_winsize = 25


if (has('termguicolors'))
  set termguicolors
endif
let g:material_theme_style ='ocean-community'

colorscheme material
