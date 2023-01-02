" Julian's VIMRC File
"
"


"Formatting Stuff
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


" open file vertically to the right inside netrw:
augroup netrw_mappings
    autocmd!
    autocmd filetype netrw call Netrw_mappings()
augroup END
function! OpenToRight()
  :rightbelow vsplit
  :wincmd p
  :normal P
  :60winc >
endfunction

" Netrw Key Mappings
function! Netrw_mappings()
  nmap <buffer> h -^
  nmap <buffer> l <CR>
  noremap k j|noremap <C-w>k <C-w>j|noremap <C-w><C-k> <C-w>j
  noremap j k|noremap <C-w>j <C-w>k|noremap <C-w><C-j> <C-w>k
  noremap ' :call OpenToRight()<cr>

endfunction
