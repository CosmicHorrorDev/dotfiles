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

