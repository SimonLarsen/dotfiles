" ls ~/.vim/bundle
" LustyExplorer
" mark
" nerdtree
" taglist.vim
" tlib_vim
" vim-addon-mw-utils
" vim-latex
" vim-snipmate
" vim-snippets

set nocompatible
syntax on
set laststatus=2
set mouse=a
set hidden

set autoindent
set smartcase
set tabstop=4
set shiftwidth=4
set scrolloff=5
set showmatch
set guioptions=agirLt
set guifont=Monospace\ 8
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
noremap <Leader>n :nohlsearch<CR>

" Lusty Explorer
noremap <Tab> :LustyBufferExplorer<CR>
noremap <F2> :LustyFilesystemExplorer<CR>

" NERDTree
noremap <F3> :NERDTreeToggle<CR>

" Taglist
noremap <F4> :TlistToggle<CR>

" LaTeX suite stuff
filetype plugin indent on
set grepprg=grep\ -nH\ $*
let g:Tex_DefaultTargetFormat = "pdf"
let g:Tex_CompileRule_pdf = 'pdflatex -shell-escape -interaction=nonstopmode $*'
let g:tex_flavor = "latex"
let g:Tex_ViewRule_dvi = 'evince'
let g:Tex_ViewRule_pdf = 'evince'
