set guicursor=             "  Disable cursor update for nvim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                        Vim-Plug                          "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('/home/zelezarof/.local/share/nvim/plugged')
    Plug 'morhetz/gruvbox'
    Plug 'tpope/vim-commentary'
    Plug 'vim-airline/vim-airline'
    Plug 'preservim/nerdtree'
    Plug 'dense-analysis/ale'
call plug#end()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                    Coding Helpers                        "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                    Apply Color Theme                     "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set termguicolors
set background=dark
let g:gruvbox_italic = 1
colorscheme gruvbox

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
set number relativenumber       " Display line numbers
set clipboard+=unnamed

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
augroup END

packloadall
silent! helptags ALL
