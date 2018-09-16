" Strip Trailing Whitespace on Save
autocmd BufWritePre * %s/\s\+$//e

" Get Rid of Word-Wrapping
set textwidth=0
set wrapmargin=0
set nowrap

" Use 2 spaces for a tab
set tabstop=2
set shiftwidth=2
set expandtab

" Extra Highlighting
let g:cpp_experimental_template_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
