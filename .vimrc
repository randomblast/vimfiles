color desert
syntax on
set hlsearch
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set number
set modeline
set cursorline
set cursorcolumn

if has("gui_running")
  set guioptions=egmc
  set fuoptions=maxvert,maxhorz
  set vb
endif

filetype plugin indent on

map <silent> § :WMToggle<CR><C-W>h
au FileType cpp set cc=80
au FileType php set cc=105
au FileType haml set tabstop=2
au FileType sass set tabstop=2

source ~/.vim/plugin/php-doc.vim
map <C-P> :call PhpDoc()<CR>

map <D-M-Left> :tabp<CR>
map <D-M-Right> :tabn<CR>
