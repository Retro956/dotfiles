" Required At The Top For Assorted Plugins
set nocompatible
set hidden
set noswapfile
" filetype off
filetype plugin indent on

" .asm Configurations
augroup filetypedetect
  au BufNewFile,BufRead *.s,*.inc,*.asm set ft=asm_ca65
  au FileType asm setlocal shiftwidth=4 softtabstop=4 expandtab
augroup END

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
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-surround'
Plugin 'jceb/vim-orgmode'
Plugin 'tpope/vim-speeddating'
Plugin 'vim-scripts/utl.vim'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-commentary'
Plugin 'vim-scripts/taglist.vim'
Plugin 'morhetz/gruvbox'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'preservim/nerdtree'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'maxbane/vim-asm_ca65'

call vundle#end()
filetype plugin indent on

" My Configuration Changes
colo nachtleben
" let g:gruvbox_contrast_dark = 'hard'
" colorscheme gruvbox
syntax on
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab
set number
set background=dark
set omnifunc=syntaxcomplete#Complete
set complete+=kspell
set completeopt=menuone,longest
set shortmess+=c
set backspace=start,eol,indent

" Mappings
imap kj <Esc>

" Variables
let $RC="$HOME/.vimrc"
let $RTP=split(&runtimepath, ',')[0]
set path=.,**

" Nerd Tree Config
map <C-n> :NERDTreeToggle<CR>

" Vim-Mardown Configuration
" Disable Folding
let g:vim_markdown_folding_disabled = 1

" Commands
command! MakeTags !ctags -R .

" SNIPPETS
nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>
nnoremap ,cpp :-1read $HOME/.vim/.skeleton.cpp<CR>
nnoremap ,py :-1read $HOME/.vim/.skeleton.py<CR>
nnoremap ,lorem :-1read $HOME/.vim/.skeleton.lorem<CR>
nnoremap ,rc :e $RC

" YyouCompleteMe Requirements
set encoding=utf-8
