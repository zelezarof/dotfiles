set guicursor=             "  Disable cursor update for nvim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                        Vim-Plug                          "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('/home/zelezarof/.local/share/nvim/plugged')
    Plug 'tpope/vim-commentary'
    Plug 'vim-airline/vim-airline'
    Plug 'dawikur/base16-vim-airline-themes'
    Plug 'chriskempson/base16-vim'
    Plug 'rust-lang/rust.vim' 
call plug#end()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                    Coding Helpers                        "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                    Apply Color Theme                     "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif


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
