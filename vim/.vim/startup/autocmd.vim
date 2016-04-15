""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autocmd specific settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("autocmd")
  " automatically reload .vimrc changes
  autocmd! bufwritepost .vimrc source %    

  " enable filetype detection
  filetype on

  " These file types require a specific syntax for tabs/spaces
  autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
  autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

  " These are just my own preferences
  autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType javascript setlocal ts=4 sts=4 sw=4 expandtab
endif

