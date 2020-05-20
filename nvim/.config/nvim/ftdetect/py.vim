set fileformat=unix
set encoding=utf-8

" Flake8
let g:flake8_show_in_file=1 

" Ale
let g:ale_linters = { 'python': ['flake8'] }

" YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>


" Make YCM awere of pipenv
let pipenv_venv_path = system('pipenv --venv')

if v:shell_error == 0
  let venv_path = substitute(pipenv_venv_path, '\n', '', '')
  let g:ycm_python_binary_path = venv_path . '/bin/python'
else
  let g:ycm_python_binary_path = 'python'
endif
