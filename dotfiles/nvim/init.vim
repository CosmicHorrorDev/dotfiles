if &compatible
 set nocompatible
endif

" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
 call dein#begin('~/.cache/dein')

 call dein#add('~/.cache/dein')

 " Autocompletion
 call dein#add('Shougo/deoplete.nvim')
 call dein#add('sebastianmarkow/deoplete-rust', { 'on_ft' : 'rs' })

 " Linting
 call dein#add('w0rp/ale')

 " Beautiful surrounding that feels very natural
 call dein#add('tpope/vim-surround')

 " Markdown previewing
 call dein#add('iamcco/markdown-preview.vim')

 " Toml syntax support
 call dein#add('cespare/vim-toml')

 " Rust Specific
 call dein#add('rust-lang/rust.vim')

 " More Functional Line
 call dein#add('vim-airline/vim-airline')
 call dein#add('vim-airline/vim-airline-themes')

 call dein#end()
 call dein#save_state()
endif

" deoplete settings
let g:deoplete#enable_at_startup = 1

filetype plugin indent on
syntax enable

" Bind deoplete selection key to TAB
inoremap <silent><expr> <TAB>                                   
\ pumvisible() ? "\<C-n>" :                                     
\ <SID>check_back_space() ? "\<TAB>" :                          
\ deoplete#mappings#manual_complete()                           
function! s:check_back_space() abort "{{{                       
let col = col('.') - 1                                          
return !col || getline('.')[col - 1]  =~ '\s'                   
endfunction"}}}

let g:mkdp_path_to_chrome = "/usr/bin/google-chrome-stable"
let g:mkdp_auto_start = 1
let g:mkdp_auto_open = 1
let g:mkdp_refresh_slow = 1

" Deoplete Color Changes
highlight Pmenu ctermfg=4 ctermbg=0

" Ale settings
let g:ale_lint_delay = 1000

nmap <silent> <C-l> <Plug>(ale_previous_wrap)
nmap <silent> <C-k> <Plug>(ale_next_wrap)

highlight clear SignColumn

let g:ale_sign_column_always = 1

let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] [%severity%] %code:%%s'

let g:ale_sign_error = 'XX'
let g:ale_sign_warning = '!!'

highlight clear ALEErrorSign
highlight ALEErrorSign ctermfg=Red
highlight ALEError ctermbg=Black

highlight clear ALEWarningSign
highlight ALEWarningSign ctermfg=Magenta
highlight ALEWarning ctermbg=Black

" vim-airline settings
let g:airline_theme='violet'

" Key Remaps
imap jj <Esc>
noremap <Tab> <Esc>

noremap j h
noremap k j
noremap l k
noremap ; l

" Key binds
noremap <silent> ,<space> :nohlsearch<CR>

" Ruler
set colorcolumn=80

" Line numberings
set number
set relativenumber

" Colors!
hi LineNr ctermfg=Green
hi CursorLineNr ctermfg=Blue

hi Statement ctermfg=Yellow

hi ColorColumn ctermbg=Cyan
hi MatchParen ctermbg=NONE ctermfg=Blue

