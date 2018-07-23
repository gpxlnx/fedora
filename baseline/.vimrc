set number
set relativenumber
set noerrorbells
set novisualbell
set expandtab
set smarttab
set autoindent
set autoread
set ignorecase smartcase
set lazyredraw
syntax on
colo elflord
nmap <Backspace> <Nop>
nmap <Delete> <Nop>
nmap <Left> <Nop>
nmap <Down> <Nop>
nmap <Up> <Nop>
nmap <Right> <Nop>
nmap <PageUp> <Nop>
nmap <PageDown> <Nop>
imap <PageUp> <Nop>
imap <PageDown> <Nop>
map <F3> :bp<CR>
map <F4> :bn<CR>
map <F5> <C-w>
map <C-e> :q<cr>
set timeoutlen=1000 ttimeoutlen=100
set <F13>=^[[21;2~
map <F13> <S-F10>
map! <F13> <S-F10>
nnoremap <F10> :vsp<cr>
nnoremap <S-F10> :sp<cr>

