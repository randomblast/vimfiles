color desert
syntax on
set hlsearch
set tabstop=2
set shiftwidth=2
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
map <D-M-Left> :tabp<CR>
map <D-M-Right> :tabn<CR>
