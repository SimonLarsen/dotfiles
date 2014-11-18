set nocompatible
syntax on
set laststatus=2
set mouse=a
set hidden

set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set scrolloff=5
set showmatch
set guioptions=agirLt
set guifont=Monospace\ 8
set ignorecase
set autochdir
set number
set hlsearch

set suffixes=.bak,~,.o,.swp,.class
set wildmenu
set wildmode=full

colorscheme mustang

" Enable pathogen
call pathogen#infect()

" Make indentation not annoying
vnoremap < <gv
vnoremap > >gv

" Move into breaked lines
noremap j gj
noremap k gk

" Leaves search highlighting
map <Leader>n :nohlsearch<CR>

" LaTeX suite stuff
filetype plugin indent on
set grepprg=grep\ -nH\ $*
let g:Tex_DefaultTargetFormat = "pdf"
let g:Tex_CompileRule_pdf = 'pdflatex -shell-escape -interaction=nonstopmode $*'
let g:tex_flavor = "latex"
let g:Tex_ViewRule_dvi = 'evince'
let g:Tex_ViewRule_pdf = 'evince'