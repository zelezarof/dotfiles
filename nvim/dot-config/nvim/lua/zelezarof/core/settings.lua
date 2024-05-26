vim.cmd("let g:netrw_liststyle = 1")

-- line numbers
vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.foldenable = false
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
