call pathogen#infect()
if !has("gui_running")
    set term=xterm
endif
set number
set softtabstop=4
set tabstop=4
set smarttab
set shiftwidth=4
"set expandtab
filetype plugin indent on

set textwidth=79  " lines longer than 79 columns will be broken
set shiftround    " round indent to multiple of 'shiftwidth'
set autoindent
set cursorline
set showmatch
let python_highlight_all = 1
color wombat256mod
syntax enable
set t_Co=256
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"
let g:solarized_termcolors=256
let g:solarized_termtrans = 1
set background=dark
"" in case t_Co alone doesn't work, add this as well:
colorscheme solarized

" or 
" " if you don't set the background, the light theme will be used
"
"
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" " required! 
Bundle 'gmarik/vundle'
Bundle 'davidhalter/jedi-vim'
Bundle 'freeo/vim-kalisi'
Bundle 'altercation/vim-colors-solarized'
Bundle 'Valloric/YouCompleteMe'
Bundle 'Shougo/vimshell.vim'

"
" " The bundles you install will be listed here
"
filetype plugin indent on
"
" " The rest of your config follows here
"
augroup vimrc_autocmds
    autocmd!
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python match Excess /\%120v.*/
    autocmd FileType python set nowrap
augroup END

Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'scrooloose/nerdtree'
:let mapleader = ","

set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2

map <F2> :NERDTreeToggle<CR>
