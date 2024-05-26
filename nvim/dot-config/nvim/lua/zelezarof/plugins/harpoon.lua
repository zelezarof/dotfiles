return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
	local harpoon = require('harpoon')
	harpoon:setup({})

	-- <leader>h
	vim.keymap.set("n", "<leader>hv", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
	vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end)
	vim.keymap.set("n", "<leader>hd", function() harpoon:list():remove() end)

	-- Hotkeys
	vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
	vim.keymap.set("n", "<C-j>", function() harpoon:list():select(2) end)
	vim.keymap.set("n", "<C-k>", function() harpoon:list():select(3) end)
	vim.keymap.set("n", "<C-l>", function() harpoon:list():select(4) end)
	vim.keymap.set("n", "<C-;>", function() harpoon:list():select(4) end)

    end
}
