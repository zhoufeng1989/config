"nocompatible to vi, behave in a more useful way
set nocompatible
"show line number
set nu
"new tab characters entered will be changed to 4 space
set tabstop=4 expandtab
"backspace key treat four spaces like a tab
"(one backspace goes back a full 4 spaces)
set softtabstop=4
"use 4 spaces for indent instead of tab
:set shiftwidth=4
"keep 50 lines of command line history
set history=50
"display incomplete commands
set showcmd
"While typing a search command, show where the pattern, 
"as it was typed so far, matches.  
set incsearch
"sets the character encoding used inside Vim.
set encoding=utf-8 
"set maximum width of text that is being inserted.  
"A longer line will be broken after white space to get this width.  
set tw=80
"syntax highlight
syntax enable
"set colorscheme, this searches 'runtimepath' for the file colors/{name}.vim.
colorscheme desert
"set tags file recursion
set tags=./tags,tags;~
map <CR> o<Esc>
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <C-j> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
"bundle config
filetype off                   " required!
"runtimepath
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
" original repos on github
Bundle 'Lokaltog/vim-easymotion'
Bundle 'scrooloose/nerdtree'
Bundle 'millermedeiros/vim-statline'
Bundle 'klen/python-mode'
Bundle 'tpope/vim-pathogen'
Bundle 'altercation/vim-colors-solarized'
Bundle 'Lokaltog/vim-distinguished'
Bundle 'tpope/vim-surround'
filetype plugin indent on
syntax on
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
