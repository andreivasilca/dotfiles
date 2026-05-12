" Minimal plain-vim safety net — used when nvim isn't available
" (remote servers, containers, recovery scenarios)

set nocompatible               " don't pretend to be vi
syntax on                      " syntax highlighting
filetype plugin indent on      " filetype-specific plugins and indentation

set number                     " line numbers
set relativenumber             " relative line numbers (great for jumping)
set incsearch                  " search as you type
set hlsearch                   " highlight matches
set ignorecase smartcase       " case-insensitive unless query has uppercase
set expandtab                  " tabs become spaces
set tabstop=2 shiftwidth=2     " 2-space indents
set autoindent                 " keep indent on new line
set wildmenu                   " tab-complete commands with a menu
set scrolloff=4                " keep 4 lines visible above/below cursor
set mouse=a                    " allow mouse for resizing splits if needed
set hidden                     " switch buffers without saving
set backspace=indent,eol,start " sensible backspace behaviour

" Clear search highlight on Esc-Esc
nnoremap <silent> <Esc><Esc> :nohlsearch<CR>

