set nocompatible
set completeopt-=preview
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'tpope/vim-surround'
Plugin 'easymotion/vim-easymotion'
call vundle#end()
filetype plugin indent on

set list
set showmatch
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
colo peachpuff
set directory^=$HOME/.vim/tmp//
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
"hi statusline ctermfg=blue ctermbg=white
set laststatus=2
function! InsertStatuslineColor(mode)
  if a:mode == 'i'
    hi statusline ctermfg=15 ctermbg=22
  elseif a:mode == 'r'
    hi statusline ctermfg=15 ctermbg=52
  else
    hi statusline ctermfg=25 ctermbg=63
  endif
endfunction

au InsertEnter * call InsertStatuslineColor(v:insertmode)
au InsertLeave * hi statusline ctermfg=15 ctermbg=24
hi statusline ctermfg=15 ctermbg=24
hi statuslineNC ctermfg=0 ctermbg=24 term=bold
set statusline=[%f]                             "file name
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%y      "filetype
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=\ %=                        " align left
set statusline+=Line:%l/%L[%p%%]            " line X of Y [percent of file]
set statusline+=\ Col:%c                    " current column
set statusline+=\ Buf:%n                    " Buffer number
set statusline+=\ [%b][0x%B]\               " ASCII and byte code under cursor

set fillchars+=vert:\ " whitespace signifacant
hi VertSplit ctermbg=0 ctermfg=0
