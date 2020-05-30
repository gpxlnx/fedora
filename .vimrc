set encoding=UTF-8
set nocompatible
set completeopt-=preview
filetype off
set showmatch
set list
set hidden
set tabstop=2
set conceallevel=1
set shiftwidth=2
set directory^=$HOME/.vim/tmp//
set expandtab
set smarttab
set autoindent
set cindent
set complete=.,w,b,u,t
set foldmethod=manual
set nofoldenable
set autoread
set number
set numberwidth=5
set laststatus=2
set smartcase
set lazyredraw
set synmaxcol=200
syntax sync minlines=64
set ttyfast
set relativenumber
set wildignorecase
set wildmode=list:longest,full
set confirm
set wildmenu
set magic
set noerrorbells
set novisualbell
set t_vb=
set tm=500
set ai
set si
set wrap
set diffopt=internal,algorithm:patience
set fillchars+=vert:\ " whitespace signifacant
"set exrc
set secure
"set cursorline
"set cursorcolumn
set tags=./tags,tags;$HOME

set hlsearch
set incsearch
set ignorecase
set smartcase
highlight clear Search

let g:is_posix = 1

set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/bin/fzf
"set rtp+=/home/bloodstalker/extra/llvm-clang-4/build/bin/clangd
"set rtp+=/usr/local/bin/pyls
call vundle#begin()
Plugin 'vim-airline/vim-airline'
Plugin 'mbbill/undotree'
Plugin 'mhinz/vim-startify'
"Plugin 'Townk/vim-autoclose'
"Plugin 'kien/ctrlp.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kh3phr3n/python-syntax'
Plugin 'VundleVim/Vundle.vim'
Plugin 'mattn/webapi-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'sickill/vim-pasta'
Plugin 'adelarsq/vim-matchit'
Plugin 'makerj/vim-pdf'
Plugin 'ElmCast/elm-vim'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'vim-ctrlspace/vim-ctrlspace'
Plugin 'mhinz/vim-signify'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'vimwiki/vimwiki'
Plugin 'flazz/vim-colorschemes'
"Plugin 'Rip-Rip/clang_complete'
"Plugin 'kien/rainbow_parentheses.vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'neomutt/neomutt.vim'
Plugin 'sngn/vim-i3blocks-syntax'
"Plugin 'tpope/vim-capslock'
"Plugin 'Yggdroot/indentLine'
"Plugin 'Lokaltog/vim-powerline'
"Plugin 'powerline/powerline'
Plugin 'rhysd/vim-wasm'
Plugin 'tomlion/vim-solidity'
"Plugin 'rhysd/open-pdf.vim'
"Plugin 'bloodstalker/csound-vim'
"Plugin 'https://github.com/rhysd/open-pdf.vim'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'jaxbot/semantic-highlight.vim'
Plugin 'PotatoesMaster/i3-vim-syntax'
"Bundle 'gabrielelana/vim-markdown'
Plugin 'chrisbra/NrrwRgn'
Plugin 'easymotion/vim-easymotion'
"Plugin 'tpope/vim-speeddating'
Plugin 'neovimhaskell/haskell-vim'
"Plugin 'xolox/vim-notes'
Plugin 'majutsushi/tagbar'
Plugin 'chrisbra/csv.vim'
"Plugin 'xolox/vim-easytags'
"Plugin 'xolox/vim-session'
Plugin 'xolox/vim-misc'
"Plugin 'jpalardy/vim-slime'
"Plugin 'ternjs/tern_for_vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'unblevable/quick-scope'
Plugin 'SirVer/ultisnips'
"Plugin 'metakirby5/codi.vim'
Plugin 'chrisbra/Recover.vim'
Plugin 'honza/vim-snippets'
Plugin 'rhysd/git-messenger.vim'
Plugin 'mhinz/vim-grepper'
Plugin 'vim-utils/vim-troll-stopper'
Plugin 'junegunn/limelight.vim'
Plugin 'valloric/MatchTagAlways'
Plugin 'junegunn/vim-peekaboo'
Plugin 'tpope/vim-vinegar'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-rhubarb'
"Plugin 'jmcantrell/vim-virtualenv'
Plugin 'ervandew/supertab'
Plugin 'rgrinberg/vim-ocaml'
Plugin 'terryma/vim-multiple-cursors'
"Plugin 'JuliaEditorSupport/julia-vim'
"its super slow for some reason
Plugin 'kshenoy/vim-signature'
Plugin 'Konfekt/vim-scratchpad'
"Plugin 'python-mode/python-mode'
Plugin 'tmux-plugins/vim-tmux'
Plugin 'rust-lang/rust.vim'
Plugin 'tpope/vim-repeat'
Plugin 'cespare/vim-toml'
Plugin 'maralla/vim-toml-enhance'
Plugin 'junegunn/fzf.vim'
"Plugin 'Valloric/ListToggle'
"Plugin 'racer-rust/vim-racer'
"Plugin 'neomake/neomake'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'chiel92/vim-autoformat'
Plugin 'wakatime/vim-wakatime'
Plugin 'terryma/vim-expand-region'
"Plugin 'scrooloose/syntastic'
"Plugin 'vim-scripts/indentpython.vim'
"Plugin 'nvie/vim-flake8'
"Plugin 'Yggdroot/hiPairs'
"Plugin 'maxbrunsfeld/vim-yankstack'
"Plugin 'gcmt/wildfire.vim'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/DoxyGen-Syntax'
Plugin 'vim-scripts/DoxygenToolkit.vim'
Plugin 'szymonmaszke/vimpyter'
Plugin 'fatih/vim-go'
Plugin 'tpope/vim-fugitive'
Plugin 'junegunn/goyo.vim'
Plugin 'amix/vim-zenroom2'
"Plugin 'NLKNguyen/papercolor-theme'
"Plugin 'ludwig/split-manpage.vim'
Plugin 'raimon49/requirements.txt.vim'
Plugin 'Shougo/vimproc.vim'
"Plugin 'Shougo/vimshell.vim'
Plugin 'hattya/vcs-info.vim'
"Plugin 'severin-lemaignan/vim-minimap'
Plugin 'aklt/plantuml-syntax'
Plugin 'LnL7/vim-nix'
Plugin 'zah/nim.vim'
Plugin 'rhysd/vim-llvm'
Plugin 'rhysd/vim-gfm-syntax'
Plugin 'haya14busa/is.vim'
Plugin 'haya14busa/vim-asterisk'
Plugin 'haya14busa/incsearch.vim'
Plugin 'haya14busa/vim-edgemotion'
Plugin 'lervag/vimtex'
Plugin 'vim-utils/vim-man'
Plugin 'ajh17/VimCompletesMe'
Plugin 'ryanoasis/vim-devicons'
call vundle#end()
filetype plugin indent on

