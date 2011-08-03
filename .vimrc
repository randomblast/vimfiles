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
filetype plugin on

au FileType cpp set cc=80
au FileType php nnoremap <silent> <buffer> <cr> :PhpSearchContext<cr>
au FileType php  let g:SuperTabDefaultCompletionType = "<c-x><c-u>"
au FileType php set cc=105
au FileType haml set tabstop=2
au FileType sass set tabstop=2

source ~/.vim/plugin/php-doc.vim
map <C-P> :call PhpDoc()<CR>

fun! ToggleRelativeNumber()
    if &number
        set rnu
    else
        set nu
    endif
endfun

map <silent> § :call ToggleRelativeNumber()<CR>
map <D-M-Left> :tabp<CR>
map <D-M-Right> :tabn<CR>
map <silent> + <C-A>
map <silent> - <C-X>

fun! UcFirst(str)
    return substitute(a:str, '\w', '\u\0', '')
endfun

fun! LcFirst(str)
    return substitute(a:str, '\w', '\l\0', '')
endfun
