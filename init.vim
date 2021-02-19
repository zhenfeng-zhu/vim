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

filetype plugin indent on
syntax on


" theme
set termguicolors
set background=dark
color space_vim_theme


" key map 
nnoremap <silent> <c-u> :Mru<cr>
nnoremap <silent> <c-p> :call fzf#Open()<cr>
nnoremap <silent> <leader>t :TagbarToggle<cr>
nnoremap <silent> <leader>e :NERDTreeToggle<cr>
nnoremap <silent> <leader>f :NERDTreeFind<cr>
nnoremap <silent> <leader>c :call lv#Term()<cr>


" autocmd
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") |
			\ execute "normal! g`\"" |
			\ endif
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
autocmd BufReadPost *.html,*.js,*.css,*.json,*.yaml call lv#ExpandTab(2)
autocmd FileType proto call lv#ExpandTab(4)
autocmd FileType go setlocal formatoptions+=ro
autocmd FileType go call deoplete#custom#option('omni_patterns', { 'go': '[^. *\t]\.\w*' })
autocmd FileType vim nnoremap <buffer> <c-]> :call vim#Jump()<cr>


" custom cmd
command -nargs=1 ExpandTab call lv#ExpandTab(<f-args>)


" Plugs
call plug#begin()
Plug 'luochen1990/rainbow'
Plug 'jiangmiao/auto-pairs'
Plug 'mechatroner/rainbow_csv'
call plug#end()

if !has('nvim')
	packadd yarp
	packadd vim-hug-neovim-rpc
end


" plug settings
let g:NERDTreeMinimalUI = 1
let g:NERDTreeChDirMode = 2
let g:NERDTreeWinSize=24
let g:ackprg = 'ag --vimgrep'
let g:tagbar_compact = 1
let g:tagbar_iconchars = ['▸', '▾']
let g:tagbar_width = 30
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_conceal = 0
let g:deoplete#enable_at_startup = 1
let g:go_fmt_command = 'goimports'
let g:go_doc_popup_window = 1
let g:go_rename_command = 'gopls'
let g:python3_host_prog = '/usr/local/bin/python3'
let g:rainbow_active=1