let g:gfm_syntax_enable_always = 0
let g:gfm_syntax_enable_filetypes = ['markdown.gfm']
autocmd BufRead,BufNew,BufNewFile README.md setlocal ft=markdown.gfm

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
"hi Normal ctermbg=None

" Disable Background Color Erase (BCE) so that color schemes
" work properly when Vim is used inside tmux and GNU screen.
if &term =~ '256color'
  set t_ut=
endif

let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_posix_standard = 1

hi Normal ctermbg=None

" airline options
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#branch#enabled = 1
"let g:airline_theme = 'jellybeans'
function! Airline_Custom()
  let l:spc = g:airline_symbols.space
  "let g:airline_section_c = '[%f] [%b][0x%B]'
  let g:airline_section_z = airline#section#create([
    \ 'windowswap',
    \ '%3p%%'.l:spc,
    \ 'linenr',
    \ ':%3v'.l:spc,
    \ '%5o',
    \ '[%b][0x%B]'
  \])
endfunction
autocmd user AirlineAfterInit call Airline_Custom()

"set syntax=cpp.doxygen
syntax on
let python_highlight_all = 1

" n00b stuff
nmap <Backspace> <Nop>
nmap <Delete> <Nop>
nmap <Left> <Nop>
nmap <Down> <Nop>
nmap <Up> <Nop>
nmap <Right> <Nop>
nmap <PageUp> <Nop>
nmap <PageDown> <Nop>

