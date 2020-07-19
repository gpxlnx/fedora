let mapleader = " "
set nocompatible
set completeopt-=preview
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'tpope/vim-surround'
Plugin 'easymotion/vim-easymotion'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'chrisbra/Recover.vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'unblevable/quick-scope'
Plugin 'tpope/vim-repeat'
Plugin 'adelarsq/vim-matchit'
Plugin 'majutsushi/tagbar'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'mbbill/undotree'
call vundle#end()
filetype plugin indent on

" jellybeans
colo jellybeans
set background=dark
let g:gruvbox_italics = 1
let g:jellybeans_overrides = {
\    'Todo': { 'guifg': '000000', 'guibg': '00cc00',
\              'ctermfg': 'Black', 'ctermbg': 'Blue',
\              'attr': 'bold' },
\    'Comment': { 'guifg': '339966' },
\    'background': { "guibg": "000000", "ctermbg":"none"},
\    'StorageClass': {"guifg": '9966ff' },
\    'Exception': {"guifg": "99cc00"},
\    "Ignore": {"guifg": "336699"},
\    "SpecialComment": {"guifg": "009900"},
\    "Macro": {"guifg": "0099cc"}
\}
let g:jellybeans_use_term_italics = 1

"set exrc
set secure
set list
set showmatch
set number
set relativenumber
set noerrorbells
set hidden
set novisualbell
set expandtab
set smarttab
set autoindent
set autoread
set ignorecase smartcase
set magic
set lazyredraw
set ttyfast
set scrolloff=0
set tagbsearch
set wildmenu
set diffopt=internal,algorithm:patience
set tags=./tags,tags;$HOME
syntax on
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
nnoremap <F7> :Vexplore<CR>
map <F8> :TagbarToggle<CR>
nnoremap <F12> :UndotreeToggle<cr>
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
au InsertLeave * hi statusline ctermfg=24 ctermbg=15
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

au BufNewFile,BufEnter *.s set ft=nasm

"copy and paste between different Vim sessions
nmap _Y :!echo ""> ~/.vi_tmp<CR><CR>:w! ~/.vi_tmp<CR>
vmap _Y :w! ~/.vi_tmp<CR>
nmap _P :r ~/.vi_tmp<CR>

inoremap <c-a> <esc>I
inoremap <c-e> <esc>A

iab pritn print
iab retrun return
iab fucntion function
iab funciton function

nnoremap <S-Delete> :bd<CR>
map <F6> <nop>
nnoremap <leader>c :call clearmatches()<CR>
map <leader>s :w<CR>
nnoremap <leader>t :bel term<CR>
nnoremap <leader>r :!%:p<CR>

let g:qs_highlight_on_keys = ["f", "F", "t", "T"]

" undotree
if has("persistent_undo")
    set undodir=~/.undodir/
    set undofile
endif
let g:undotree_WindowLayout = 4

"highlight search
highlight Search ctermfg=White ctermbg=DarkGreen cterm=Bold
highlight IncSearch ctermfg=White ctermbg=DarkBlue cterm=Bold
highlight WildMenu ctermfg=DarkBlue ctermbg=DarkGreen cterm=Bold

"netrw
let g:netrw_sort_by = 'date'
let g:netrw_sort_direction = 'reverse'
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 1
let g:netrw_winsize = 15
let g:netrw_fastbrowse = 1
let g:netrw_sort_by = 'name'
let g:netrw_sort_direction = 'normal'

"tagbar
let g:tagbar_compact = 1
let g:tagbar_show_linenumbers = 2
let g:tagbar_width = 50
highlight TagbarSignature ctermfg=DarkBlue

"view the python docs for the word under cursor in a split window
function! s:pythondoc()
  let l:vword = expand("<cword>")
  botright vnew
  setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nowrap
  execute ".!pydoc3 " . l:vword
  setlocal nomodifiable
  set syntax=man
  1
endfunction
command! -complete=shellcmd -nargs=0 PythonDoc call s:pythondoc()
nnoremap <leader>h :<C-U>PythonDoc<cr>

"camel and snake case motion
let g:camelchar = "A-Z0-9.,;:{([`'\"_"
nnoremap <silent><C-h> :<C-u>call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%^','bW')<CR>
nnoremap <silent><C-l> :<C-u>call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%$','W')<CR>
inoremap <silent><C-h> <C-o>:call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%^','bW')<CR>
inoremap <silent><C-l> <C-o>:call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%$','W')<CR>
vnoremap <silent><C-h> :<C-U>call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%^','bW')<CR>v`>o
vnoremap <silent><C-l> <Esc>`>:<C-U>call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%$','W')<CR>v`<o

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
