" Julian's VIMRC File
"
"


""" 1. Formatting Stuff

set number relativenumber
set tabstop=2
set shiftwidth=0
set termguicolors
set cursorline
"set cursorcolumn
syntax on
set re=0 " Solves a syntax highlighting bug here: https://github.com/prabirshrestha/vim-lsp/issues/786
let &t_SI = "\e[5 q"
let &t_EI = "\e[2 q"
set wildmode=longest,list,full


function! Netrw_mappings()
  
  " Moving through netrw with h and l keys
  nmap <buffer> h -^
  nmap <buffer> l <CR>

  " Swapping Splits
  nmap <C-h> <C-w>h
  nmap <C-j> <C-w>j
  nmap <C-k> <C-w>k
  nmap <C-l> <C-w>l

  " Swap j and k keys for navigation
  noremap k j|noremap <C-w>k <C-w>j|noremap <C-w><C-k> <C-w>j
  noremap j k|noremap <C-w>j <C-w>k|noremap <C-w><C-j> <C-w>k
  noremap ' :call OpenToRight()<cr>

endfunction


  cnoreabbrev <expr> tn getcmdtype() == ":" && getcmdline() == 'tn' ? 'tabnew' : 'tn'


