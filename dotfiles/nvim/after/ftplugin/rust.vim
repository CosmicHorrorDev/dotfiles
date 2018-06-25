" Deoplete Settings
call deoplete#custom#source('deoplete-rust', 'filetypes', ['rs'])

let g:deoplete#sources#rust#racer_binary='/home/lovecraft/.data/cargo/bin/racer'
let g:deoplete#sources#rust#rust_source_path='/home/lovecraft/.data/rust_source/rust/src'

" Strip Trailing Whitepace
autocmd BufWritePre * %s/\s\+$//e

" Get Rid of Word-Wrapping
set textwidth=0
set wrapmargin=0
set nowrap

" Use 4 spaces for a tab
set tabstop=4
set shiftwidth=4
set expandtab

