" ls ~/.vim/bundle
" command-t jellybeans.vim materialbox molokai tlib_vim vim vim-addon-mw-utils vim-dispatch vim-latex vim-snipmate vim-snippets

set nocompatible
syntax on
set laststatus=2
set mouse=a
set hidden
set autoindent
set smartcase
set tabstop=4 shiftwidth=4 expandtab
set scrolloff=5
set showmatch
set guioptions=agirLt
set guifont=Ubuntu\ Mono\ 10
set number
set hlsearch
set nofoldenable

set suffixes=.bak,~,.o,.swp,.class
set wildmenu
set wildmode=full

set background=dark
if has('gui_running')
    colorscheme molokai
else
    colorscheme materialbox
endif

" Enable pathogen
call pathogen#infect()

" Make indentation not annoying
vnoremap < <gv
vnoremap > >gv

" Move into broken lines
noremap j gj
noremap k gk

" Leaves search highlighting
noremap <Leader>n :nohlsearch<CR>

" Lusty Explorer
noremap <Tab> :CommandTBuffer<CR>
noremap <F2> :CommandT<CR>

" LaTeX suite stuff
filetype plugin indent on
set grepprg=grep\ -nH\ $*
let g:Tex_DefaultTargetFormat = "pdf"
let g:Tex_CompileRule_pdf = 'lualatex -shell-escape -interaction=nonstopmode $*'
let g:tex_flavor = "latex"
let g:Tex_ViewRule_dvi = 'evince'
let g:Tex_ViewRule_pdf = 'evince'

let g:Tex_FoldedSections = ""
let g:Tex_FoldedEnvironments = ""
let g:Tex_FoldedMisc = ""

augroup filetypedetect
	au BufRead,BufNewFile *.tikz setfiletype tex
augroup END
