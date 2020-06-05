set guicursor=             "  Disable cursor update for nvim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                        Vim-Plug                          "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('/home/zelezarof/.local/share/nvim/plugged')
    Plug 'tpope/vim-commentary'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'morhetz/gruvbox'
call plug#end()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                 Comander of Completion                   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
runtime plugin/coc.vim



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                    Apply Color Theme                     "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set termguicolors                 " Enable 24-Bit RGB colors
runtime plugin/grubvox.vim        " Set colorscheme



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                     Key Bindings                         "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Buffer Related Bindings
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                      Other                               "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set fileformat=unix             " Set default file format
set encoding=utf-8              " Set defualt file encoding
set showmatch                   " Higlight matching brackets
set number relativenumber       " Display line numbers
set clipboard+=unnamed

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
augroup END
