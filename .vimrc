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
    colorscheme molokai
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

let maplocalleader = "\\"
" let g:vimtex_view_general_viewer = 'evince'
let g:vimtex_view_method = 'zathura'

let g:vimtex_compiler_latexmk = {
    \ 'backend' : 'jobs',
    \ 'background' : 1,
    \ 'build_dir' : '',
    \ 'callback' : 1,
    \ 'continuous' : 1,
    \ 'executable' : 'latexmk',
    \ 'options' : [
    \   '-pdf',
    \   '-verbose',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \ ],
\}

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

augroup filetypedetect
	au BufRead,BufNewFile *.tikz setfiletype tex
augroup END
