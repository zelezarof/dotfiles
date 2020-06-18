let g:ale_linters = {'rust': ['rls', 'rustc']}
let g:ale_fixers =  {'rust': ['rustfmt', 'remove_trailing_lines', 'trim_whitespace']}
let g:airline#extensions#ale#enabled = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%][%severity%] %s'