"imap <Backspace> <Nop>
"imap <Delete> <Nop>
imap <Left> <Nop>
imap <Down> <Nop>
imap <Up> <Nop>
imap <Right> <Nop>
imap <PageUp> <Nop>
imap <PageDown> <Nop>
" end of n00b stuff

au BufRead,BufNewFile .i3blocks.conf set filetype=i3blocks
au BufRead,BufNewFile *.zsh-theme set filetype=zsh
au BufEnter,FileType cpp set syntax=cpp.doxygen
au BufEnter,FileType c set syntax=cpp.doxygen
" sets filetype for muttrc to neomuttrc not muttrc since i'm too lazy
" to be bothered to change the name of my rc that i pass to neomutt
au BufNewFile,BufRead .muttrc set filetype=neomuttrc

au BufNewFile,BufEnter *.s set ft=nasm
au BufEnter,FileType *.wast set syntax=wast
au BufEnter,FileType *.wat set syntax=wast

" python configs
" PEP-8
au BufNewFile,BufEnter *.py set tabstop=4
au BufNewFile,BufEnter *.py set softtabstop=4
au BufNewFile,BufEnter *.py set shiftwidth=4
"au BufNewFile,BufEnter *.py set textwidth=79
au BufNewFile,BufEnter *.py set expandtab
au BufNewFile,BufEnter *.py set autoindent
au BufNewFile,BufEnter *.py set fileformat=unix

let python_highlight_all = 1

