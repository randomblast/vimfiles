augroup filetypedetect
au! BufRead,BufNewFile *.php,*.module,*.engine,*.install,*.inc setfiletype php
au! BufRead,BufNewFile *.less set filetype=less
augroup END
