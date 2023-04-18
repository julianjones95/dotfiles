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


""" 2. NerdTree Formatting  

"""				let g:netrw_preview = 1
"""				let g:netrw_banner = 0
"""				let g:netrw_liststyle = 3
"""				let g:netrw_browse_split = 4
"""				let g:netrw_altv = 1
"""				let g:netrw_winsize = 15
"""
"""				" This function will jump to the split to edit if a file is opened ex: vim Example.txt will put the cursor on line 1
"""				function! EnterFile()
"""						if !(argc() == 1 && isdirectory(argv()[0]))
"""								execute "wincmd p"
"""						endif
"""				endfunction
"""
"""				augroup ProjectDrawer
"""					autocmd!
"""					autocmd VimEnter * :Vexplore
"""					autocmd VimEnter * :call EnterFile()
"""				augroup END
"""
"""
"""
"""				"""" 3. Function to open file vertically to the right inside netrw:
"""
"""				augroup netrw_mappings
"""						autocmd!
"""						autocmd filetype netrw call Netrw_mappings()
"""				augroup END
"""				function! OpenToRight()
"""					:rightbelow vsplit
"""					:wincmd p
"""					:normal P
"""					:60winc >
"""				endfunction
"""


"""" 5. Netrw Key Mappings

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

"""" 6. QuicKTab Navigation

  cnoreabbrev <expr> tn getcmdtype() == ":" && getcmdline() == 'tn' ? 'tabnew' : 'tn'


