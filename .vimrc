set nocompatible
filetype off


let vinstall = 0 
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle..."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
    let vinstall = 1
endif


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle
"call vundle#rc()

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Bundle 'VundleVim/Vundle.vim'
Bundle 'scrooloose/syntastic'
Plugin 'flazz/vim-colorschemes'
Bundle 'altercation/vim-colors-solarized'
"Bundle 'Valloric/YouCompleteMe'

if vinstall == 1
    :BundleInstall
endif

" let Vundle manage Vundle, required


call vundle#end()            " required

" Bundles




filetype plugin indent on    " required

set number                   " enable line numbering
set mouse=a                  " enable mouse support
set showcmd                  " displays commands
set cmdheight=1              " set cmd height to 1
set wildmenu                 " visual autocomplete for command menu

" Syntax/colorscheme
syntax on
"colorscheme 256-grayvim
"colorscheme base 
"colorscheme SlateDark 
set background=dark
colorscheme solarized
let g:solarized_termcolors=256
"set t_Co=256


" Brackets
set showmatch
set matchtime=1

" Tab and spacing
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=8
set autoindent
set smarttab
set wrap
set backspace=2
set shiftround  "when at 3 spaces and hit > ... go to 4, not 5
set listchars=tab:>-,trail:- ",eol: or eol:$

" Searching
set ignorecase               " ignore for search
set smartcase                " if search has case, search with that case
set hlsearch                 " highlight searches
set incsearch                " search as characters are entered

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" Movement
" move to beginning/end of line
nnoremap B ^
nnoremap E $

" ^/$ doesn't do anything
nnoremap ^ <nop>
nnoremap $ <nop>

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

" Key bindings
nnoremap <leader>u :GundoToggle<CR>
:command! WQ wq 
:command! Wq wq
:command! W w
:command! Q q
nnoremap ; :


