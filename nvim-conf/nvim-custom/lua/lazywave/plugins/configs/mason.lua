-- Overall Mason Setup and Config
require('mason').setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

-- Mason LSP and NVIM LSP Config
require('mason-lspconfig').setup({
    ensured_installed = {
        "black",
        "debugpy",
        "lua_ls",
        "luacheck",
        "pylint",
        "pyright",
        "shfmt",
        "stylua"
    },
    automatic_enable = {
        "black",
        "debugpy",
        "lua_ls",
        "luacheck",
        "pylint",
        "pyright",
        "shfmt",
        "stylua"
    },
    handlers = {
        function(server_name)
            require('lspconfig')[server_name].setup({
                -- Applies options to languages that don't have a custom handler
            })
        end,
        ['lua_ls'] = function() require('lazywave.lsp.lua_ls') end,
    },
})
