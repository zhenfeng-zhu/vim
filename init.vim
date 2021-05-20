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
set mouse=a
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

if exists('$VIM_TERMINAL')
    echoerr 'Do not run vim inside a vim terminal'
    quit
endif


" Plugs
call plug#begin()
" beautify
Plug 'luochen1990/rainbow'
Plug 'mechatroner/rainbow_csv'
Plug 'preservim/tagbar'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'liuchengxu/nerdtree-dash'
Plug 'godlygeek/tabular'
Plug 'ludovicchabant/vim-gutentags'
Plug 'liuchengxu/eleline.vim'
Plug 'Yggdroot/indentLine'
Plug 'ntpeters/vim-better-whitespace'
Plug 'lifepillar/vim-solarized8'

" common coding
Plug 'jiangmiao/auto-pairs'
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'tpope/vim-fugitive'
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
Plug 'dyng/ctrlsf.vim'

" language
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'plasticboy/vim-markdown'
Plug 'elixir-editors/vim-elixir'
Plug 'guns/vim-clojure-highlight'
Plug 'guns/vim-clojure-static'
Plug 'tpope/vim-fireplace'
Plug 'venantius/vim-cljfmt'

call plug#end()


" key map 
nnoremap <silent> <leader>t :TagbarToggle<cr>
nnoremap <silent> <leader>e :NERDTreeToggle<cr>
nnoremap <c-p> :call fzf#Open()<cr>
nmap <Leader>q :q<CR>
nmap <Leader>w :w<CR>
nmap <Leader>Q :qa!<CR>


" plug settings
let g:rainbow_active=1
let g:deoplete#enable_at_startup = 1
let g:go_fmt_command = 'goimports'
let g:go_rename_command = 'gopls'


" theme
set termguicolors
set background=dark
autocmd vimenter * ++nested colorscheme solarized8


" autocmd
autocmd FileType go setlocal formatoptions+=ro
autocmd FileType go call deoplete#custom#option('omni_patterns', { 'go': '[^. *\t]\.\w*' })


