set fileformat=unix
set encoding=utf-8

" Flake8
let g:flake8_show_in_file=1 

" Ale
let g:ale_linters = { 'python': ['flake8', 'pylint'] }
