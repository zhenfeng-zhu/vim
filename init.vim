" basic set
set number
set nocompatible
set noswapfile
set encoding=utf-8
set fileencodings=utf-8,gb18030
set backspace=eol,start,indent
set laststatus=2
set colorcolumn=80
set cursorline
set linebreak
set autoindent
set ignorecase
set smartcase
set ruler
set diffopt+=internal,indent-heuristic,algorithm:patience
set showcmd
set clipboard^=unnamed,unnamedplus
set showmode
set mouse=n
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set showmatch
set incsearch
set hlsearch
set nowrapscan
set nobackup
set autoread
set wildmenu
set wildmode=longest:list,full
set foldmethod=syntax
set nofoldenable

filetype plugin indent on
syntax on


" Plugs
call plug#begin()
Plug 'luochen1990/rainbow'
Plug 'jiangmiao/auto-pairs'
Plug 'mechatroner/rainbow_csv'
Plug 'liuchengxu/space-vim-theme'
Plug 'fatih/molokai'
Plug 'lvht/mru'
Plug 'preservim/tagbar'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'liuchengxu/nerdtree-dash'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'liuchengxu/eleline.vim'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-fugitive'
Plug 'ntpeters/vim-better-whitespace'
Plug 'elixir-editors/vim-elixir'
Plug 'ludovicchabant/vim-gutentags'
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
call plug#end()


" key map 
nnoremap <silent> <c-m> :Mru<cr>
nnoremap <silent> <c-p> :call fzf#Open()<cr>
nnoremap <silent> <leader>t :TagbarToggle<cr>
nnoremap <silent> <leader>e :NERDTreeToggle<cr>
nnoremap <silent> <leader>f :NERDTreeFind<cr>
nnoremap <silent> <leader>c :call lv#Term()<cr>
nnoremap <silent> <Leader>i <Plug>IndentGuidesToggle
nmap <Leader>q :q<CR>
nmap <Leader>w :w<CR>
nmap <Leader>Q :qa!<CR>


" plug settings
let g:rainbow_active=1
let g:deoplete#enable_at_startup = 1
let g:go_fmt_command = 'goimports'
let g:go_rename_command = 'gopls'
let g:molokai_original = 1


" theme
set termguicolors
set background=light
colorscheme space_vim_theme
" colorscheme molokai


" autocmd
autocmd FileType go setlocal formatoptions+=ro
autocmd FileType go call deoplete#custom#option('omni_patterns', { 'go': '[^. *\t]\.\w*' })


