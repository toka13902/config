set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Bundle 'Lokaltog/vim-easymotion' 
Bundle 'kein/ctrlp.vim'
call vundle#end() 
filetype plugin indent on

syntax on
let mapleader = ","
highlight comment ctermfg=lightblue
hi Folded ctermbg=black ctermfg=yellow
set number
set relativenumber
set cursorline
set tabstop=8
set autoindent
set smartindent
set shiftwidth=8
set ignorecase
set smartcase
set smarttab
set incsearch
set gdefault
set autoread
set noswapfile
set nobackup
set pastetoggle=<F2>
nnoremap ; :
nnoremap ' ;
map f <Plug>(easymotion-bd-f)
map <leader>l <Plug>(easymotion-bd-jk)
noremap j gj
nnoremap k gk
nnoremap zo zO
set hidden
set backspace=indent,eol,start
set showmatch
set hlsearch
au FocusLost * :wa
inoremap jj <ESC>
nnoremap <leader><space> :noh<cr>
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <leader>s :set spell spelllang=en_us<cr>
nnoremap <leader>ss :set nospell<cr>
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
inoremap <leader>dd use Data::Dumper;<cr>
inoremap <leader>p print Dumper();<esc>hi
inoremap <leader>w warn Dumper();<esc>hi
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap rn :echo system("tmux rename-window " .expand("%:t"))<cr>
inoremap # X#
set statusline +=%4*\ %<%F%*            "full path
set statusline +=%2*%m%*                "modified flag
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines
set statusline +=%1*%4v\ %*             "virtual column number
set ls=2
set foldmethod=indent

autocmd BufRead,BufNewFile *.esp set filetype=perl
autocmd BufNewFile,BufRead *.less set syntax=css
autocmd BufNewFile,BufRead *.whiskers set syntax=css
autocmd BufReadPost,FileReadPost,BufNewFile,BufEnter * call system("tmux rename-window " . expand("%:t"))
autocmd VimLeave * call system("tmux rename-window bash")
autocmd InsertEnter * :set nornu
autocmd InsertLeave * :set rnu
