" Enable UTF-8 encoding
set encoding=utf-8

" Show partial commands in the last line of the screen
set showcmd
" Set tabstop, expandtab, softtabstop and shiftwidth
set ts=4 sts=4 sw=4 expandtab

" Initialize plugins
source ~/.vim/startup/plugins.vim

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" Enable syntax highlighting
syntax on

" Better command-line completion
set wildmenu

" Enable incremental searches and highlight searches 
set incsearch
set hlsearch

"------------------------------------------------------------
" Usability options {{{1
"
" These are options that users frequently set in their .vimrc. Some of them
" change Vim's behaviour in ways which deviate from the true Vi way, but
" which are considered to add usability. Which, if any, of these options to
" use is very much a personal preference, but they are harmless.

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler
set laststatus=2
set number     " Show line numbers on the left

" Set hidden so VIM can create hidden files without complaining
set hidden

" Set color scheme 
"colorscheme jellybeans
"colorscheme slate
colorscheme solarized
set background=dark
set listchars=tab:▸\ ,eol:¬
set list

" More sane paste functionality
"
set pastetoggle=<F2>    " toggle paste on and off with F2
set clipboard=unnamed

""" 1}}}
