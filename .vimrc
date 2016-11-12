set autoindent
set smartindent
set hlsearch
set spell

set nu                          "enable line numbers
set background=dark             "set background color mode to dark
set backspace=2                 "make backspace work like most other apps. same as set backspace=indent,eol,start
set hlsearch                    "highlight search results
set incsearch                   "incremental search as you type in
set autoindent                  "automatic indentation while coding
set smartindent                 "smart indentation while coding
set tabstop=2                   "number of `space` width to display for a tab           
set shiftwidth=2                "number of `space` width to use in case of autoindent and shifts        
set expandtab                   "replace tab with two spaces
set hidden                      "allows hiding buffers with changes when moving to a different buffer.
set autochdir                   "change current dir according to file open in buffer
set splitright                  "vsplit open new file in right pane

"ominicomplete options
set nocp                        "disable compatibility mode
filetype plugin on
set omnifunc=syntaxcomplete#Complete
set tags+=$TAGS_DB

runtime macros/matchit.vim      " % matching for many file types inclyding html and xml
filetype indent on              " = based intending for many file types
