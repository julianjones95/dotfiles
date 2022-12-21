set number relativenumber
set tabstop=4
set termguicolors
set cursorline
"set cursorcolumn
syntax on
set re=0 " Solves a syntax highlighting bug here: https://github.com/prabirshrestha/vim-lsp/issues/786
let &t_SI = "\e[5 q"
let &t_EI = "\e[2 q"
set wildmode=longest,list,full
