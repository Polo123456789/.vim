filetype indent plugin on
syntax on
set nobackup
set fileencoding=utf8
set encoding=utf-8
set number relativenumber
set backspace=indent,eol,start
set nocompatible
set hidden
set wildmenu
set showcmd
set ignorecase
set smartcase
set autoindent
set nostartofline
set ruler
set laststatus=2
set confirm
set visualbell
set t_vb=
set cmdheight=2
set notimeout ttimeout ttimeoutlen=200
set pastetoggle=<F12>
set background=dark
set textwidth=80
set lazyredraw

set shiftwidth=4
set softtabstop=4
set expandtab

set incsearch
set nohlsearch

set conceallevel=0

" set exrc
" set secure

" Para usar el tema en la terminal
if (has("termguicolors"))
    set termguicolors
    colorscheme wombat
endif
