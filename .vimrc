colorscheme evening

set nocompatible
filetype off
filetype plugin indent on

syntax on
set hlsearch
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set rnu
set linebreak
set ruler
set showmode
set list
set listchars=tab:>-,trail:.,nbsp:_
set modeline

hi SpecialKey guifg=gray40

if has("gui_running")
  set guioptions=egmc
  set fuoptions=maxvert,maxhorz
  set vb
  set transparency=0
endif

filetype plugin indent on
filetype plugin on

au FileType cpp set cc=120
au FileType cpp set textwidth=120
au FileType php let g:SuperTabDefaultCompletionType = "<c-x><c-u>"
au FileType php set cc=120
au FileType php map <C-P> :call PhpDoc()<CR>
au FileType haml set tabstop=2
au FileType sass set tabstop=2
au FileType markdown set textwidth=80
au FileType markdown setlocal spell spelllang=en_gb
au FileType txt setlocal spell spelllang=en_gb

fun! ToggleRelativeNumber()
    if &number
        set rnu
    else
        set nu
    endif
endfun

map <silent> § :call ToggleRelativeNumber()<CR>
map <silent> ± :Project<CR>
map <D-M-Left> :bprevious<CR>
map <D-M-Right> :bnext<CR>
map <silent> + <C-A>
map <silent> - <C-X>

" Tag browsing
map <silent> <D-[> <C-T>
map <silent> <D-]> <C-]>

let g:ProjTags = [ "/Library/WebServer/Documents/*/site" ]

if has("statusline")
 set statusline=%<%f\ %h%m%r%=%{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\ \"}%k\ %-14.(%l,%c%V%)\ %P
endif

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'project.tar.gz'
Bundle 'projtags.vim'
Bundle 'phpfolding.vim'
Bundle 'php.vim--Garvin'
Bundle 'snipmate.vim'
Bundle 'phpErrorMarker'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-commentary'
Bundle 'SuperTab-continued'
Bundle 'phpcomplete.vim'
