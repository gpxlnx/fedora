
call plug#begin('~/AppData/Local/nvim/plugged')
 Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
 Plug 'vim-airline/vim-airline'
 Plug 'vim-airline/vim-airline-themes'
 Plug 'morhetz/gruvbox'
 Plug 'tpope/vim-commentary'
 Plug 'ctrlpvim/ctrlp.vim'
 Plug 'unblevable/quick-scope'
 Plug 'adelarsq/vim-matchit'
 Plug 'easymotion/vim-easymotion'
 Plug 'tpope/vim-surround'
 Plug 'tpope/vim-repeat'
 call plug#end()

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

 function! OnUIEnter(event)
	 let l:ui = nvim_get_chan_info(a:event.chan)
	 if has_key(l:ui, 'client') && has_key(l:ui.client, 'name')
		 if l:ui.client.name ==# 'Firenvim'
			 set guifont=DejaVuSansMono\ NF:h12
		 endif
	 endif
 endfunction
 " autocmd QueInit UIEnter * call OnUIEnter(deepcopy(v:event))

 colo gruvbox
 let g:airline_theme="jellybeans"

"camel and snake case motion
let g:camelchar = "A-Z0-9.,;:{([`'\"_"
nnoremap <silent><C-h> :<C-u>call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%^','bW')<CR>
nnoremap <silent><C-l> :<C-u>call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%$','W')<CR>
inoremap <silent><C-h> <C-o>:call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%^','bW')<CR>
inoremap <silent><C-l> <C-o>:call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%$','W')<CR>
vnoremap <silent><C-h> :<C-U>call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%^','bW')<CR>v`>o
vnoremap <silent><C-l> <Esc>`>:<C-U>call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%$','W')<CR>v`<o

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
map <C-e> :q<cr>
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
nnoremap <F7> :Vexplore<CR>

let g:qs_highlight_on_keys = ["f", "F", "t", "T"]
"
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
