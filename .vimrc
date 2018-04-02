" disable bell
set visualbell

" setup vundle

" (Required for Vundle)
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Keep Plugin commands between vundle#begin/end

"let Vundle manage Vundle, reqired
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'chase/vim-ansible-yaml'
Plugin 'lepture/vim-jinja'

call vundle#end()           " required
" :PluginList
" :PluginInstall
" :PluginClean
" :PluginSearch foo
" :h

filetype plugin indent on    " required


" Show line numbers
set number

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" Enable Code Folding
set foldmethod=indent
set foldlevel=99

"Enable folding with the spacebar
nnoremap <space> za

" Tab by file type
set tabstop=4 
set softtabstop=4 
set shiftwidth=4 
set textwidth=79 
set expandtab 
set autoindent 
set fileformat=unix


"Always work with UTF8
set encoding=utf-8

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"Virtual env support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate-this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

let python_highlight_all=1
syntax on

"ignore files in NERDTree
let NERDTreeIgnore=['\.pyc$', '\-$']

set clipboard=unnamed

" Get rid of the annoying backspace "feature"
set backspace=indent,eol,start

"Highlight all search matches
set hlsearch

:command W w
