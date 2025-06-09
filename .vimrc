unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

set nocompatible
filetype plugin indent on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'sheerun/vim-polyglot'
call vundle#end()

" lightline
set laststatus=2

" cursor
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
let &t_SR = "\e[4 q"
let &t_ER = "\e[4 q"

set nu

set nobackup
set noswapfile

" error bell
set vb t_vb=

" clipboard
set clipboard+=unnamedplus

" tab
set noexpandtab   " Default
set tabstop=4
set shiftwidth=0  " Use value of tabstop
set softtabstop=0 " Default
set smarttab      " Optional

" ui
set nowrap
set noshowmode
set showmatch
set hlsearch

set encoding=utf-8

" bracket auto-complete
inoremap {<CR> {<CR>}<esc>O
inoremap {} {}

" number - relative number
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
    autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END
