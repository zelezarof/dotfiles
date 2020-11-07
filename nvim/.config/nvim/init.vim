set guicursor=     " Disable cursor update for nvim
set cmdheight=1    " Give more space for displaying messages
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                        Vim-Plug                          "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('/home/zelezarof/.local/share/nvim/plugged')
    Plug 'preservim/nerdtree'
    Plug 'morhetz/gruvbox'
    Plug 'jiangmiao/auto-pairs'
    Plug 'tpope/vim-commentary'
    Plug 'vim-airline/vim-airline'
    Plug 'neovim/nvim-lspconfig'
    Plug 'nvim-lua/completion-nvim'
    Plug 'cespare/vim-toml'
    
call plug#end()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                    Apply Color Theme                     "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set termguicolors
set background=dark
let g:gruvbox_italic = 1
colorscheme gruvbox


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                    Coding Helpers                        "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
lua require'nvim_lsp'.tsserver.setup{ on_attach=require'completion'.on_attach }
lua require'nvim_lsp'.gopls.setup{ on_attach=require'completion'.on_attach }
lua require'nvim_lsp'.pyls.setup{ on_attach=require'completion'.on_attach }
lua require'nvim_lsp'.rust_analyzer.setup{ on_attach=require'completion'.on_attach }

" NVim LSP
nnoremap <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                     Key Bindings                         "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Buffer Related Bindings
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" NerdTree related
map <C-n> :NERDTreeToggle<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
