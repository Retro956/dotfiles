" Required At The Top For Assorted Plugins
set nocompatible
filetype off

" Lightline Configurations
set laststatus=2
set noshowmode
" lightline colorscheme
let g:lightline = {
  \ 'colorscheme': 'jellybeans',
  \ }

" Vundle Configurations
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle Plugins Go Here
Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-surround'

call vundle#end()
filetype plugin indent on

" My Configuration Changes
colo nachtleben
syntax on
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab
set number
