" basic set
set number
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
set tabstop=2
set shiftwidth=4
set expandtab
set softtabstop=2
set showmatch
set incsearch
set nobackup
set autoread
set wildmenu
set wildmode=longest:list,full
set nofoldenable

filetype plugin indent on
syntax on


" Plugs
call plug#begin()
Plug 'luochen1990/rainbow'
Plug 'jiangmiao/auto-pairs'
Plug 'mechatroner/rainbow_csv'
Plug 'liuchengxu/space-vim-theme'
Plug 'lvht/mru'
Plug 'preservim/tagbar'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'liuchengxu/nerdtree-dash'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'liuchengxu/eleline.vim'
Plug 'tpope/vim-fugitive'
call plug#end()


" key map 
nnoremap <silent> <c-m> :Mru<cr>
nnoremap <silent> <c-p> :call fzf#Open()<cr>
nnoremap <silent> <leader>t :TagbarToggle<cr>
nnoremap <silent> <leader>e :NERDTreeToggle<cr>
nnoremap <silent> <leader>f :NERDTreeFind<cr>
nnoremap <silent> <leader>c :call lv#Term()<cr>


" plug settings
let g:rainbow_active=1


" theme
set termguicolors
set background=dark
colorscheme space_vim_theme
