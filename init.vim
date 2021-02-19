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
set guifont=Hack:h14
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

set background=dark
color space_vim_theme
set termguicolors
hi LineNr ctermbg=NONE guibg=NONE

nnoremap <silent> <c-u> :Mru<cr>
nnoremap <silent> <c-p> :call fzf#Open()<cr>
nnoremap <silent> <leader>t :TagbarToggle<cr>
nnoremap <silent> <leader>e :NERDTreeToggle<cr>
nnoremap <silent> <leader>f :NERDTreeFind<cr>
nnoremap <silent> <leader>c :call lv#Term()<cr>

function! MyTabLabel(n)
	let buflist = tabpagebuflist(a:n)
	let winnr = tabpagewinnr(a:n)
	let name = fnamemodify(bufname(buflist[winnr - 1]), ':t')
	return empty(name) ? '[No Name]' : name
endfunction

function! MyTabLine()
	let s = ''
	for i in range(tabpagenr('$'))
		if i + 1 == tabpagenr()
			let s .= '%#TabLineSel#'
		else
			let s .= '%#TabLine#'
		endif

		let s .= ' '. (i+1) . ' '
		let s .= ' %{MyTabLabel(' . (i + 1) . ')} '
	endfor
	return s
endfunction
set tabline=%!MyTabLine()

autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") |
			\ execute "normal! g`\"" |
			\ endif

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
autocmd BufReadPost *.html,*.js,*.css,*.json,*.yaml call lv#ExpandTab(2)
autocmd FileType proto call lv#ExpandTab(4)
autocmd FileType go setlocal formatoptions+=ro
autocmd FileType go call deoplete#custom#option('omni_patterns', { 'go': '[^. *\t]\.\w*' })
autocmd FileType vim nnoremap <buffer> <c-]> :call vim#Jump()<cr>

command -nargs=1 ExpandTab call lv#ExpandTab(<f-args>)

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

if !has('nvim')
	packadd yarp
	packadd vim-hug-neovim-rpc
end

call plug#begin()
Plug 'luochen1990/rainbow'
Plug 'jiangmiao/auto-pairs'
Plug 'mechatroner/rainbow_csv'
call plug#end()

let g:rainbow_active=1

