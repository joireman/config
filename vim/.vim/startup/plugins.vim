" Vundle plugin manager setup
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmarik/vundle'

" Tim Pope writes incredibly useful plugins
"    unimpared - useful mappings with [-key and ]-key
"    surround  - surround selected text with character
"    commentary - comment out lines
"    fugitive   - plugin to enable git usage from vim
"
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'

" File explorer and opening
Plugin 'scrooloose/nerdtree'


" Track the ultisnips engine.
" Snippets are separated from the engine.
"    Add  honza/vim-snippets for lots of snippets.
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

Plugin 'kien/ctrlp.vim'
Plugin 'bronson/vim-trailing-whitespace'

" ---- Language Specific Plugins ------
" HTML Emmet editing 
Plugin 'mattn/emmet-vim'

" Markdown
Plugin 'nelstrom/vim-markdown-folding'
"
"  Python mode
" Plugin 'klen/python-mode'
"
" Go language support
" Plugin 'fatih/vim-go'

" Restructured text table support
Plugin 'dhruvasagar/vim-table-mode'



call vundle#end()
