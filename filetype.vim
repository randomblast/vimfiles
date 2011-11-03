augroup filetypedetect
au! BufRead,BufNewFile *.php,*.module,*.engine,*.install,*.inc setfiletype php
au! BufRead,BufNewFile *.less set filetype=less
au! BufRead,BufNewFile *.md setfiletype markdown
au! BufRead,BufNewFile *.cshtml setfiletype cs
augroup END
