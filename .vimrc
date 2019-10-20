" vundle config
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
Plugin 'tmhedberg/SimpylFold' "fold code
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe' 
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree' "file tree
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim' "enhanced file search
Plugin 'tpope/vim-fugitive' "git command helper
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"splits go to the right and below and sets key combos to navigate
set splitbelow splitright
nnoremap <C-J> <C-W><C-J> "move below
nnoremap <C-K> <C-W><C-K> "move above
nnoremap <C-L> <C-W><C-L> "move right
nnoremap <C-H> <C-W><C-H> "move left

"enable folding
set foldmethod=indent
set foldlevel =99

"enable folding with the spacebar
nnoremap <space> za

"enable proper PEP8 indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4  " when using the >> or << commands, shift lines by 4 spaces
    \ set textwidth=79
    \ set expandtab "expand tabs into spaces
    \ set autoindent
    \ set fileformat=unix

"flag unnecessary whitespace
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"enable proper indentation for webdev
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

set encoding=utf-8 "necessary for python3

"you complete me customizations:
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" python code highlighting
let python_highlight_all=1
syntax on

"color scheme customizations
if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme zenburn
endif


let mapleader = "<Space>"


" show line numbers
set number
set number ruler

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

"access OS clipboard
set clipboard=unnamed

"open nerdtree with ctrl n
map <C-n> :NERDTreeToggle<CR>

"use vim keybindings in the shell
"set editing-mode vi

" Jayson's vim essentials:
 "set showcmd
 "set backspace=indent,eol,start
 "set cc=81
" nnoremap gr gT

inoremap jj <Esc>

set path=$PWD/**
