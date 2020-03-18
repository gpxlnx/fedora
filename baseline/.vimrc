set nocompatible
set completeopt-=preview
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'tpope/vim-surround'
Plugin 'easymotion/vim-easymotion'
Plugin 'kien/ctrlp.vim'
call vundle#end()
filetype plugin indent on

set exrc
set secure
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
    hi statusline ctermfg=63 ctermbg=25
  endif
endfunction

au InsertEnter * call InsertStatuslineColor(v:insertmode)
au InsertLeave * hi statusline ctermfg=15 ctermbg=24
hi statusline ctermfg=24 ctermbg=15
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

" highlight groups
hi def InterestingWord1 ctermfg=16 ctermbg=214
hi def InterestingWord2 ctermfg=16 ctermbg=154
hi def InterestingWord3 ctermfg=16 ctermbg=121
hi def InterestingWord4 ctermfg=16 ctermbg=137
hi def InterestingWord5 ctermfg=16 ctermbg=211
hi def InterestingWord6 ctermfg=16 ctermbg=195
hi def InterestingWord7 ctermfg=16 ctermbg=99
hi def InterestingWord8 ctermfg=16 ctermbg=35
hi def InterestingWord9 ctermfg=16 ctermbg=57
hi def InterestingWord0 ctermfg=16 ctermbg=39

" Steve Losh's highlight function
function HighInterestingWord(n)
  normal! mz
  normal! "zyiw
  let mid = 88888 + a:n
  silent! call matchdelete(mid)
  let pat = '\V\<' . escape(@z, '\') . '\>'
  call matchadd("InterestingWord".a:n, pat, 1, mid)
  normal! `z
endfunction

" multiple highlights
nnoremap <silent> <leader>1 :call HighInterestingWord(1)<cr>
nnoremap <silent> <leader>2 :call HighInterestingWord(2)<cr>
nnoremap <silent> <leader>3 :call HighInterestingWord(3)<cr>
nnoremap <silent> <leader>4 :call HighInterestingWord(4)<cr>
nnoremap <silent> <leader>5 :call HighInterestingWord(5)<cr>
nnoremap <silent> <leader>6 :call HighInterestingWord(6)<cr>
nnoremap <silent> <leader>7 :call HighInterestingWord(7)<cr>
nnoremap <silent> <leader>8 :call HighInterestingWord(8)<cr>
nnoremap <silent> <leader>9 :call HighInterestingWord(9)<cr>
nnoremap <silent> <leader>0 :call HighInterestingWord(0)<cr>
