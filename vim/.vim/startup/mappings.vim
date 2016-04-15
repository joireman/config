" Key Mappings
"   - map key key-sequence     key replaces key-sequence in all modes
"   - nmap key key-sequence    mapping only in normal mode
"   - vmap key key-sequence    mapping only in visual mode
"   - imap key key-sequence    mapping only in insert mode
"
"   - Always use noremap in mode specific mapping to avoid 
"     mapping errors caused by recursion in map, so use:
"       (nnoremap, inoremap, vnoremap)
"
"   - unmap (or nunmap, vunmap, iunmap) destroys key mapping
"

" Define comma as leader key
let mapleader=','

cnoremap %% <C-R>=fnameescape(expand("%:h'))./<cr>
noremap <leader>ew :e %%
noremap <leader>es :sp %%
noremap <leader>ev :vsp %%
noremap <leader>et :tabe %%

" Map window movement to CTRL hjkl
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

"
nnoremap <C-n> :nohl<CR>

" Remap the up and down arrow keys
no <left> <Nop>
no <right> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>
ino <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>
vno <down> <Nop>

" Shifting between tabs more naturally
" using the control tab and control-shift-tab
nnoremap <C-Tab> :tabnext<CR>
nnoremap <C-S-Tab> :tabprevious<CR>
noremap <C-Tab> :tabnext<CR>
noremap <C-S-Tab> :tabprevious<CR>
inoremap <C-Tab> <ESC>:tabnext<CR>
inoremap <C-S-Tab> <ESC>:tabprevious<CR>
"
""""""""""""""""""""""""""""""""""""""""""
" NORMAL MODE MAPPINGS
"
nnoremap g<C-o> o<ESC>k
nnoremap gO O<ESC>j

"Center after a long jump
nnoremap G Gzz
nnoremap n nzz
nnoremap N nzz
nnoremap } }zz
nnoremap { {zz

" Moving lines up and down
nnoremap - ddp
nnoremap _ ddkP

" Map C-u to UPPERCASE
nnoremap <C-u> viwU

nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Surround mappings
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel

nnoremap H 0
nnoremap L $

nnoremap <Space> za

nmap <silent> <BS> :nohlsearch<CR>
"
""""""""""""""""""""""""""""""""""""""""""
" INSERT MODE MAPPINGS
"
inoremap <C-u> <ESC>viwUi
inoremap jk <esc>