"mapping fast keycodes
set timeoutlen=1000 ttimeoutlen=100
"Shift+F10
set <F13>=^[[21;2~
map <F13> <S-F10>
map! <F13> <S-F10>
"Shift+F9
set <F14>=^[[20;2~
map <F14> <S-F9>
map! <F14> <S-F9>
"Shift+F5
set <F15>=^[[15;2~
map <F15> <S-F5>
map! <F15> <S-F5>
"Shift+F1
set <F16>=^[[1;2P
map <F16> <S-F1>
map! <F16> <S-F1>
"Shift+F2
set <F17>=^[[1;2Q
map <F17> <S-F2>
map! <F17> <S-F2>
"Shift+F11
set <F18>=^[[23;2~
map <F18> <S-F11>
map! <F18> <S-F11>
"Shift+F12
set <F19>=^[[24;2~
map <F19> <S-F12>
map! <F19> <S-F12>

"cnoremap help vert help
map <F1> <Plug>(expand_region_shrink)
map <F2> <Plug>(expand_region_expand)
map <F3> :bp<CR>
map <F4> :bn<CR>
map <F5> <C-w>
map <C-e> :q<cr>
nnoremap <F7> :Vexplore<CR>
nnoremap <F12> :UndotreeToggle<cr>
nnoremap <F10> :vsp<cr>
nnoremap <S-F10> :sp<cr>
map <F8> :TagbarToggle<CR>
"nnoremap <S-F11> <Plug>(vimshell_split_create)
nnoremap <S-F12> :VimShellClose<CR>
nnoremap <S-F11> :VimShell<CR>
nmap Y y$

" vim.session options
let g:session_directory = "~/.vim/session"
let g:session_autosave = "no"

" ocaml/merlin/ocp
let no_ocaml_comments = 0
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"
set rtp^="/home/bloodstalker/.opam/4.05.0/share/ocp-indent/vim"
"autocmd FileType ocaml source '"$(opam config var prefix)"'/share/typerex/ocp-indent/ocp-indent.vim
let g:syntastic_ocaml_checkers = ['merlin']
" ocaml/merlin/ocp end
let ocaml_revised = 1
let ocaml_noend_error = 1

" NERDTree
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

" solidity ctags - by shuangjj
let g:tagbar_type_solidity = {
    \ 'ctagstype': 'solidity',
    \ 'kinds' : [
        \ 'c:contracts',
        \ 'e:events',
        \ 'f:functions',
        \ 'm:mappings',
        \ 'v:varialbes',
    \ ]
    \ }

" doxygentoolkit
autocmd BufNewFile,BufRead,BufEnter *.sol let g:DoxygenToolkit_briefTag_pre="@dev  "

" open-pdf conf
let g:pdf_convert_on_edit = 1
let g:pdf_convert_on_read = 1

" startify
let g:session_autoload="no"

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

" scratchpad
let g:scratchpad_path = '.scratchpads'
nmap <F9> <Plug>(ToggleScratchPad)

let g:tagbar_type_rust = {
    \ 'ctagstype' : 'rust',
    \ 'kinds' : [
        \'T:types,type definitions',
        \'f:functions,function definitions',
        \'g:enum,enumeration names',
        \'s:structure names',
        \'m:modules,module names',
        \'c:consts,static constants',
        \'t:traits',
        \'i:impls,trait implementations',
    \]
    \}

let g:tagbar_type_make = {
            \ 'kinds':[
                \ 'm:macros',
                \ 't:targets'
            \ ]
\}

let g:tagbar_type_go = {
  \ 'ctagstype' : 'go',
  \ 'kinds'     : [
    \ 'p:package',
    \ 'i:imports:1',
    \ 'c:constants',
    \ 'v:variables',
    \ 't:types',
    \ 'n:interfaces',
    \ 'w:fields',
    \ 'e:embedded',
    \ 'm:methods',
    \ 'r:constructor',
    \ 'f:functions'
  \ ],
  \ 'sro' : '.',
  \ 'kind2scope' : {
    \ 't' : 'ctype',
    \ 'n' : 'ntype'
  \ },
  \ 'scope2kind' : {
    \ 'ctype' : 't',
    \ 'ntype' : 'n'
  \ },
  \ 'ctagsbin'  : 'gotags',
  \ 'ctagsargs' : '-sort -silent'
\ }

" rust options
let g:autofmt_autosave = 1
let g:racer_experimental_completer = 1
let g:racer_cmd = "/home/bloodstalker/.cargo/bin/racer"
au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-def-split)
au FileType rust nmap gx <Plug>(rust-def-vertical)
au FileType rust nmap <leader>gd <Plug>(rust-doc)

" undotree
if has("persistent_undo")
    set undodir=~/.undodir/
    set undofile
endif
let g:undotree_WindowLayout = 4

" narrow region
let g:nrrw_rgn_vert = 1
let g:nrrw_rgn_resize_window = "relative"
vnoremap <S-F5> :<C-U>NRV<cr>

"runs shell command, opens new buffer with syntax=nasm, prints command output
command! -complete=shellcmd -nargs=+ Shell call s:RunShellCommand(<q-args>)
function! s:RunShellCommand(cmdline)
  echo a:cmdline
  let expanded_cmdline = a:cmdline
  for part in split(a:cmdline, ' ')
     if part[0] =~ '\v[%#<]'
        let expanded_part = fnameescape(expand(part))
        let expanded_cmdline = substitute(expanded_cmdline, part, expanded_part, '')
     endif
  endfor
  botright vnew
  setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nowrap
  call setline(3,substitute(getline(2),'.','=','g'))
  execute '$read !'. expanded_cmdline
  setlocal nomodifiable
  set syntax=nasm
  1
endfunction
"vmap <S-F2> call RunShellCommand

" by xolox
function! s:get_visual_selection()
  let [line_start, column_start] = getpos("'<")[1:2]
  let [line_end, column_end] = getpos("'>")[1:2]
  let lines = getline(line_start, line_end)
  if len(lines) == 0
      return ''
  endif
  let lines[-1] = lines[-1][: column_end - (&selection == 'inclusive' ? 1 : 2)]
  let lines[0] = lines[0][column_start - 1:]
  return join(lines, "\n")
endfunction

let s:compiler_explorer_std_c_hdrs = ["#include <assert.h>\r", "#include <complex.h>\r",
      \"#include <ctype.h>\r","#include <errno.h>\r","#include <fenv.h>\r","#include <float.h>\r",
      \"#include <inttypes.h>\r","#include <iso646.h>\r","#include <limits.h>\r","#include <locale.h>\r",
      \"#include <math.h>\r","#include <setjmp.h>\r","#include <signal.h>\r","#include <stdalign.h>\r",
      \"#include <stdarg.h>\r","#include <stdbool.h>\r","#include <stddef.h>\r",
      \"#include <stdint.h>\r","#include <stdio.h>\r","#include <stdlib.h>\r","#include <stdnoreturn.h>\r",
      \"#include <string.h>\r","#include <tgmath.h>\r","#include <time.h>\r","#include <uchar.h>\r",
      \"#include <wchar.h>\r","#include <wctype.h>\r"]
let s:compiler_explorer_std_cpp_hdrs = ["#include <algorithm>\r","#include <cstdlib>\r","#include <csignal>\r","#include <csetjmp>\r",
      \"#include <cstdarg>\r","#include <typeinfo>\r","#include <typeindex>\r","#include <type_traits>\r",
      \"#include <bitset>\r","#include <functional>\r","#include <utility>\r","#include <ctime>\r",
      \"#include <chrono>\r","#include <cstddef>\r","#include <initializer_list>\r","#include <tuple>\r",
      \"#include <new>\r","#include <memory>\r","#include <scoped_allocator>\r","#include <climits>\r",
      \"#include <cfloat>\r","#include <cstdint>\r","#include <cinttypes>\r","#include <limits>\r",
      \"#include <exception>\r","#include <stdexcept>\r","#include <cassert>\r","#include <system_error>\r",
      \"#include <cerrno>\r","#include <cctype>\r","#include <cwctype>\r","#include <cstring>\r",
      \"#include <cwchar>\r","#include <cuchar>\r","#include <string>\r","#include <array>\r",
      \"#include <vector>\r","#include <deque>\r","#include <list>\r","#include <forward_list>\r",
      \"#include <set>\r","#include <map>\r","#include <unordered_set>\r","#include <unordered_map>\r",
      \"#include <stack>\r","#include <queue>\r","#include <algorithm>\r","#include <iterator>\r",
      \"#include <cmath>\r","#include <complex>\r","#include <valarray>\r","#include <random>\r",
      \"#include <numeric>\r","#include <ratio>\r","#include <cfenv>\r","#include <iosfwd>\r",
      \"#include <ios>\r","#include <istream>\r","#include <ostream>\r","#include <iostream>\r",
      \"#include <fstream>\r","#include <sstream>\r","#include <iomanip>\r",
      \"#include <streambuf>\r","#include <cstdio>\r","#include <locale>\r","#include <clocale>\r",
      \"#include <codecvt>\r","#include <regex>\r","#include <atomic>\r","#include <thread>\r",
      \"#include <mutex>\r","#include <shared_mutex>\r","#include <future>\r","#include <condition_variable>\r"]
" sends visual selection to compiler exlorer and gets the asm back

" should probably change this to be the complete path and make the variable
" glboal
let s:compiler_explorer_config="/ceconfig.json"
function! s:compiler_explorer()
  let temp_file = tempname()
  if &filetype == "c"
    call writefile(s:compiler_explorer_std_c_hdrs, temp_file, "a")
  elseif &filetype == "cpp"
    call writefile(s:compiler_explorer_std_cpp_hdrs, temp_file, "a")
  endif

  let source_code = s:get_visual_selection()
  call writefile(split(substitute(source_code, "\n", "\r", "g"), "\r"), temp_file, "a")
  let current_buf_name = bufname("%")
  botright vnew
  setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nowrap
  call setline(3,substitute(getline(2),'.','=','g'))
  execute "$read!"."node"." "."~/scripts/compiler-explorer/main.js ".temp_file. " ". getcwd(0).s:compiler_explorer_config
  setlocal nomodifiable
  set syntax=nasm
  1
endfunction
command! -complete=shellcmd -nargs=0 CompilerExplorer call s:compiler_explorer()
vmap <S-F9> :<C-U>CompilerExplorer<cr>

"ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_show_hidden = 1
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
if executable('rg')
  set grepprg=rg\ --color=never
  let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
  let g:ctrlp_use_caching = 0
endif

"supertab
let g:SuperTabSetDefaultCompletionType = "context"

"snippets
nnoremap ,cmain :1read $HOME/scripts/snippets/cmain.c<CR>
nnoremap ,cppmain :1read $HOME/scripts/snippets/cppmain.cpp<CR>
nnoremap ,pypy :1read $HOME/scripts/snippets/main.py<CR>
nnoremap ,sh :1read $HOME/scripts/snippets/shebang.sh<CR>

"highlight search
highlight Search ctermfg=White ctermbg=DarkGreen cterm=Bold
highlight IncSearch ctermfg=White ctermbg=DarkBlue cterm=Bold
highlight WildMenu ctermfg=DarkBlue ctermbg=DarkGreen cterm=Bold

iab pritn print
iab retrun return
iab fucntion function
iab funciton function

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

autocmd FileType c,cpp let b:vcm_tab_complete = "omni"
autocmd FileType lua let b:vcm_tab_complete = "omni"
autocmd FileType python let b:vcm_tab_complete = "omni"

" sets the dictionary for autocompletion with <C-n> and <C-p> for the
" filetypes
set dictionary+=/usr/share/dict/words
autocmd FileType markdown,text,vimwiki setlocal complete+=k

"fzf
map <leader>f <Esc><Esc>:Files!<CR>

"asterisk.vim, is.vim, incsearch.vim, edgemotion
map *   <Plug>(asterisk-*)
map #   <Plug>(asterisk-#)
map g*  <Plug>(asterisk-g*)
map g#  <Plug>(asterisk-g#)
map z*  <Plug>(asterisk-z*)
map gz* <Plug>(asterisk-gz*)
map z#  <Plug>(asterisk-z#)
map gz# <Plug>(asterisk-gz#)
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
map <C-j> <Plug>(edgemotion-j)
map <C-k> <Plug>(edgemotion-k)

let g:semanticTermColors = [27,33,2,3,4,5,6,7,25,9,10,34,12,13,14,15,16,125,124,19]

inoremap <c-a> <esc>I
inoremap <c-e> <esc>A

" camelcase and snakecase motions
"let g:camelchar = "A-Z"
"let g:camelchar = "A-Z0-9"
let g:camelchar = "A-Z0-9.,;:{([`'\"_"
nnoremap <silent><C-h> :<C-u>call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%^','bW')<CR>
nnoremap <silent><C-l> :<C-u>call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%$','W')<CR>
inoremap <silent><C-h> <C-o>:call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%^','bW')<CR>
inoremap <silent><C-l> <C-o>:call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%$','W')<CR>
vnoremap <silent><C-h> :<C-U>call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%^','bW')<CR>v`>o
vnoremap <silent><C-l> <Esc>`>:<C-U>call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%$','W')<CR>v`<o
"wont work with set paste
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

"ultisnips
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"ycm
nnoremap <leader>jc :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>
nnoremap <leader>jr :YcmCompleter GoToReferences<CR>
nnoremap <leader>gt :YcmCompleter GetType<CR>
nnoremap <leader>gd :YcmCompleter GetDoc<CR>
nmap <leader>D <plug>(YCMHover)

let g:qs_highlight_on_keys = ["f", "F", "t", "T"]

let g:git_messenger_always_into_popup=v:true

"vim-haskell
let g:haskell_enable_quantification = 1
let g:haskell_enable_recursivedo = 1
let g:haskell_enable_arrowsyntax = 1
let g:haskell_enable_pattern_synonyms = 1
let g:haskell_enable_typeroles = 1
let g:haskell_enable_static_pointers = 1
let g:haskell_backpack = 1
let g:haskell_disable_TH = 0

"vim-markdown
let g:vim_markdown_strikethrough = 1
