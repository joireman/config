" Set 'nocompatible' to ward off unexpected things that your 
" distro might have made, as well as sanely reset options when 
" re-sourcing .vimrc
set nocompatible

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SETTINGS - Store all settings in a single file
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source ~/.vim/startup/settings.vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" KEY MAPPINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source ~/.vim/startup/abbrpwj.vim
source ~/.vim/startup/autocorrect.vim
source ~/.vim/startup/mappings.vim
source ~/.vim/startup/autocmd.vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" UltiSnips Configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Trigger configuration. Do not use <tab> if you use 
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


" Enable powerline plugin for status bar
"set rtp+=~/git/projects/powerline/powerline/bindings/vim
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

" Used 256 colors in terminal
set t_Co=256
