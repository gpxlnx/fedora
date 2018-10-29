set nocompatible
filetype off
set showmatch
set list
set tabstop=2
set conceallevel=0
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
set ignorecase smartcase
set number
set numberwidth=5
set laststatus=2
set smartcase
set lazyredraw
set synmaxcol=200
syntax sync minlines=64
set ttyfast
set relativenumber
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
set fillchars+=vert:\ " whitespace signifacant
let g:is_posix = 1

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'vim-airline/vim-airline'
Plugin 'mbbill/undotree'
Plugin 'mhinz/vim-startify'
"Plugin 'hdima/python-syntax'
"Plugin 'Townk/vim-autoclose'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kh3phr3n/python-syntax'
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
Plugin 'sngn/vim-i3blocks-syntax'
Plugin 'tpope/vim-capslock'
"Plugin 'craigemery/vim-autotag'
Plugin 'Yggdroot/indentLine'
"Plugin 'Lokaltog/vim-powerline'
"Plugin 'powerline/powerline'
Plugin 'rhysd/vim-wasm'
Plugin 'tomlion/vim-solidity'
Plugin 'rhysd/open-pdf.vim'
"Plugin 'bloodstalker/csound-vim'
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
Plugin 'xolox/vim-session'
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
"Plugin 'python-mode/python-mode'
"Plugin 'hdima/python-syntax'
Plugin 'tmux-plugins/vim-tmux'
"Plugin 'camelcasemotion'
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
Plugin 'szymonmaszke/vimpyter'
Plugin 'fatih/vim-go'
Plugin 'junegunn/goyo.vim'
Plugin 'amix/vim-zenroom2'
Plugin 'NLKNguyen/papercolor-theme'
call vundle#end()
filetype plugin indent on

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
"
if &term =~ '256color'
      " Disable Background Color Erase (BCE) so that color schemes
      " work properly when Vim is used inside tmux and GNU screen.
set t_ut=
endif

let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1

hi Normal ctermbg=None

" indent line options
let g:indentLine_setColors = 20
let g:indentLine_enabled = 1
let g:indentLine_char = '┊'
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_maxLines = 50
let g:indentLine_indentLevel = 5
let g:indentLine_leadingSpaceChar = '.'

"set conceallevel=1
let g:indentLine_conceallevel = 1

let g:clang_library_path = '/home/bloodstalker/extra/llvm-clang-4/build/lib/libclang.so.8'

" airline options
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
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

" conqueterm
let g:ConquerTerm_Color = 2
let g:ConquerTerm_Close = 1
let g:ConquerTerm_StartMessage = 0


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

au BufRead,BufNewFile .i3blocks.conf set filetype=i3blocks
au BufRead,BufNewFile *.zsh-theme set filetype=zsh
au BufEnter,FileType cpp set syntax=cpp.doxygen
au BufEnter,FileType c set syntax=cpp.doxygen
" elm autocommands
" au BufNewFile,BufEnter *.elm colorscheme iceberg
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
"au BufNewFile,BufEnter *.py set textwidth=79
au BufNewFile,BufEnter *.py set expandtab
au BufNewFile,BufEnter *.py set autoindent
au BufNewFile,BufEnter *.py set fileformat=unix

"highlight BadWhitespace ctermbg=red
"au BufRead,BufNewFile,BufEnter *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"au BufRead,BufNewFile,BufEnter *.py let python_highlight_all=1
"au BufRead,BufNewFile,BufEnter *.py syntax on

" python-mode options
"let g:pymode_python = 'python3'
"let g:pymode_folding = 0
"let g:pymode_motion = 0
"let g:pymode_doc = 0
"let g:pymode_warnings = 0
"let g:pymode_run = 0
"let g:pymode_breakpoint = 0
"let g:pymode_lint = 0
"let g:pymode_trim_whitespaces = 1
"let g:pymode_virtualenv = 0
"let g:pymode_lint_on_write = 0
"let g:pymode_lint_message = 0
"let g:pymode_lint_checkers = ['pylint', 'pep8', 'mccabe', 'pep257', 'pyflakes']
"let g:pymode_lint_checkers = []
"let g:pymode_syntax = 1
"let g:pymode_syntax_slow_sync = 1
"let g:pymode_options = 1
"let g:pymode_signs = 1
"let g:pymode_syntax_all = 1
"let g:pymode_rope = 0
"let g:pymode_doc = 0
"let g:pymode_rope_lookup_project = 0
"let g:pymode_rope_completion = 0
"let g:pymode_rope_guess_project = 0
"let g:pymode_rope_complete_on_dot = 0
"let g:pymode_rope_autoimport_modules = 0

let python_highlight_all = 1
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
"Shift+F9
set <F14>=^[[20;2~
map <F14> <S-F9>
map! <F14> <S-F9>
"Shift+F5
set <F15>=^[[15;2~
map <F15> <S-F5>
map! <F15> <S-F5>

map <F2> <Plug>(expand_region_expand)
map <F1> <Plug>(expand_region_shrink)
map <F3> :bp<CR>
map <F4> :bn<CR>
map <F5> <C-w>
map <C-e> :q<cr>
nnoremap <F12> :UndotreeToggle<cr>
nnoremap <F10> :vsp<cr>
nnoremap <S-F10> :sp<cr>

cnoremap help vert help

" tagbar toggle
map <F8> :TagbarToggle<CR>

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

" NERDTree
map <F7> :NERDTreeToggle<CR>
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

" slime options
let g:slime_target = "tmux"
let g:slime_paste_file = "$HOME/.slime-paste"

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

"--------------------------------------------------------------------------------------------"
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
"--------------------------------------------------------------------------------------------"
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
" TODO-attach std C/C++ headers to text before sending to server
"
function! s:compiler_explorer()
  let temp_file = tempname()
  "echom temp_file
  if &filetype == "c"
    call writefile(s:compiler_explorer_std_c_hdrs, temp_file, "a")
  elseif &filetype == "cpp"
    call writefile(s:compiler_explorer_std_cpp_hdrs, temp_file, "a")
  endif
  "let headers = split(join(header_list, "\r"))
  "call writefile(headers, temp_file, "a")
  "call writefile(["fuck you"], temp_file, "a")
  "let fuck_list = ["#include <fcntl.h>\r", "#include <inttypes.h>\r", "#include <stdio.h>\r", "#include <stdlib.h>\r", "#include <unistd.h>\r"]
  "call writefile(fuck_list, temp_file, "a")

  let source_code = s:get_visual_selection()
  "echom source_code
  "echom join(headers, "")
  call writefile(split(substitute(source_code, "\n", "\r", "g"), "\r"), temp_file, "a")
  let current_buf_name = bufname("%")
  botright vnew
  setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nowrap
  call setline(3,substitute(getline(2),'.','=','g'))
  execute "$read!"."node"." "."~/scripts/compiler-explorer/main.js ".temp_file
  setlocal nomodifiable
  set syntax=nasm
  1
endfunction
command! -complete=shellcmd -nargs=0 CompilerExplorer call s:compiler_explorer()
vmap <S-F9> :<C-U>CompilerExplorer<cr>

