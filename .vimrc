set encoding=utf-8
set fileencoding=utf-8
set backspace=indent,eol,start
set guioptions=-m
set guifont=Consolas\ 12
set linebreak
" language messages English_United States
" set langmenu=en_US.UTF-8  

" au GUIEnter * simalt ~x

if empty(glob('~/.vim/autoload/plug.vim'))
silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'joshdick/onedark.vim'
Plug 'airblade/vim-gitgutter'
Plug 'easymotion/vim-easymotion'
Plug 'sheerun/vim-polyglot'
Plug 'morhetz/gruvbox'

" All of your Plugins must be added before the following line
call plug#end()            " required
filetype plugin indent on
inoremap jk <ESC>
inoremap <ESC> <NOP>

" Press jk to return to normal mode when in visual mode
vnoremap jk <ESC>
vnoremap <ESC> <NOP>

" Press jk when in command mode, to go back to normal mode
cnoremap jk <ESC>
set number
set ruler

" Set clipboard to system default
set clipboard=unnamed

" No error bell
set noerrorbells
set belloff=all

" Set Proper Tabs
set tabstop=4

" Theme and styling
set laststatus=2

" Remapping <leader> to space
let mapleader="\<Space>"

" Colorscheme
 colorscheme gruvbox

" Enabling syntax
syntax on

" Reload files changed outside vim
set autoread

" No swap files generated
set noswapfile

" Incremental results on search
set incsearch

" Better indent
set expandtab
set smartindent

" Highlight Current line number
highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
set cursorline

" Other...
set nowrap
set scrolloff=8
set background=dark

set colorcolumn=120
set signcolumn=yes
highlight ColorColumn ctermbg=red guibg=red

""" Window Navigation with arrow keys
"""""""""""""""""""""""""""""""""""""
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>l :wincmd l<CR>

""" NERDTree Plugin Config
""""""""""""""""""""""""""
autocmd VimEnter * NERDTree | wincmd p
nnoremap <leader>é :NERDTreeFocus<CR>
nnoremap <C-é> :NerdTree<CR>
nnoremap <leader>f :NERDTreeFind<CR>
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ 'tabline': {
      \   'left': [ ['buffers'] ],
      \   'right': []
      \ },
      \ 'component_expand': {
      \   'buffers': 'lightline#bufferline#buffers'
      \ },
      \ 'component_type': {
      \   'buffers': 'tabsel'
      \ }
      \ }

""" Git Gutter Plugin Config
""""""""""""""""""""""""""""
let g:gitgutter_enabled=1
highlight GitGutterAdd guifg=#009900 ctermfg=Green
highlight GitGutterChange guifg=#bbbb00 ctermfg=Yellow
highlight GitGutterDelete guifg=#ff2222 ctermfg=Red
autocmd BufWritePost * GitGutter    " Update diff on every save

""" Easymotion Plugin Config
""""""""""""""""""""""""""""
map <leader><leader>w <Plug>(easymotion-bd-w)
nmap <Leader>1 <Plug>lightline#bufferline#go(1)
nmap <Leader>2 <Plug>lightline#bufferline#go(2)
nmap <Leader>3 <Plug>lightline#bufferline#go(3)
nmap <Leader>4 <Plug>lightline#bufferline#go(4)
nmap <Leader>5 <Plug>lightline#bufferline#go(5)
nmap <Leader>6 <Plug>lightline#bufferline#go(6)
nmap <Leader>7 <Plug>lightline#bufferline#go(7)
nmap <Leader>8 <Plug>lightline#bufferline#go(8)
nmap <Leader>9 <Plug>lightline#bufferline#go(9)
nmap <Leader>0 <Plug>lightline#bufferline#go(10)

nmap <Leader><Leader>1 <Plug>lightline#bufferline#delete(1)
nmap <Leader><Leader>2 <Plug>lightline#bufferline#delete(2)
nmap <Leader><Leader>3 <Plug>lightline#bufferline#delete(3)
nmap <Leader><Leader>4 <Plug>lightline#bufferline#delete(4)
nmap <Leader><Leader>5 <Plug>lightline#bufferline#delete(5)
nmap <Leader><Leader>6 <Plug>lightline#bufferline#delete(6)
nmap <Leader><Leader>7 <Plug>lightline#bufferline#delete(7)
nmap <Leader><Leader>8 <Plug>lightline#bufferline#delete(8)
nmap <Leader><Leader>9 <Plug>lightline#bufferline#delete(9)
nmap <Leader><Leader>0 <Plug>lightline#bufferline#delete(10)
