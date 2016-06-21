set nu
set background=dark
set backspace=2
set incsearch
set hlsearch
set smartindent
set tabstop=2  
set shiftwidth=2
"set expandtab
set hidden
set autochdir 
set splitright "vsplit open new file in right pane

"ominicomplete options
set nocp
filetype plugin on
set omnifunc=syntaxcomplete#Complete
set tags+=$TAGS_DB

runtime macros/matchit.vim      " % matching for many file types inclyding html and xml
filetype indent on              " = based intending for many file types
