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
"set autochdir                   "change current dir according to file open in buffer
set splitright                  "vsplit open new file in right pane

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
"let g:airline_powerline_fonts = 1
set t_Co=256
"let g:airline_theme='base16_grayscale'

"Git wrapper for Vim
Plugin 'tpope/vim-fugitive'
"Ctrl-P plugin
Plugin 'kien/ctrlp.vim'
" Nerdtree
Plugin 'scrooloose/nerdtree'
noremap \\ :NERDTreeToggle<CR>
noremap \f :NERDTreeFind<CR>
" End configuration, makes the plugins available
call vundle#end()

" This tests to see if vim was configured with the '--enable-cscope' option
" when it was compiled.  If it wasn't, time to recompile vim... 
if has("cscope")

  """"""""""""" Standard cscope/vim boilerplate

  " use both cscope and ctag for 'ctrl-]', ':ta', and 'vim -t'
  set cscopetag

  " check cscope for definition of a symbol before checking ctags: set to 1
  " if you want the reverse search order.
  set csto=0

  " add any cscope database in current directory
  if filereadable("cscope.out")
    cs add cscope.out  
    " else add the database pointed to by environment variable 
  elseif $CSCOPE_DB != ""
    cs add $CSCOPE_DB
  endif

  " show msg when any other cscope db added
  set cscopeverbose  

  nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>  
  nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>  
  nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>  
  nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>  
  nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>  
  nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>  
  nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
  nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>  


  " Using 'CTRL-spacebar' (intepreted as CTRL-@ by vim) then a search type
  " makes the vim window split horizontally, with search result displayed in
  " the new window.
  "
  " (Note: earlier versions of vim may not have the :scs command, but it
  " can be simulated roughly via:
  "    nmap <C-@>s <C-W><C-S> :cs find s <C-R>=expand("<cword>")<CR><CR>  

  nmap <C-@>s :vert :scs find s <C-R>=expand("<cword>")<CR><CR> 
  nmap <C-@>g :vert :scs find g <C-R>=expand("<cword>")<CR><CR> 
  nmap <C-@>c :vert :scs find c <C-R>=expand("<cword>")<CR><CR> 
  nmap <C-@>t :vert :scs find t <C-R>=expand("<cword>")<CR><CR> 
  nmap <C-@>e :vert :scs find e <C-R>=expand("<cword>")<CR><CR> 
  nmap <C-@>f :vert :scs find f <C-R>=expand("<cfile>")<CR><CR> 
  nmap <C-@>i :vert :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR> 
  nmap <C-@>d :vert :scs find d <C-R>=expand("<cword>")<CR><CR> 


  " Hitting CTRL-space *twice* before the search type does a vertical 
  " split instead of a horizontal one (vim 6 and up only)
  "
  " (Note: you may wish to put a 'set splitright' in your .vimrc
  " if you prefer the new window on the right instead of the left

  nmap <C-@><C-@>s :scs find s <C-R>=expand("<cword>")<CR><CR>
  nmap <C-@><C-@>g :scs find g <C-R>=expand("<cword>")<CR><CR>
  nmap <C-@><C-@>c :scs find c <C-R>=expand("<cword>")<CR><CR>
  nmap <C-@><C-@>t :scs find t <C-R>=expand("<cword>")<CR><CR>
  nmap <C-@><C-@>e :scs find e <C-R>=expand("<cword>")<CR><CR>
  nmap <C-@><C-@>f :scs find f <C-R>=expand("<cfile>")<CR><CR> 
  nmap <C-@><C-@>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR> 
  nmap <C-@><C-@>d :scs find d <C-R>=expand("<cword>")<CR><CR>


  """"""""""""" key map timeouts
  "
  " By default Vim will only wait 1 second for each keystroke in a mapping.
  " You may find that too short with the above typemaps.  If so, you should
  " either turn off mapping timeouts via 'notimeout'.
  "
  "set notimeout 
  "
  " Or, you can keep timeouts, by uncommenting the timeoutlen line below,
  " with your own personal favorite value (in milliseconds):
  "
  "set timeoutlen=4000
  "
  " Either way, since mapping timeout settings by default also set the
  " timeouts for multicharacter 'keys codes' (like <F1>), you should also
  " set ttimeout and ttimeoutlen: otherwise, you will experience strange
  " delays as vim waits for a keystroke after you hit ESC (it will be
  " waiting to see if the ESC is actually part of a key code like <F1>).
  "
  "set ttimeout 
  "
  " personally, I find a tenth of a second to work well for key code
  " timeouts. If you experience problems and have a slow terminal or network
  " connection, set it higher.  If you don't set ttimeoutlen, the value for
  " timeoutlent (default: 1000 = 1 second, which is sluggish) is used.
  "
  "set ttimeoutlen=100

endif
