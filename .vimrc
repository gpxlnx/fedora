set nocompatible              " be iMproved, required
filetype off                  " required
set showmatch
set list
" show existing tab with 2 spaces width
set tabstop=2
set conceallevel=0
" " when indenting with '>', use 2 spaces width
set shiftwidth=2
" " On pressing tab, insert 2 spaces
set expandtab
set smarttab
set autoindent
set cindent
set complete=.,w,b,u,t
set foldmethod=manual
set nofoldenable
"reload a file if changed externally
set autoread
"make seraches case-sensitive unless they contain uppercase letters
set ignorecase smartcase
" show line numbers
set number
set numberwidth=5
set laststatus=2
set smartcase
" for faster scrolling
"set cursorline
"set cursorcolumn
set lazyredraw
set synmaxcol=200
syntax sync minlines=64
set ttyfast
set relativenumber
set confirm
set wildmenu
set magic
" no annoying sounds
set noerrorbells
set novisualbell
set t_vb=
set tm=500
" indentation options
set ai
set si
set wrap

" don't use sh
let g:is_posix = 1

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'vim-airline/vim-airline'
Plugin 'mbbill/undotree'
Plugin 'mhinz/vim-startify'
"Plugin 'Townk/vim-autoclose'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'VundleVim/Vundle.vim'
Plugin 'mattn/webapi-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ElmCast/elm-vim'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'vim-scripts/Conque-GDB'
Plugin 'flazz/vim-colorschemes'
Plugin 'Rip-Rip/clang_complete'
Plugin 'kien/rainbow_parentheses.vim'
"Plugin 'craigemery/vim-autotag'
Plugin 'Yggdroot/indentLine'
"Plugin 'Lokaltog/vim-powerline'
"Plugin 'powerline/powerline'
Plugin 'rhysd/vim-wasm'
Plugin 'tomlion/vim-solidity'
Plugin 'rhysd/open-pdf.vim'
"Plugin 'https://github.com/rhysd/open-pdf.vim'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'PotatoesMaster/i3-vim-syntax'
"Bundle 'gabrielelana/vim-markdown'
Plugin 'chrisbra/NrrwRgn'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-speeddating'
Plugin 'neovimhaskell/haskell-vim'
Plugin 'xolox/vim-notes'
Plugin 'majutsushi/tagbar'
Plugin 'chrisbra/csv.vim'
"Plugin 'xolox/vim-easytags'
Plugin 'prabirshrestha/async.vim'
Plugin 'prabirshrestha/vim-lsp'
Plugin 'xolox/vim-misc'
Plugin 'jpalardy/vim-slime'
Plugin 'ternjs/tern_for_vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ervandew/supertab'
Plugin 'rgrinberg/vim-ocaml'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'JuliaEditorSupport/julia-vim'
"its super slow for some reason
Plugin 'kshenoy/vim-signature'
Plugin 'Konfekt/vim-scratchpad'
Plugin 'python-mode/python-mode'
Plugin 'hdima/python-syntax'
Plugin 'tmux-plugins/vim-tmux'
Plugin 'camelcasemotion'
Plugin 'rust-lang/rust.vim'
Plugin 'cespare/vim-toml'
Plugin 'maralla/vim-toml-enhance'
Plugin 'Valloric/ListToggle'
Plugin 'racer-rust/vim-racer'
Plugin 'neomake/neomake'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'chiel92/vim-autoformat'
Plugin 'wakatime/vim-wakatime'
Plugin 'terryma/vim-expand-region'
"Plugin 'scrooloose/syntastic'
"Plugin 'vim-scripts/indentpython.vim'
"Plugin 'nvie/vim-flake8'
"Plugin 'Yggdroot/hiPairs'
Plugin 'maxbrunsfeld/vim-yankstack'
"Plugin 'gcmt/wildfire.vim'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/DoxyGen-Syntax'
Plugin 'vim-scripts/DoxygenToolkit.vim'

" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" " Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Install L9 and avoid a Naming conflict if you've already installed a
" " different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
"
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line

" indent line options
let g:indentLine_setColors = 20

let g:indentLine_enabled = 1

let g:indentLine_char = '┊'

let g:indentLine_showFirstIndentLevel = 1

let g:indentLine_leadingSpaceEnabled = 1

let g:indentLine_maxLines = 100

let g:indentLine_indentLevel = 6

let g:indentLine_leadingSpaceChar = '.'

"set conceallevel=1
let g:indentLine_conceallevel = 1

let g:clang_library_path = '/home/bloodstalker/extra/llvm-6/build/lib'

if &term =~ '256color'
      " Disable Background Color Erase (BCE) so that color schemes
      " work properly when Vim is used inside tmux and GNU screen.
set t_ut=
endif

" airline options
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
"let g:airline_theme = "jellybeans"

let g:ConquerTerm_Color = 2
let g:ConquerTerm_Close = 1
let g:ConquerTerm_StartMessage = 0


"set syntax=cpp.doxygen

let g:gruvbox_italics = 1
let g:jellybeans_overrides = {
\    'background': { 'guibg': '000000' },
\}

let g:jellybeans_use_term_italics = 1

syntax on
let python_highlight_all = 1

colo jellybeans

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
"imap <Left> <Nop>
"imap <Down> <Nop>
"imap <Up> <Nop>
"imap <Right> <Nop>
imap <PageUp> <Nop>
imap <PageDown> <Nop>
" end of n00b stuff
"
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

