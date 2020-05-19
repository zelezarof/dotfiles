""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                            Dein settings                                     "
"                                                                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if &compatible
  set nocompatible               " Be iMproved
endif

set runtimepath+=/home/zelezarof/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('/home/zelezarof/.cache/dein')
  call dein#begin('/home/zelezarof/.cache/dein')
  call dein#add('/home/zelezarof/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  call dein#add('tmhedberg/SimplyFold')
  call dein#add('vim-scripts/indetpython.vim')

  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                              My Settings                                     "
"                                                                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set guicursor=
set showmatch
set number relativenumber

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
augroup END

" Use X Window's clipbard as main register
set clipboard=unnamedplus

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           Key Re-Mapping                                     "
"                                                                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""                           IDE-like Stuff                                     "
""                                                                              "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" SimplyFold
let g:SimplyFold_costring_preview=1
