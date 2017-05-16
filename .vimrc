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

"clone vundle : git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

" Vundle vimrc
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"
let g:ycm_confirm_extra_conf = 0 

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" youCompleteMe for code completion. run installation process after Plugin is
" pulled in
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'

" YCM configurations and kwymaps
filetype plugin indent on
map <C-]> :YcmCompleter GoToImprecise<CR>
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
nnoremap <leader>jd :YcmCompleter GoTo<CR>
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

"vimAirline 
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled = 1 
set laststatus=2   "to see airline without having to split
set noshowmode     " to not show current mode in airline
let g:airline_powerline_fonts = 1
set t_Co=256
let g:airline_theme='base16_grayscale'

"Git wrapper for Vim
Plugin 'tpope/vim-fugitive'
" End configuration, makes the plugins available
call vundle#end()