au BufEnter,FileType cpp set syntax=cpp.doxygen
au BufEnter,FileType c set syntax=cpp.doxygen
" elm autocommands
au BufNewFile,BufEnter *.elm colorscheme iceberg
au BufEnter * IndentLinesReset
au BufNewFile,BufEnter *.s set ft=nasm
au BufEnter * RainbowParenthesesActivate
au BufEnter * RainbowParenthesesLoadRound
au BufEnter * RainbowParenthesesLoadSquare
au BufEnter * RainbowParenthesesLoadBraces
"au BufEnter * RainbowParenthesesLoadChevrons
au BufEnter,FileType *.wast set syntax=wast
au BufEnter,FileType *.wat set syntax=wast
"
" python configs
" PEP-8
au BufNewFile,BufEnter *.py set tabstop=4
au BufNewFile,BufEnter *.py set softtabstop=4
au BufNewFile,BufEnter *.py set shiftwidth=4
au BufNewFile,BufEnter *.py set textwidth=79
au BufNewFile,BufEnter *.py set expandtab
au BufNewFile,BufEnter *.py set autoindent
au BufNewFile,BufEnter *.py set fileformat=unix

"highlight BadWhitespace ctermbg=red
"au BufRead,BufNewFile,BufEnter *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"au BufRead,BufNewFile,BufEnter *.py let python_highlight_all=1
"au BufRead,BufNewFile,BufEnter *.py syntax on

" python-mode options
"let g:pymode_python = 'python3'
let g:pymode_folding = 0
let g:pymode_motion = 0
let g:pymode_doc = 0
let g:pymode_warnings = 0
let g:pymode_run = 0
let g:pymode_breakpoint = 0
let g:pymode_lint = 0
let g:pymode_trim_whitespaces = 1
let g:pymode_virtualenv = 0
let g:pymode_lint_on_write = 0
let g:pymode_lint_message = 0
"let g:pymode_lint_checkers = ['pylint', 'pep8', 'mccabe', 'pep257', 'pyflakes']
let g:pymode_lint_checkers = []
let g:pymode_syntax = 1
let g:pymode_syntax_slow_sync = 1
let g:pymode_options = 1
let g:pymode_signs = 1
let g:pymode_syntax_all = 1
let g:pymode_rope = 0
let g:pymode_doc = 0
let g:pymode_rope_lookup_project = 0
let g:pymode_rope_completion = 0
let g:pymode_rope_guess_project = 0
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_autoimport_modules = 0

py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF
" end of python configs

"mapping fast keycodes
set timeoutlen=1000 ttimeoutlen=100
"Shift+F10
set <F13>=^[[21;2~
map <F13> <S-F10>
map! <F13> <S-F10>

map <F2> <Plug>(expand_region_expand)
map <F1> <Plug>(expand_region_shrink)
map <F3> :bp<CR>
map <F4> :bn<CR>
map <F5> <C-w>
map <C-e> :q<cr>
nnoremap <F12> :UndotreeToggle<cr>
nnoremap <F10> :vsp<cr>
nnoremap <S-F10> :sp<cr>


" tagbar toggle
map <F8> :TagbarToggle<CR>

" ocaml/merlin/ocp
let no_ocaml_comments = 0
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"
set rtp^="/home/bloodstalker/.opam/4.05.0/share/ocp-indent/vim"
"autocmd FileType ocaml source '"$(opam config var prefix)"'/share/typerex/ocp-indent/ocp-indent.vim
let g:syntastic_ocaml_checkers = ['merlin']
" ocaml/merlin/ocp end

" NERDTree
map <F7> :NERDTreeToggle<CR>

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

" slime options
let g:slime_target = "tmux"
let g:slime_paste_file = "$HOME/.slime-paste"

" doxygentoolkit
autocmd BufNewFile,BufRead,BufEnter *.sol let g:DoxygenToolkit_briefTag_pre="@dev  "

" open-pdf conf
let g:pdf_convert_on_edit = 1
let g:pdf_convert_on_read = 1

" highlight groups
hi def InterestingWord1 ctermfg=16 ctermbg=214
hi def InterestingWord2 ctermfg=16 ctermbg=154
hi def InterestingWord3 ctermfg=16 ctermbg=121
hi def InterestingWord4 ctermfg=16 ctermbg=137
hi def InterestingWord5 ctermfg=16 ctermbg=211
hi def InterestingWord6 ctermfg=16 ctermbg=195

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

" listtoggle options
let g:lt_location_list_toggle_map = '<leader>l'
let g:lt_quickfix_list_toggle_map = '<leader>q'

" rust options
let g:autofmt_autosave = 1
let g:racer_experimental_completer = 1
let g:racer_cmd = "/home/bloodstalker/.cargo/bin/racer"
au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-def-split)
au FileType rust nmap gx <Plug>(rust-def-vertical)
au FileType rust nmap <leader>gd <Plug>(rust-doc)


" LSP registrations
if executable('ocaml-language-server')
    au User lsp_setup call lsp#register_server({
          \ 'name': 'ocaml-language-server',
          \ 'cmd': {server_info->[&shell, &shellcmdflag, 'ocaml-language-server --stdio']},
          \ 'whitelist': ['reason', 'ocaml'],
          \ })
  endif

if executable('rls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'rls',
        \ 'cmd': {server_info->['rustup', 'run', 'nightly', 'rls']},
        \ 'whitelist': ['rust'],
        \ })
endif

if executable('pyls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'whitelist': ['python'],
        \ })
  endif
