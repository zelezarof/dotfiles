return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
        -- import mason
        local mason = require("mason")

        -- import mason-lspconfig
        local mason_lspconfig = require("mason-lspconfig")

        local mason_tool_installer = require("mason-tool-installer")

        -- enable mason
        mason.setup({})

        mason_lspconfig.setup({
            ensure_installed = {
                "gopls",    -- go
                "lua_ls",   -- lua
                "pyright",  -- python
                "marksman", -- markdown
            },
        })

        mason_tool_installer.setup({
            ensure_installed = {
                "prettier",      -- prettier formatter
                "isort",         -- python formatter
                "black",         -- python formatter'
                "gofumpt",       -- go formatter'
                "golangci-lint", -- go linter
                "staticcheck",   -- go linter
                "pylint",        -- python linter
                "markdownlint",  -- markdown
                "mypy",          -- python static type checker
            },
        })
    end,
}
