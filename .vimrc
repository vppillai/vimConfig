" Set Vim-specific options
 set nocompatible        " Disable vi compatibility mode
 set backspace=indent,eol,start " Make backspace work in insert mode
 set ignorecase          " Case insensitive searching
 set smartcase           " Case sensitive when search includes uppercase
 set incsearch           " Show search matches as you type
 set hlsearch            " Highlight search matches
 set number              " Show line numbers
 set showcmd             " Show incomplete commands
 set cursorline          " Highlight the current line
 set wildmenu            " Enhanced command line completion
 set lazyredraw          " Redraw only when necessary
 set showmatch           " Highlight matching parenthesis
 set expandtab           " Convert tabs to spaces
 set shiftwidth=4        " Number of spaces to use for each step of (auto)indent
 set tabstop=4           " Number of spaces that a <Tab> in the file counts for
 set autoindent          " Copy indent from current line when starting a new line
 set smartindent         " Automatically inserts indentation as appropriate
 set wrap                " Enable line wrap

 " Enable syntax highlighting
 syntax on
 set background=dark     " Tell Vim to use colors that look good on a dark background
 colorscheme desert      " Set the color scheme to 'desert'

 " Set encoding to UTF-8
 set encoding=utf-8
 set fileencoding=utf-8

 " Disable annoying sound on errors
 set noerrorbells
 set novisualbell
 set t_vb=

 " Enable mouse support in all modes
 set mouse=a

 " Remember last position in file
 if has("autocmd")
   au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
 endif

 " For better autocomplete
 set completeopt=menuone,longest,preview
