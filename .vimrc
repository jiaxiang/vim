set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'Lokaltog/powerline'
Bundle 'shawncplus/phpcomplete.vim'
"Bundle 'vim-scripts/taglist.vim'
Plugin 'majutsushi/tagbar'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax enable
"common conf
set ai
set bs=2
set showmatch
set laststatus=2
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set textwidth=80
inoremap jk <ESC>
"set cursorline
set nu
set autoread
set ignorecase
"set smartcase
set fileencodings=utf-8,gbk
set hls
set incsearch
"set foldmethod=syntax
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
set foldmethod=indent
set foldlevel=1
"set <Tab> autocomplete
set wildmenu
set wildmode=full
"php 
inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i
nnoremap <C-P> :call PhpDocSingle()<CR>
vnoremap <C-P> :call PhpDocRange()<CR>
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
set ofu=syntaxcomplete#Complete
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS 
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags 
autocmd FileType css set omnifunc=csscomplete#CompleteCSS 
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags 

"conf for tabs
let mapleader = ','
nnoremap <C-l> gt
nnoremap <C-h> gT
nnoremap <leader>t : tabe<CR>

":edit %h:<Tab>
cnoremap <expr> %% getcmdtype( ) == ':' ? expand('%:h').'/' : '%%'

"conf for plugins
"pathogen
"call pathogen#infect()
execute pathogen#infect()
"powerline
set guifont=PowerlineSymbols\ for\ Powerline
set t_Co=256
let g:Powerline_symbols = 'fancy'

"taglist
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Ctags_Cmd = '/usr/local/Cellar/ctags/5.8/bin/ctags'
nnoremap <leader>tl : Tlist<CR>

"nerdtree
map <C-n> :NERDTreeToggle<CR>

"syntastic
let g:syntastic_enable_php_checker = 1
let g:syntastic_enable_python_checker = 1
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_php_phpcs_args='--tab-width=0'

"air-line
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

if exists("g:did_load_filetypes")
    filetype off
    filetype plugin indent off
endif
set runtimepath+=$GOROOT/misc/vim 
filetype plugin indent on
syntax on
