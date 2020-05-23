set guicursor=                               "  Disable cursor update for nvim  


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Vim-Plug                                         "
"                                                                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('/home/zelezarof/.local/share/nvim/plugged')
  Plug 'fatih/vim-go'
  Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
  Plug 'tpope/vim-commentary'
  Plug 'chriskempson/base16-vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'morhetz/gruvbox'
call plug#end()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Vim Aestetics                                    "
"                                                                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme gruvbox                          " Set colorscheme
set termguicolors                            " Enable 24-Bit RGB colors
set showmatch                                " Higlight matching brackets 
set number relativenumber                    " Display line numbers 
set clipboard+=unnamedplus                   " Use X Window's clipbard as main register

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
augroup END


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Airline Settings                                 "
"                                                                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_powerline_fonts = 1            " Load Powerline Symbols         


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                          Commander of Completion                             "
"                                                                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source /home/zelezarof/.config/nvim/coc


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           key re-mapping                                     "
"                                                                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 Other                                        "
"                                                                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set fileformat=unix
set encoding=utf-8
